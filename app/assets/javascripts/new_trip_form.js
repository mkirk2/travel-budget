( document ).addEventListener('turbolinks:load', function() {
    $( "#new-trip-submit" ).click(function(event) {
        event.preventDefault();
        var oneDay = 24*60*60*1000;
        var startDate = parseDate($('#start-date').val());
        var endDate = parseDate($('#end-date').val());
        var totalDays = Math.round(Math.abs((startDate.getTime() - endDate.getTime())/(oneDay)));
        var dailyBudget = Math.round(($('#budget-total').val() / totalDays));
        console.log(totalDays);
        console.log(parseInt($('#budget-total').val()));
        console.log(dailyBudget);
        console.log($('#trip-name').val())
        console.log($('#start-date').val())
        console.log($('#end-date').val())
        var data = {trip: {name: $('#trip-name').val(), 
                            budget: $('#budget-total').val(), 
                            start_date: startDate,  
                            end_date: endDate, 
                            daily_budget: dailyBudget, 
                            total_days: totalDays}}
        console.log('we made it!')
        $.post("/trips", data);
    });
});

function parseDate(input) {
    var parts = input.match(/(\d+)/g);
    return new Date(parts[0], parts[1]-1, parts[2]); 
  }