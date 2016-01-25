<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tickets extends Model
{
    //

  public function stations() {
        return $this->hasMany('App\Models\Stations', 'directionid', 'id');
    }
}