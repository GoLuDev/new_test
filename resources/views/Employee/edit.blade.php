@extends('adminlte::page')

@section('content')
    <div class="panel panel-default col-sm-8">
        <div class="panel-body ">
            <div class="row">
            @include('common.errors')
            <!-- Форма  сотрудника -->
                <form action="{{ url('/employee/crud/'.$employees->id.'/update') }}" method="POST"
                      enctype="multipart/form-data">
                {{ csrf_field() }}
                {{ method_field('PUT') }}
                <!-- Проверка авторизации -->
                    @if(!Auth::check())
                        вы не вошли
                    @else
                    <!-- Имя сотрудника -->
                        <div class="input-group ">
                            <label for="task">Имя сотрудника : <b>{{ $employees->name }}</b></label>
                            <div>

                                <!-- Поле с фото -->
                                <b>Фото сотрудника:</b>
                                @if($employees->photo == null)
                                    фото не найдено
                                @else
                                    <img class="thumbnail" style="height: 250px; width:250px;"
                                         src="{{ asset('' . $employees->photo ) }}" height="50">
                            @endif
                            <!-- Поле с изменнением фото -->

                                <div class="input-group col-sm-8">
                                    <label for="exampleFormControlSelect1">Фото</label>
                                    <input type="file" name="image">
                                </div>


                                <!-- Поле с выбором начальника  -->
                                <div class="input-group col-sm-8">
                                    <label for="exampleFormControlSelect1">Выберите начальника </label>
                                    <input class="typeahead form-control" name="chief" type="text"
                                           value="{{ $employeeParent->name }}">
                                </div>
                                <!-- Поле с выбором должности -->
                                <div class="input-group col-sm-8 ">
                                    <label for="exampleFormControlSelect1">Выберите должность</label>
                                    <select class="form-control" id="exampleFormControlSelect1" name="position">
                                        @foreach($positions as $position)
                                            <option value="{{ $position->id }}">{{ $position->name}} </option>
                                        @endforeach
                                    </select>
                                </div>
                                <!-- Поле с именем -->
                                <div class="input-group col-sm-8">
                                    <label for="exampleFormControlSelect1">Имя</label>
                                    <input class="form-control" type="text" name="name" id="staff-name"
                                           value="{{ $employees->name }}"><br>
                                </div>

                                <!-- Поле с зарплатой -->
                                <div class="input-group col-sm-8">
                                    <label for="exampleFormControlSelect1">Зарплата</label>
                                    <input class="form-control" type="text" name="salary" id="staff-salary"
                                           value="{{ $employees->salary }}">
                                    <br>
                                </div>

                                <!-- Поле с датой -->
                                <div class="input-group col-sm-8 ">
                                    <label for="exampleFormControlSelect1">Дата</label>
                                    <input class="form-control " type="text" name="start_date" id="datepicker"
                                           value="{{ $employees->date_of_employment }}">
                                    <br>
                                </div>

                                <!-- Поле с номером -->
                                <div class="input-group col-sm-8">
                                    <label for="exampleFormControlSelect1">Телефонный номер</label>
                                    <input type="text" name="cell_number" id="staff-salary"
                                           class="form-control" value="{{ $employees->cell_number }}">
                                    <br>
                                </div>

                                <!-- Поле с Email -->
                                <div class="input-group col-sm-8">
                                    <label for="exampleFormControlSelect1">Email</label>
                                    <input type="text" name="email" id="staff-salary"
                                           class="form-control" value="{{ $employees->email }}">
                                    <br>
                                </div>
                                <div class="row">
                                    <!-- Поле с Created Updated Dates -->
                                    <div class=" col-sm-5">
                                        <b>Created at</b><br>{{$employees->created_at}}
                                        <b>Updated at</b><br>{{$employees->updated_at}}
                                    </div>
                                    <!-- Поле с Created Updated ID user -->
                                    <div class="col-sm-5">
                                        <b>Admin created ID</b><br>{{$employees->admin_created_id}}<br>
                                        <b>Admin updated ID</b><br>{{$employees->admin_updated_id}}
                                    </div>
                                </div>

                            </div>
                            <!-- Кнопка изменения сотрудника -->
                            <div class="input-group col-sm-8">
                                <div>
                                    <button type="submit" class="btn btn-default">
                                        <i class="fa fa-plus"></i> Изменить данные сотрудника
                                    </button>
                                </div>
                            </div>

                        </div>
                    @endif
                    <script>

                        $('#datepicker').datepicker({
                            format: 'yyyy-mm-dd',

                        });
                    </script>
                    <script type="text/javascript">
                        var path = "{{ route('autocomplete') }}";
                        $('input.typeahead').typeahead({
                            source: function (query, process) {
                                return $.get(path, {query: query}, function (data) {
                                    return process(data);
                                });
                            }
                        });
                    </script>
                </form>

            </div>
        </div>
    </div>
@endsection
