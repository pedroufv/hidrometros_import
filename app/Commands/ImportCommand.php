<?php

namespace App\Commands;

use App\Hydrometers;
use App\Readings;
use LaravelZero\Framework\Commands\Command;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;

class ImportCommand extends Command
{

    protected $signature = 'import';

    public function handle()
    {
        $reader = new Xlsx();

        $count = 0;
        $spreadsheet = $reader->load(storage_path('importar.xlsx'));
        $sheet = $spreadsheet->getSheet(0);
        $lastColumn = $sheet->getHighestColumn();
        $rowIterator = $sheet->getRowIterator();

        foreach ($rowIterator as $row) {

            $rowIndex = $row->getRowIndex();

            if($rowIndex < 3)
                continue;

            if($rowIndex > 53)
                break;

            $numero = $sheet->getCell('B'.$rowIndex)->getCalculatedValue();

            $hydrometer = Hydrometers::whereNumber($numero)->first();

            if(null === $hydrometer)
                continue;

            for ($column = 'C'; $column != $lastColumn; $column++) {

                $attributes['value'] =  $sheet->getCell($column.$rowIndex)->getCalculatedValue();
                if(null === $attributes['value'])
                    continue;

                $attributes['hydrometer_id'] = $hydrometer->id;
                $attributes['read_at'] = \PhpOffice\PhpSpreadsheet\Shared\Date::excelToDateTimeObject($sheet->getCell($column.'1')->getCalculatedValue());
                $attributes['reader'] = '10971';

                Readings::create($attributes);

                $count++;
            }
        }

        $this->info('Total de leituras importadas: '.$count);

        return $count;
    }
}
