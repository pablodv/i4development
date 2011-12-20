// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery.livequery
//

jQuery.ajaxSetup({
  beforeSend: function(xhr) {
    xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
  }
})

$(document).ready(function(){
  toggleUserCheckboxes();
});

function toggleUserCheckboxes(){
  $(".toogle_resource").livequery('click', function(event){
    event.preventDefault();
    $.ajax({
      type:"POST",
      url:$(this).attr('href'),
      data:{ _method:'PUT' },
      success: function(data) {
        $('table.table tr:gt(0)').remove();
        $('table.table').append(data);
      }
    });
    event.stopPropagation();
  });
}
