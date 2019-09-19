@extends('adminlte::page')

@section('content')
    <div class="panel panel-default col-sm-8">

        <div class="panel-body ">
            <div class="row">
            @include('common.errors')

            <!-- Форма новой должности -->
                <form action="{{ route('store_position') }}" method="POST" class="form-horizontal"
                      enctype="multipart/form-data">
                {{ csrf_field() }}
                <!-- Проверка авторизации -->
                    @if(!Auth::check())
                        вы не вошли
                    @else
                    <!-- Название должности -->
                        <div class="input-group ">
                            <div class="input-group col-sm-8">
                                <label for="task"><p>Новая должность</p></label>
                            </div>
                            <!-- Поле с названием -->
                            <div class="input-group col-sm-12">
                                <label for="exampleFormControlSelect1">Должность</label>
                                <input type="text" name="name" id="staff-full_name"
                                       placeholder="Введите название должности"
                                       class="form-control"><br>
                            </div>
                        </div>
                        <!-- Кнопка добавления должности -->
                        <div class="input-group col-sm-8">
                            <button type="submit" class="btn btn-default">
                                <i class="fa fa-plus"></i> Добавить
                            </button>
                        </div>
                    @endif
                </form>
            </div>
        </div>
    </div>

@endsection