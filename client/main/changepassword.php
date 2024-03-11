<div class="py-3">
<h5 class="text-center my-3">ĐỔI MẬT KHẨU</h5>
<?php
if (isset($_POST['changepassword'])) {
    $email = $_POST['email'];
    $oldpassword = md5($_POST['oldpassword']);
    $newpassword = md5($_POST['newpassword']);

    $sql = "SELECT * FROM users WHERE email='$email' AND password='$oldpassword' LIMIT 1";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
    // output data of each row
        $sql = "UPDATE client SET password='$newpassword' WHERE username='$email'";

        if ($conn->query($sql) === TRUE) {
            echo '<div style="color: green; text-align: center; font-size: .875rem;">
            
            <span>Đổi mật khẩu thành công!</span>
            </div>';
        } else {
            //echo "Error updating record: " . $conn->error;
        }

    } else {
        echo '<div style="color: red; text-align: center; font-size: .875rem;">
        
        <span> Đổi mật khẩu không thành công!</span> </div>';
    }
}
?>
<div class="row d-flex justify-content-center align-items-center">
    <div class="col-md-6 col-lg-4 col-9">
        
            <form action="" autocomplete="off" method="POST">
                <div class="d-grid gap-2">
                    <input id="form-log" type="text" name="email" class="form-control form-control-sm my-2" placeholder="Tài khoản">
                    <input id="form-log" type="password" name="oldpassword" class="form-control form-control-sm mb-2" placeholder="Mật khẩu cũ">
                    <input id="form-log" type="password" name="newpassword" class="form-control form-control-sm mb-2" placeholder="Mật khẩu mới">
                    <button id="form-log" type="submit" name="changepassword" class="btn btn-sm btn-success">Đổi mật khẩu</button>
                </div>
            </form>
        
    </div>
</div>
</div>