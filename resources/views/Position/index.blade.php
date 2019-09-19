@extends('adminlte::page')

@section('content')
    <!-- Проверка авторизации -->
    @if(!Auth::check())
        вы не вошли
    @else
        <!-- Добавление пользователя -->
        <div>
            <a href="{{ route('create_position') }}" class="btn btn-primary  btn-sm active pull-right">Добавить
                должность</a>
        </div>
        <div class="panel panel-default col-sm-12">

            <div class="panel-body ">
                <!-- Таблица -->

                <table class="table table-bordered" id="positions-table">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Last update</th>
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
            $('#positions-table').DataTable({
                processing: true,
                serverSide: true,
                ajax: '{!! route('positions.data') !!}',
                columns: [
                    {data: 'name', name: 'name'},
                    {data: 'updated_at', name: 'updated_at'},
                    {data: 'action', name: 'action', orderable: false, searchable: false},
                ]
            });
        });
    </script>
@endpush