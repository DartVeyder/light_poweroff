<?php
    class User{
            // підключення до бази даних і таблиці "users"
            private $conn;
            private $table_name = "users";
    
            public $user_id;
            public $region_id;
            public $region_name;
            public $group_id;
            public $group_name;
            public $user_telegram_id;
            public $username;
            public $first_name;
            public $last_name;
            public $language_code; 
            public $date_added;
            public $date_modified;
            // конструктор для підключення до бази даних 
            public function __construct($db)
            {
                $this->conn = $db;
            }
            
            public function create(){
                $error = [];
                 // запрос для вставки (создания) записей
                    $query = "INSERT INTO
                    " . $this->table_name . "
                    (user_telegram_id, region_id, group_id, date_added)
                VALUES
                    (:user_telegram_id, :region_id, :group_id, :date_added)";

                // подготовка запроса
                $stmt = $this->conn->prepare($query);
 
                // привязка значений
                $stmt->bindParam(":user_telegram_id", $this->user_telegram_id );
                $stmt->bindParam(":region_id", $this->region_id ); 
                $stmt->bindParam(":group_id", $this->group_id );  
                $stmt->bindParam(":date_added", $this->date_added);  

                // выполняем запрос
                try {
                    $stmt->execute();
                    return [
                        'status' => 'success',
                        "message" => "Користувач добавлений."
                    ];
                } catch (Exception $ex) {
                    $error = [
                        'response' => $ex->getMessage(),
                        'message' => 'Неможливо створити користувача',
                        'status' => 'failed'
                    ];

                    return $error;
                } 
            }

            public function update($data, $where){
                $error = []; 
                $data;
                unset($data['user_telegram_id']);
                foreach ($data as $key => $item) {
                    $set_arr[] = "$key = :$key";
                }

                $query_set = implode( ",",$set_arr);
                
                 // запрос для вставки (создания) записей 
                    $query = "UPDATE
                    " . $this->table_name . "
                SET 
                    $query_set
                WHERE
                    user_telegram_id = :user_telegram_id";
                // подготовка запроса
                $stmt = $this->conn->prepare($query);
                
                $data['user_telegram_id'] = $where;

                // выполняем запрос
                try {
                    $stmt->execute($data); 
                    if($stmt->rowCount()){
                        $error =  [
                            'status' => 'success',
                            "message" => "Дані користувача оновлено",
                            "update_column" => $data
                        ];
                    }else{
                        $error =  [
                            'status' => 'failed',
                            "message" => "Користувача не знайдено. Дані не оновлено"
                        ];
                    }
                    return $error;
                } catch (Exception $ex) {
                    $error = [
                        'status' => 'failed',
                        'message' => 'Неможливо оновити дані користувача',
                        'response' => $ex->getMessage()
                    ];

                    return $error;
                } 
            }

            public function read(){
                $query = "SELECT 
                u.user_id, u.region_id, u.user_telegram_id, u.group_id, u.username, u.first_name, u.last_name, u.language_code, u.date_added, u.date_modified,
                r.name as region_name,
                gr.name as group_name
            FROM 
                ".$this->table_name." u
            LEFT JOIN
                regions r
                    ON u.region_id = r.region_id
            LEFT JOIN
                cluster gr
                    on u.group_id = gr.group_id";
        
                // подготовка запроса
                $stmt = $this->conn->prepare($query);

                // выполняем запрос
                $stmt->execute();
                return $stmt;
            }

            public function readOne(){ 
                $query = "
            SELECT 
                u.user_id, u.region_id, u.user_telegram_id, u.group_id, u.username, u.first_name, u.last_name, u.language_code, u.date_added, u.date_modified,
                r.name as region_name,
                gr.name as group_name
            FROM 
                ".$this->table_name." u
            LEFT JOIN
                regions r
                    ON u.region_id = r.region_id
            LEFT JOIN
                cluster gr
                    on u.group_id = gr.group_id  
            WHERE 
                u.user_telegram_id = ?
            LIMIT
                0,1";

                // подготовка запроса
                $stmt = $this->conn->prepare($query);
                
                $stmt->bindParam(1, $this->user_telegram_id);
                $stmt->execute();

                $row = $stmt->fetch(PDO::FETCH_ASSOC);
                 
                $this->user_id = $row['user_id'];
                $this->region_id = $row['region_id'];
                $this->region_name = $row['region_name'];
                $this->group_id = $row['group_id'];
                $this->group_name = $row['group_name'];
                $this->user_telegram_id = $row['user_telegram_id'];
                $this->username = $row['username'];
                $this->first_name = $row['first_name'];
                $this->last_name = $row['last_name'];
                $this->language_code = $row['language_code'];
                $this->date_added = $row['date_added'];
                $this->date_modified = $row['date_modified'];
            }

        }
    

?>