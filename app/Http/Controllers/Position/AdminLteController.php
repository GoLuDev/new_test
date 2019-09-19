<?php

namespace App\Http\Controllers\Position;

use App\Position;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Yajra\DataTables\DataTables;

class AdminLteController extends Controller
{
    public function getIndex()
    {
        return view('Position.index');
    }

    public function anyData()
    {
        $users = Position::with('employee')->get();
        return Datatables::of($users)
            ->editColumn('action', function ($user) {
                return '<a href="position/crud/'.$user->id.'/edit" ><i class="glyphicon glyphicon-pencil"></i></a>
                <a href="position/crud/' . $user->id . '" onclick="return confirm(\'Вы действительно хотите удалить ' . $user->name . '? \')" ><i class="glyphicon glyphicon-trash"></i> </a>';
            })
            ->make(true);
    }
}
