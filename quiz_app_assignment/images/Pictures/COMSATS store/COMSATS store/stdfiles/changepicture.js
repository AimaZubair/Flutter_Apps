
$(document).ready(function () {
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img-upload').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#datacontent_imgInp").change(function () {
        readURL(this);
    });
});
$('#imageUpload').change(function () {
    readImgUrlAndPreview(this);
    function readImgUrlAndPreview(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#imagePreview').attr('src', e.target.result);
            }
        };
        reader.readAsDataURL(input.files[0]);
    }
});

function closefunction() {
    $('#alertmsg').slideUp();
    //document.getElementById("alertmsgbox").style.display = "none";
}
changepicture.js
Displaying; changepicture.js