function deletealert(id, event) {
    // STORE HREF ATTRIBUTE OF LINK CTL (THIS) BUTTON
    //var defaultAction = $(ctl).prop("href");
    // CANCEL DEFAULT LINK BEHAVIOUR
    event.preventDefault();
    swal({
        title: "Are you sure?",
        text: "Assests Record of this Employee will also be deleted !",
        type: "warning",
        showCancelButton: true,
        confirmButtonColor: "#222d32",
        confirmButtonText: "Yes, delete it!",
        cancelButtonText: "No, cancel",
        closeOnConfirm: false,
        closeOnCancel: false
    },
    function (isConfirm) {
        if (isConfirm) {
            swal({ title: "Deleted!", text: "Employee has been deleted.", type: "success", confirmButtonText: "OK!", closeOnConfirm: false },
            function () {
                // RESUME THE DEFAULT LINK ACTION
                window.location.href = "emplist.aspx?id=" + id;
                return true;
            });
        } else {
            swal("Cancelled", "", "error");
            return false;
        }
    });
}