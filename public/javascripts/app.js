$('#get-dish').on('click', function(event) {
  event.preventDefault();

  var request = $.ajax({
    method: "GET",
    url: "/.json"
  });


  request.done(function(newDish) {
    alert(newDish["dish"]);
  });
});


// $.get("/dishes/random.json", function(newDish) {
//   $("#recipe").text(newDish.content);
