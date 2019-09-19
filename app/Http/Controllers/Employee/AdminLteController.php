<?php

namespace App\Http\Controllers\Employee;

use App\Employee;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Yajra\DataTables\DataTables;

class AdminLteController extends Controller
{
    public function getIndex()
    {
        return view('Employee.index');
    }

    public function anyData()
    {
        $users = Employee::with('position')->get();
        return Datatables::of($users)
            ->addColumn('position', function ( $user) {
                return $user->position->name;
            })
            ->addColumn('action', function ($user) {
                return '<a href="employee/crud/' . $user->id . '/edit"><i class="glyphicon glyphicon-pencil"></i></a>
                        <a href="employee/crud/' . $user->id . '" onclick="return confirm(\'Вы действительно хотите удалить ' . $user->name . '? \')" ><i class="glyphicon glyphicon-trash"></i> </a>';
            })
            ->addColumn('photo', function ( $user) {
                return $user->photo;})
            ->make(true);

    }

}
