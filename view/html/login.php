<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="../css/utility.css">
    <meta name="google-signin-client_id" content="81583426375-7euqt4mcs5s0ie5pqr0tk19eeaah0ort.apps.googleusercontent.com">
    <title>登入</title>
</head>

<body>
    <!-- google 
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    -->
    <!-- facebook -->
    <script>
        window.fbAsyncInit = function() {
            FB.init({
            appId      : '479906366412017',
            cookie     : true,
            xfbml      : true,
            version    : 'v11.0'
            });
            FB.AppEvents.logPageView();     
        };
        (function(d, s, id){
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {return;}
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <nav class="navbar navbar-expand-lg navbar-light bg-light px-2 px-sm-5">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.php">
            <img src="../../../favicon.ico" class="me-2" height="25px">
            展覽資訊平台</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ms-auto">
                    <a class="nav-link" href="register.php" id="register">註冊</a>
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
                <div class="col-12">
                    <button type="submit" class="btn btn-primary w-100">登　入</button>
                </div>
            </form>
            <!-- facebook -->
            <div class="mt-3 d-flex flex-column border-top">
                <div class="mt-3 text-center">
                    第三方登入
                </div>
                <div class="mx-auto">
                    <i class="bi bi-facebook fs-3" id="facebook"></i>
                </div>
                <!-- google 
                <div class="my-1 mx-auto g-signin2" data-onsuccess="onSignIn"></div>
                -->
            </div>
        </div>
    </div>
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="../js/vjs/login.js"></script>
</body>

</html>