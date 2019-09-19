@extends('adminlte::page')

@section('content')
    <!-- Проверка авторизации -->
    @if(!Auth::check())
        вы не вошли
    @else
        <!-- Добавление пользователя -->
        <div>
            <a href="{{ route('create_employee') }}" class="btn btn-primary  btn-sm active pull-right">Добавить
                пользователя</a>
        </div>
        <div class="panel panel-default col-sm-12">

            <div class="panel-body ">
                <!-- Таблица -->
                <table class="table table-striped table-condensed" id="employees-table">
                    <thead>
                    <tr>
                        <th>Photo</th>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Date of employment</th>
                        <th>Phone number</th>
                        <th>Email</th>
                        <th>Salary</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    @endif
@stop

@push('scripts')
    <script>
        $(function () {
            $('#employees-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{!! route('employees.data') !!}',
                columns: [
                    {
                        data: 'photo', name: 'photo',
                        render: function (data) {
                            return "<img class='img-circle' src='" + data + "' height='35'/>";
                        },


                        orderable: false, searchable: false
                    },
                    {data: 'name', name: 'name'},
                    {data: 'position', name: 'position_id'},
                    {data: 'date_of_employment', name: 'date_of_employment'},
                    {data: 'cell_number', name: 'cell_number'},
                    {data: 'email', name: 'email'},
                    {data: 'salary', name: 'salary'},
                    {data: 'action', name: 'action', orderable: false, searchable: false},
                ]
            });
        });
    </script>
@endpush