<?php

namespace App\Http\Controllers\Employee;

use App\Employee;
use App\Position;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Auth;

class CrudController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {

        $data = Employee::select("name")
            ->where("name","LIKE","%{$request->input('query')}%")
            ->get();




        $employees = Employee::query()->get();
        $positions = Position::query()->get();
        return view('Employee.create', ['employees' => $employees,
            'positions' => $positions,
            'data' => $data,
            ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'min:2|max:255',
            'salary' => 'numeric|between:0,500000',
            'start_date' => 'date_format:Y-m-d',
            'image' => 'required|image|mimes:jpeg,png',
            'cell_number' => 'regex:/^\+380\d{3}\d{2}\d{2}\d{2}$/',
            'chief' =>'required',
            'position' => 'required',
            'email' => 'email'

        ]);
        $img = $request->file('image');
        $file_name = 'storage/uploads/'.time() . '.' . $img->getClientOriginalExtension();
        $location = public_path($file_name);
        Image::make($img)->resize(300, 300)->encode('jpg', 80)->orientate()->save($location);
        $staff = new Employee();
        $parent_id = Employee::where("name","LIKE","%{$request->input('chief')}%")->first();
        $staff->position_id = $request->position;
        $staff->parent_id = $parent_id->id;
        $staff->name = $request->name;
        $staff->salary = '$' . $request->salary;
        $staff->date_of_employment = $request->start_date;
        $staff->photo = $file_name;
        $staff->cell_number = $request->cell_number;
        $staff->email = $request->email;
        $staff->admin_created_id =  Auth::user()->id;
        $staff->save();
        return redirect()->route('employees');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {

        $data = Employee::select("name")
            ->where("name","LIKE","%{$request->input('query')}%")
            ->get();
        $positions = Position::get();
        $employees = Employee::find($id);
        $employeeParent = Employee::where('id', '=', $employees->parent_id)->first();
        $photo_id = $employees->photo_id;
        if ($photo_id > 0)
            $image = Photo::find($photo_id);
        else
            $image = $employees;
        return view('Employee.edit', ['employees' => $employees,
                'positions' => $positions,
                'image' => $image,
                'data' => $data,
                'employeeParent' => $employeeParent]
        );



    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'min:2|max:255',
            'salary' => 'numeric|between:0,500000',
            'start_date' => 'date_format:Y-m-d',
            'image' => 'image|mimes:jpeg,png',
            'cell_number' => 'regex:/^\+380\d{3}\d{2}\d{2}\d{2}$/',
            'chief' =>'required',
            'position' => 'required',
            'email' => 'email'

        ]);
        $employee = Employee::where("name","LIKE","%{$request->input('chief')}%")->first();
        $staff = Employee::find($id);
        $img = $request->file('image');
        if (isset($img))
        {
            $file_name = 'storage/uploads/'.time() . '.' . $img->getClientOriginalExtension();
            $location = public_path($file_name);
            Image::make($img)->resize(300, 300)->encode('jpg', 80)->orientate()->save($location);
            $staff->photo = $file_name;
        }
        $staff->position_id = $request->position;
        $staff->parent_id = $employee->id;
        $staff->name = $request->name;
        $staff->salary = '$' . $request->salary;
        $staff->cell_number = $request->cell_number;
        $staff->email = $request->email;
        $staff->date_of_employment = $request->start_date;
        $staff->admin_updated_id =  Auth::user()->id;
        $staff->save();
        return redirect()->route('employees');





    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Employee $user)
    {

       $id = $user->id;
       $results = Employee::where('parent_id', '=',$id )->first();
       //$user->delete();

        if ($results > null )
        {
            return view('Employee/boss_change', ['id' => $id]);
        }
        else
        {
            return redirect()->route('employees');
        }
    }
    public function update_chief(Request $request)
    {

        $name = $request->chief;
        $id = Employee::select('id')->where('name', '=', $name)->first();

        Employee::where('parent_id', $request->id)
            ->update(['parent_id' => $id->id]);
        return redirect()->route('employees');

    }
}