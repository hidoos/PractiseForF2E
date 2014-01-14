/* dom test case */
$(document).ready(function() {
    var topLis = $('#selected-plays > li');
    topLis.addClass('horizontal');

    $('a[href^="mailto:"]').addClass('mailto');
  $('a[href$=".pdf"]').addClass('pdflink');
});
