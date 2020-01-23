// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).ready(function() {

  $( ".comment-btn" ).click(function(e){
    e.preventDefault();
    var commentClasses = this.className.split('-')
    var commentNum = commentClasses[commentClasses.length-1]
    $( "#comment-" + commentNum).toggle();
  });

  $( ".show-comments-btn" ).click(function(e){
    e.preventDefault();
    var showCommentClasses = this.className.split('-')
    var showCommentNum = showCommentClasses[showCommentClasses.length-1]
    $( "#show-comments-" + showCommentNum).toggle();
  });

});