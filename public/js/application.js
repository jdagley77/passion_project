$(document).ready(function() {
  giphy();
});

var giphy = function() {
  $(".todo-item").on("click", function(event) {
    event.preventDefault();
  $.ajax({
    url: "http://api.giphy.com/v1/gifs/search?q=motivational&api_key=dc6zaTOxFJmzC",
    method: "GET"
  })
  .done(function(result){
    console.log(("done"))
    console.log(result);
    var index = Math.floor(Math.random() * (10));
    console.log(index);
    var url = result["data"][index].embed_url;
    // var url = "http://giphy.com/embed/l3fQsAQUKggBos9IQ"
    $("#gif-div").html("<iframe src=\""+url+"\" width=\"480\"height=\"480\"frameborder=\"0\"></iframe>");
  });
  })

}
