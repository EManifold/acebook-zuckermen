// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).ready(function() {

  toggle = function(className, id) {
    $(`${className}`).click(function(e){
      e.preventDefault();
      var classes = this.className.split('-')
      var idNum = classes[classes.length - 1]
      $(`${id}` + idNum).toggle();
    })
  }

  toggle(".comment-btn", "#comment-")

  toggle(".show-comments-btn", "#show-comments-")

});