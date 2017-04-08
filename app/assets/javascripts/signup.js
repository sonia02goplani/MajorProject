$(document).on('turbolinks:load', function() {
  $("#new_user input:radio[name='user[roles][]']").change(function(){
    if(this.value == 'Volunteer' && this.checked) {
      $(".organization_fields").hide();
      $(".volunteer_fields").show();
    } else {
      $(".organization_fields").show();
      $(".volunteer_fields").hide();
    }
  });
});