// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

function hide_credit_card(s) {
  if ((s.selectedIndex+1) == s.dataset.option) {
    document.getElementById(s.dataset.target)
      .hidden = false
  } else {
    document.getElementById(s.dataset.target)
      .hidden = true
  }
}

function hide_date_paid(s) {
  if (s.checked) {
    document.getElementById(s.dataset.target)
      .hidden = false
  } else {
    document.getElementById(s.dataset.target)
      .hidden = true
  }
}
