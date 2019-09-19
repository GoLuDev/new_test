@extends('adminlte::page')

@section('content')

    <div class="panel panel-default col-sm-12">

        <div class="panel-body ">
            <form action="{{ route('update_chief')}}" method="POST">
                {{ csrf_field() }}
                <input value="{{$id}}" name="id" type="hidden">
                <!-- Поле с выбором начальника  -->
                <div class="input-group col-sm-8">
                    <label for="exampleFormControlSelect1">Выберите начальника </label>
                    <input class="typeahead form-control" name="chief" type="text">
                </div>

                <!-- Кнопка изменения начальника -->
                <div class="input-group col-sm-8">
                    <div>
                        <button type="submit" class="btn btn-default">
                            <i class="fa fa-plus"></i> Изменить начальника
                        </button>
                    </div>
                </div>

            </form>

        </div>

    </div>
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
@endsection