<!--todo napisać ify warunkujace co sie wykorzystuje z modelu-->

<!doctype html>
<html lang="pl">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <!--<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">-->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <!--<link rel="stylesheet" href="css/form.css">-->
    <title>Fibonacci</title>
</head>

<body style="background:#E8E8E8">
<div class="container text-center">

    <#if error??>
        <div class="row justify-content-center mt-5 mb-5">
            <div class="card col-7 align-self-centered bg-danger">
                <h1 class="card-header mt-5 mb-5 bg-light">WYSTĄPIŁ BŁĄD !!!</h1>
                <h3 class="card-text mb-3">${error}</h3>
            </div>

        </div>
        <div class="row justify-content-center">
            <a type="button" class="btn btn-outline-danger col-7 align-self-centered" href="/aplikacja/">Spróbuj jeszcze raz</a>
        </div>

    <#else>
    <div class="row justify-content-center">
        <div class="col-10 align-self-centered">
            <div class="card mb-5 mt-5">
                 <#assign i = fibonacciList?size-1 >
                <h3 class="card-header">Obliczona wartość ${i}-ego elementu wynosi:</h3>
                <h1 class="card-title">${fibonacciList[i]}</h1>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-10 align-self-centered mb-5">
            <h3>Lista elementów ciągu Fibonacciego od 0 do ${i}</h3>
            <table class="table table-striped table-danger table-bordered display wrap" style="table-layout: fixed; width: 100%">

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
                    <td style="word-wrap: break-word">${fib}</td>
                </tr>
                </#list>
                </tbody>

            </table>
        </div>
    </div>
    </#if>

</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
        crossorigin="anonymous"></script>
</body>
</html>