<?php
    date_default_timezone_set("Europe/Kyiv");

    // необхідні HTTP-заголовки
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: access");
    header("Access-Control-Allow-Methods: GET");
    header("Access-Control-Allow-Credentials: true");
    header("Content-Type: application/json");

    // підключення бази даних та файл, що містить об'єкти
    include_once "../../class/core.php";
    include_once "../../class/dataBase/database.php";
    include_once "../objects/shutdown_schedule.php";

    // отримуємо з'єднання з базою даних
    $config_db = $config['database'];
    $database = new Database();
    $db = $database->getConnection($config_db);

    // ініціалізуємо об'єкт
    $shutdown_schedule = new ShutdownShedule($db);


    // встановимо властивість ID запису для читання
    $shutdown_schedule->group_id = isset($_GET["group_id"]) ? $_GET["group_id"] : die();
    $shutdown_schedule->region_id = isset($_GET["region_id"]) ? $_GET["region_id"] : die();

    $to_weekday_id = date('N');
    $today = date("H:i");

    $shutdown_schedule->to_weekday_id = $to_weekday_id;
    $shutdown_schedule->today =  $today;

    // получим графік відключення по групі
    $stmt = $shutdown_schedule->readNext();

    $num = $stmt->rowCount();

    if($num > 0){
        $shutdown_schedule_arr = array();
        $shutdown_schedule_arr['records'] = array();

        // отримуємо вміст нашої таблиці
        // fetch() быстрее, чем fetchAll()
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
           
            // извлекаем строку
            extract($row);

        $weekday_id_2 = date("N",strtotime('+1 day', strtotime(date('Y-m-d'))));   
        if ($weekday_id == $to_weekday_id || $weekday_id == $weekday_id_2) {
            
            if ($shutdown_time > $today) {
                $shutdown_schedule_item = array(
                    "group_id" => $group_id,
                    "group_name" => $group_name,
                    "weekday_id" => $weekday_id,
                    "weekday_name" => $weekday_name,
                    "shutdown_time" => $shutdown_time,
                    "power_time" => $power_time,
                    "status_id" => $status_id,
                    "status_name" => $status_name,
                    "region_id" => $region_id,
                    "region_name" => $region_name,
                    "today" => $today
                );
                
                array_push($shutdown_schedule_arr["records"], $shutdown_schedule_item);
                break;
            }
            if($row['shutdown_time'] > $row['power_time']){              
                $today = "00:00";
             
            }  
        }
            
           
        }

        // встановлюємо код відповіді – 200 OK
        http_response_code(200);

        // виводимо дані про графік у форматі JSON
        echo json_encode($shutdown_schedule_arr);
        
    }else {
        //встановимо код відповіді - 404 Не знайдено
        http_response_code(404);

        // повідомляємо користувачеві, що графіки відключень не знайдені
        echo json_encode(array("message" => "Графіка виключень не знайдено."), JSON_UNESCAPED_UNICODE);
    }


?>