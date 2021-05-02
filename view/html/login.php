<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/utility.css">
    <title>登入</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light px-2 px-sm-5">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.php">INDEX</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ms-auto">
                    <a class="nav-link" href="register.php?id=m" id="member"><span class="align-middle">註冊</span></a>
                    <a class="nav-link" href="index.php" id="home"><span class="align-middle">回首頁</span></a>
                </div>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="p-4 mx-auto" style="max-width: 500px;">
            <h5>登入</h5>
            <form class="row g-3 my-3">
                <div class="col-12">
                    <label for="acc" class="form-label">帳號</label>
                    <input type="text" class="form-control" name="acc" id="acc" maxlength="30" required>
                </div>
                <div class="col-12">
                    <label for="pw" class="form-label">密碼</label>
                    <input type="password" class="form-control" name="pw" id="pw" maxlength="30" required>
                </div>
                <div class="col-12 mt-5">
                    <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" id="id">
                        <label class="form-check-label" for="id" id="id_lab">目前身分：一般會員</label>
                    </div>
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary w-100">登　入</button>
                </div>
            </form>
        </div>
    </div>

    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="../js/vjs/login.js"></script>
</body>

</html>