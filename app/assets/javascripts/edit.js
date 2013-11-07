$(document).ready(function()
{
    $('.container').click(function(event) {
        var id = $(this).attr('id');
        $('#' + id + ' .edit').addClass('editing');
    });
});