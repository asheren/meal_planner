// Bootstrap 5 popover and tooltip initialization
document.addEventListener('DOMContentLoaded', function() {
  // Initialize popovers
  var popoverTriggerList = document.querySelectorAll('a[rel~=popover], .has-popover');
  popoverTriggerList.forEach(function(el) {
    new bootstrap.Popover(el);
  });

  // Initialize tooltips
  var tooltipTriggerList = document.querySelectorAll('a[rel~=tooltip], .has-tooltip');
  tooltipTriggerList.forEach(function(el) {
    new bootstrap.Tooltip(el);
  });
});
