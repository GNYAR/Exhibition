// 是否登入
$.ajax({
    type: "POST",
    url: "../../api/command.php",
    data: {
        key: 110
    },
    success: (response) => {
        let res = JSON.parse(response);
        if(res.stateCode == 100){
            $("#register").hide();
            $("#login").hide();
            $("#account").text(res.result[0]);
        }else{
            $("#acc").hide();
            $("#logout").hide();
        }
    }
});
// 登出
$("#logout").click(()=>{
    $.ajax({
        type: "POST",
        url: "../../api/command.php",
        data: {
            key: 120
        },
        success: (response) => {
            console.log(response);
            account = "";
            alert("帳號已登出！");
        }
    })
});
// 取得GET值
let eID = new URL(location.href).searchParams.get('eID');
$("#attend").attr("href", "attend.php?eID=" + eID);
$("#edit").attr("href", "exhEdit.php?eID=" + eID);
$("#proAdd").attr("href", "proAdd.php?eID=" + eID);

// 展覽資訊
$.ajax({
    type: "POST",
    url: "../../api/command.php",
    data: {
        key: 302,
        eID: eID
    },
    success: (response) => {
        let res = JSON.parse(response).result;
        // 主辦方
        $("#sponsor")
            .text(res.sName)
            .attr("href", "sponsor.php?sAcc=" + res.sAccount);
        // 輪播圖片
        $.ajax({
            type: "POST",
            url: "../../api/command.php",
            data: {
                key: 320,
                eID: eID
            },
            success: (response) => {
                let files = JSON.parse(response).result;
                let cnt = 0;
                files.forEach( v => {
                    $(".carousel-inner").append(
                        $("<div></div>")
                            .addClass("carousel-item" + (cnt == 0 ? " active" : ""))
                            .append(
                                $("<img></img>")
                                    .attr("src", "../img/" + res.eID + "/" + v)
                                    .addClass("d-block w-100")
                                    .attr("alt", "exh")
                                )
                    );
                    $(".carousel-indicators").append(
                        $("<button></button>")
                            .attr("type", "button")
                            .attr("data-bs-target", "#imgCarousel")
                            .attr("data-bs-slide-to", cnt)
                            .attr("aria-current", "true")
                            .attr("aria-label", "Slide " + cnt + 1)
                            .addClass((cnt++ == 0 ? "active" : ""))
                    );
                });
            }
        });
        // 展覽資訊
        $("#eName").text(res.eName);
        $("#date").text("日期：" + res.start + "~" + res.end);
        $("#place").text("地點：" + res.ePlace);
        $("#title").text(res.title);
        $("#descript").html(res.descript.replace(/\n/g,'<br/>'));
    }
});
// 作品資訊
$.ajax({
    type: "POST",
    url: "../../api/command.php",
    data: {
        key: 501,
        eID: eID
    },
    success: (response) => {
        let json = JSON.parse(response);
        let state = json.stateCode;
        let res = json.result;
        if(state == 98){
            $("#pro_list").append(
                $("<h5></h5>")
                    .addClass("m-3 text-center")
                    .text(res[0])
            );
        }else if(state == 100){
            res.forEach(element => {
                let pID = element.pID;
                let pName = element.pName;
                let author = element.author;
                let date = element.date;
                $("#pro_list").append(
                    $("<tr></tr>")
                        .attr("id", eID)
                        .append(
                            $("<td></td>").append(
                                $("<a></a>")
                                    .addClass("btn btn-outline-info text-dark border-0 w-100 text-start fw-bolder")
                                    .attr("href", "proAdmin.php?eID=" + eID + "&pID=" + pID)
                                    .attr("id", "pro" + eID + "_" + pID)
                                    .text(pName)
                            ),
                            $("<td></td>").text(author),
                            $("<td></td>").text(date),
                            $("<td></td>")
                                .addClass("text-center")
                                .append(
                                    $("<button></button>")
                                        .addClass("btn-close")
                                        .attr("id", "pro_del")
                                        .attr("type", "button")
                                        .attr("aria-label", "Close")
                                        .val(eID + "_" + pID)
                            )
                    )
                );
            });
        }
    }
});
// 刪除作品
$(document).on('click', '#pro_del', function(event){
    let value = $(this).val().split("_");
    if(confirm("確定移除【" + $("#pro" + $(this).val()).text() + "】?")){
        $.ajax({
            type: "POST",
            url: "../../api/command.php",
            data: {
                key: 540,
                eID: value[0],
                pID: value[1]
            },
            success: (response) => {
                console.log("remove " + $("#pro" + $(this).val()).text());
            }
        });
        $(this).parent().parent().remove();
    }
});