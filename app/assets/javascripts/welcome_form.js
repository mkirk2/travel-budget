( document ).addEventListener('turbolinks:load', function() {
    $( "#welcome-submit" ).click(function(event) {
        event.preventDefault();
        console.log("working")
        $( "#welcome-output" ).show();
        var input1 = parseInt($("#budget-total").val());
        var input2 = parseInt($("#length-total").val());
        var output = Math.round(input1/input2);
        var nameInput = capitalize($("#welcome-name").val());
        if (($("#budget-total").val()).length > 0 && $("#length-total").val().length > 0) {
            $( "#welcome-output" ).text("The budget for your trip is " + output + " USD per day. Have a great trip " + nameInput + ".");
        } else {
            $( "#welcome-output" ).text("Please input your budget and trip length.");
        }
    });
    $( "#welcome-reset" ).click(function(){
        $( "#welcome-output" ).hide();
    });
});

function capitalize(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}