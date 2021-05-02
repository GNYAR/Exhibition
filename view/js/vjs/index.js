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
$.ajax({
    type: "POST",
    url: "../../api/command.php",
    data: {
        key: 301
    },
    success: (response) => {
        let res = JSON.parse(response).result;
        // row
        // document.createElement('div');
        let row = $("<div></div>")
            .addClass("row row-cols-1 row-cols-lg-2 row-cols-xl-3 p-4 g-4");
        res.forEach(e => {
            // row col
            // document.createElement('div')
            let col = $("<div></div>")
                .addClass("col");
            // row col card
            let card = $("<div></div>")
                .addClass("card border-dark h-100");
            // row col card img
            let img = $("<img></img>")
                .addClass("card-img-top img-fluid")
                .attr("src", "../img/" + e["eID"] + "/exh.jpg");
            // row col card cardBody
            let cBody = $("<div></div>")
                .addClass("card-body")
                .append(
                    $("<div></div>")
                        .addClass("d-flex flex-column h-100")
                        .append(
                            // row col card cardBody cardText
                            $("<div></div>")
                                .addClass("card-text h-100")
                                .append(
                                    $("<h5></h5>")
                                        .addClass("card-title")
                                        .text(e["eName"])
                                )
                            ),
                            $("<a></a>")
                                .addClass("stretched-link")
                                .attr("href", "exh.php?eID=" + e["eID"])
                );
            let cFoot = $("<div></div>")
                .addClass("card-footer")
                .append(                    
                    $("<div></div>")
                        .addClass("text-truncate")
                        .append(
                            $("<i></i>")
                                .addClass("bi bi-calendar2-minus-fill me-1"),
                            e["start"] + "～" + e['end']    
                    ),
                    $("<div></div>")
                        .addClass("text-truncate")
                        .append(
                            $("<i></i>")
                                .addClass("bi bi-geo-alt-fill me-1"),
                            e["ePlace"]    
                    )
                );
            
            row.append(
                col.append(
                    card.append(img, cBody, cFoot)
                )
            );
        });
        $(".container-lg").append(row);
    }
});