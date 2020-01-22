$( document ).ready(function() {

  customise = function(id, cssAttribute) {
    $(`#${id}`).change(function() {
      var value = $( `#${id}`).val()
      $( "body").css(`${cssAttribute}`, value)
    })
  }

  customise("wall-color", "background-color")

  customise("wall-font", "font-family")

});
