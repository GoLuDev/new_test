@extends('adminlte::page')

@section('content')
    <div class="panel panel-default col-sm-8">
        <div class="panel-body ">
            <div class="row">
            @include('common.errors')
            <!-- Форма нового сотрудника -->
                <form action="{{ route('store_employee') }}" method="POST" class="form-horizontal"
                      enctype="multipart/form-data">
                {{ csrf_field() }}
                <!-- Проверка авторизации -->
                    @if(!Auth::check())
                        вы не вошли
                    @else
                    <!-- Имя сотрудника -->
                        <div class="input-group ">
                            <div class="input-group col-sm-8">
                                <label><p>Новый сотрудник</p></label>
                            </div>
                            <!-- Поле с выбором начальника  -->
                            <div class="input-group col-sm-8">
                                <label for="exampleFormControlSelect1">Выберите начальника </label>
                                <input class="typeahead form-control" name="chief" type="text">
                            </div>
                            <!-- Поле с выбором должности -->
                            <div class="input-group col-sm-8 ">
                                <label for="exampleFormControlSelect1">Выберите должность</label>
                                <select class="form-control" id="exampleFormControlSelect1" name="position">
                                    @foreach($positions as $position)
                                        <option value="{{ $position->id }}">{{ $position->name }} </option>
                                    @endforeach
                                </select>
                            </div>
                            <!-- Поле с именем -->
                            <div class="input-group col-sm-8">
                                <label for="exampleFormControlSelect1">Имя</label>
                                <input type="text" name="name" id="staff-name"
                                       placeholder="Введите полное имя"
                                       class="form-control"><br>
                            </div>
                            <!-- Поле с зарплатой -->
                            <div class="input-group col-sm-8">
                                <label for="exampleFormControlSelect1">Зарплата</label>
                                <input type="text" name="salary" id="staff-salary" placeholder="Укажите зарплату"
                                       class="form-control">
                                <br>
                            </div>
                            <!-- Поле с датой -->
                            <div class="input-group col-sm-8">
                                <label for="exampleFormControlSelect1">Дата</label>
                                <input type="text" name="start_date" id="datepicker" placeholder="Установите дату"
                                       class="form-control">
                                <br>
                            </div>
                            <!-- Поле с номером -->
                            <div class="input-group col-sm-8">
                                <label for="exampleFormControlSelect1">Телефонный номер</label>
                                <input type="text" name="cell_number" id="staff-salary" placeholder="Укажите номер"
                                       class="form-control">
                                <br>
                            </div>
                            <!-- Поле с Email -->
                            <div class="input-group col-sm-8">
                                <label for="exampleFormControlSelect1">Email</label>
                                <input type="text" name="email" id="staff-salary" placeholder="Укажите email"
                                       class="form-control">
                                <br>
                            </div>

                        </div>


                        <!-- Поле с картинкой -->

                        <div class="input-group col-sm-8">
                            <label for="exampleFormControlSelect1">Фото</label>
                            <input type="file" name="image">
                        </div>
                        <!-- Кнопка добавления сотрудника -->
                        <div class="input-group col-sm-8">

                            <button type="submit" class="btn btn-default">
                                <i class="fa fa-plus"></i> Добавить Сотрудника
                            </button>

                        </div>
                    @endif
                    <script>

                        $('#datepicker').datepicker({
                            format: 'yyyy/mm/dd',

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