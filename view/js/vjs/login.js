let id = "";
$(document).ready(function () {
    if(location.href.includes('login.php')){
        id = "m";
    }else{
        id = "s";
    }
});

$("#acc").blur(() => {
    $("#pw").val("");
});

$("form").submit((event) => {
    $("#accError").remove();
    $("#pwError").remove();
    event.preventDefault();
    // 序列化
    let data = {};
    $("form").serializeArray().forEach(e => {
        data[e.name] = e.value;
    });
    $.ajax({
        type: "POST",
        url: "../../api/command.php",
        data: {
            key: 100,
            acc: data["acc"],
            pw: data["pw"],
            id: id
        },
        success: (response) => {
            let state = JSON.parse(response).stateCode
            let res = JSON.parse(response).result;
            if (res && state == 100) {
                alert("登入成功！");
                location.href = (id == 'm' ? "index.php" : "sAcc.php");
            }else if(state == 98){
                $("#acc")
                    .addClass("is-invalid")
                    .after(
                        $("<div></div>")
                            .addClass("invalid-feedback")
                            .attr("id", "accError")
                            .text("查無此帳號！"));
            }else if(state == 99){
                $("#pw")
                    .addClass("is-invalid")
                    .after(
                        $("<div></div>")
                            .addClass("invalid-feedback")
                            .attr("id", "pwError")
                            .text("密碼錯誤！"));
            }
        }
    });
});