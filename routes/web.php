<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

/*
 Employees routes
 */

Route::get('employees', 'Employee\AdminLteController@getIndex')->name('employees');
Route::get('employees/data', 'Employee\AdminLteController@anyData')->name('employees.data');

Route::get('employee/crud/{id}/edit', 'Employee\CrudController@edit');
Route::put('employee/crud/{id}/update', 'Employee\CrudController@update');

Route::get('employee/crud/{user}/', 'Employee\CrudController@destroy');

Route::get('employee/create', 'Employee\CrudController@create')->name('create_employee');
Route::post('employee/store', 'Employee\CrudController@store')->name('store_employee');

Route::get('autocomplete', 'Employee\AutoCompleteController@autocomplete')->name('autocomplete');

Route::post('update_chief', 'Employee\CrudController@update_chief')->name('update_chief');
/*
  Position routes
*/

Route::get('positions', 'Position\AdminLteController@getIndex')->name('positions');
Route::get('positions/data', 'Position\AdminLteController@anyData')->name('positions.data');

Route::get('position/crud/{id}/edit', 'Position\CrudController@edit');
Route::put('position/crud/{id}/update', 'Position\CrudController@update');

Route::get('position/crud/{user}/', 'Position\CrudController@destroy');

Route::get('position/create', 'Position\CrudController@create')->name('create_position');
Route::post('position/store', 'Position\CrudController@store')->name('store_position');


