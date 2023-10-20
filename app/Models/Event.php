<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Event extends Model
{
    use HasFactory;
    protected $table = "event";

    function handleUploadFoto(){
        if(request()->hasFile('thumbnail')){
            $thumbnail = request()->file('thumbnail');
            $destination = "/event";
            $randomStr = Str::random(5);
            $filename = $this->id."-".time()."-".$randomStr.".".$thumbnail->extension();
            $url = $thumbnail->storeAs($destination, $filename);
            $this->thumbnail = 'app/'.$url;
            $this->save;
        }
    }
    
    function handleDeleteFoto(){
        $thumbnail = $this->thumbnail;
        if($thumbnail){
            $path = public_path($thumbnail);
            if(file_exists($path)){
                unlink($path);
            }
            return true;
        }
    }
}
