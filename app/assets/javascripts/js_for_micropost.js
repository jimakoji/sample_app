/*
*
*   micropost character counter
*
*/

$(function(){
if ($('#post_field').val().length == 0) {
      $('#count').html("140文字入力できます。" );
}else{
      var n = 140 - $('#post_field').val().length;
      $('#count').html("あと" + n + "文字入力できます。" );
}
});

$(function(){
    $('#post_field').bind('keydown keyup keypress change',function(){
        var thisValueLength = 140 - $(this).val().length;
        thisValueLength == 140? str = "" :str = "あと"
        $('#count').html( str + thisValueLength + "文字入力できます。" );
    });
});

