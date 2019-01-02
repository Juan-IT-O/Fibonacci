<!doctype html>
<html lang="pl">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="css/form.css">
    <title>Fibonacci</title>
<body class="text-center" cz-shortcut-listen="true">
<div class="container">
    <div class="row justify-content-center">
        <div class="col-7 align-self-centered">
            <div class="card mb-5" >
                 <#assign i = fibonacciList?size-1 >
                <h3 class="card-header">Obliczona wartość ${i}-ego elementu wynosi:</h3>
                <h1 class="card-title">${fibonacciList[i]}</h1>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-7 align-self-centered">
            <h3>Lista elementów ciągu Fibonacciego od 0 do ${i}</h3>
            <table class="table table-striped table-danger table-bordered">

                <thead>

                <tr>
                    <th scope="col">Nr</th>
                    <th scope="col">Wartość</th>
                </tr>
                </thead>
                <tbody>
                <#list fibonacciList as fib>
                <tr>
                    <#assign n = fib?counter-1 >
                    <th scope="row">${n}</th>
                    <td>${fib}</td>
                </tr>
                </#list>
                </tbody>

        </table>
    </div>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>