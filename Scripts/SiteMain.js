var float = 23.5;
// Onload function
window.onload = function () {

    var string = "Hello first string";
    var int = 14;
    var boolean = true;
    
    document.getElementById("applicationstate").innerHTML = float;
   
}

//function implemented on click
function test() {

    document.getElementById("test").innerText = "youclicked";

}

function myarrayFunction() {

    var index;
    var select = document.getElementById("DropDownList1");
    var Myindex = ["Zero", "One", "Two", "Three"];
    for (index = 0; index < Myindex.length; index++) {

        select.appendChild(new Option(Myindex[index]))
    }
}

// jquery implementation
$(document).ready(function () {
    var int = 14.23;
    $("#sessionstate").text("readydom");

    $("#textchange").focus(function () {
    
        $(this).css("background-color", "blue");
       

    });

    $("#textchange").blur(function () {
        $(this).css("background-color", "green");
    });
    

    $("#Button1").click(function () {

        var index;
        var select = $("#BulletedList1");
        var Myindex = ["Zero", "One", "Two", "Three"];
        for (index = 0; index < Myindex.length; index++) {
           
            select.append(new Option(Myindex[index]))
        }

        $("#sessionstate").text(float);
    });
});