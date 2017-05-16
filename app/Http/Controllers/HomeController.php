<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Symfony\Component\HttpKernel\Client;

class HomeController extends Controller
{
    public function index (){
        return view('/inicio');
    }

}