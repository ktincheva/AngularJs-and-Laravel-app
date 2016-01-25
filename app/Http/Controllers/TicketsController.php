<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use KTSoftware\CRUD\CRUDController;
use Illuminate\Support\Facades\Config;
class TicketsController extends CRUDController
{
    public function __construct() {
        $settings = (object) Config::get("crud.tickets");
        parent::__construct($settings);
    }
}
