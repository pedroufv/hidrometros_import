<?php

namespace App\Commands;

use App\Hydrometers;
use App\Readings;
use LaravelZero\Framework\Commands\Command;
use PhpOffice\PhpSpreadsheet\Reader\Xlsx;
use PhpOffice\PhpSpreadsheet\Shared\Date;

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

                $attributes['value'] =  trim(str_replace(',', '.', $sheet->getCell($column.$rowIndex)->getCalculatedValue()));
                if(null === $attributes['value'] OR empty($attributes['value']))
                    continue;

                $attributes['hydrometer_id'] = $hydrometer->id;

                $attributes['read_at'] = new \DateTime();
                $read_at = Date::excelToTimestamp($sheet->getCell($column.'1')->getCalculatedValue());

                $time = $sheet->getCell($column.'2')->getValue();
                if(null !== $time AND !strpos($time, 'às') AND !strpos($time, 'àS')) $read_at +=  Date::excelToTimestamp($time);

                $attributes['read_at']->setTimestamp($read_at);

                if(strpos($time, 'às')) $attributes['read_at']->modify('+'.strtok($time, ':').' hours');

                $attributes['reader'] = '10971';

                Readings::create($attributes);

                $count++;

                $this->info($count.') '. $numero .','. $attributes['value'] .','.$attributes['read_at']->format('Y-m-d H:i:s'));
            }

            $this->info("Hidrometro $numero: importadas $count leituras");
        }

        $this->info("Total de leituras importadas: $count");

        return $count;
    }
}
