
$(document).ready(function submit(){
        //validate username
        $('#chkname').hide();
        let nameError = true;

        $('#txtusername').keyup(function submit() {
           submit();
        });
function submit() {
    let usernameValue = $('#txtusername').val();
    if (usernameValue.length == '') {
        $('#chkname').show();
        nameError = false;
        return false;
    }
    else if ((usernameValue.length < 5) || (usernameValue.length > 25)) {
        $('#chkname').show();
        $('#chkname').html("length of username must be between 5 and 25");
        usernameError = false;
        return false;

    } else {
        $('#chkname').hide();
    }
}
// button
    $('#submit').click(Function() {
        submit();
    if(nameError = true) {
            return true;
        }
   else {
            return false ;
        }
});
});
