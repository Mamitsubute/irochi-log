document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems);
    var elems2 = document.querySelectorAll('.datepicker');
    var instances = M.Datepicker.init(elems2);
});