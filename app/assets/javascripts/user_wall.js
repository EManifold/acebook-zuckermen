$( document ).ready(function() {

  $( "#wall-color" ).change(function() {
    wallColor = $( "#wall-color").val()
    $( 'body' ).css("background-color", wallColor)
  })

  $( "#wall-font" ).change(function() {
    wallFont = $( "#wall-font").val()
    $( 'body' ).css("font-family", wallFont)
  })
});