// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function hide_ship_date(s) {
  if (s.checked) {
    document.getElementById(s.dataset.target)
      .hidden = false
  } else {
    document.getElementById(s.dataset.target)
      .hidden = true
  }
}
