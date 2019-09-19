@extends('adminlte::page')

@section('content')
    <div class="panel panel-default col-sm-8">
        <div class="panel-body ">
            <div class="row">
            @include('common.errors')
            <!-- Форма редактирования позиции -->
                <form action="{{ url('/position/crud/'.$staff->id.'/update') }}" method="POST" class="form-horizontal">
                {{ csrf_field() }}
                {{ method_field('PUT') }}
                <!-- Проверка авторизации -->
                    @if(!Auth::check())
                        вы не вошли
                    @else
                    <!-- Название позиции -->
                        <div class="form-group">
                            <label for="task" class="col-sm-3 control-label">Название позиции :
                                <b>{{ $staff->name }}</b></label>
                            <div class="col-sm-6">
                                <!-- Поле с выбором начальника -->

                                <div class="form-group ">
                                    <label for="exampleFormControlSelect1">Выберите начальника</label>
                                    <select class="form-control" id="exampleFormControlSelect1" name="">

                                    </select>
                                </div>
                                <!-- Поле с именем -->
                                <input type="text" name="name" id="staff-name"
                                       value="{{ $staff->name }}"
                                       class="form-control"><br>
                            </div>
                            <!-- Кнопка изменения позиции -->
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-6">
                                    <button type="submit" class="btn btn-default">
                                        <i class="fa fa-plus"></i> Изменить данные позиции
                                    </button>
                                </div>
                            </div>

                        </div>
                    @endif
                </form>
            </div>
        </div>
    </div>
@endsection