<?php

class View_group{
    public static function index($array){
        $message = $array['message'];
        $message['reply_markup'] = Keyboard::reply_markup([3], [], 'group', $array['data'], [], "inline_keyboard");
        
        Core::getTelegram()->editMessageText($message);
    }
}