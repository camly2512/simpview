<?php
$video_id = $_GET['video_id'];
if (isset($_SESSION['client_id'])) {


    $user_id = $_SESSION['client_id'];
}

if (isset($_POST['add'])) {
    $categorylist_id = $_POST['categorylist_id'];


    $sql_list = "INSERT INTO playlist (video_id, categorylist_id, user_id) VALUES('$video_id','$categorylist_id','$user_id')";
    if ($conn->query($sql_list) === TRUE) {
?>
        <script>
            window.location.replace("watch.php?video_id=<?php echo $video_id ?>");
        </script>
<?php
    }
} else {
    //
}
?>
<div class="dropdown">

    <div style="float: right;" class="btn btn-white dropdown-toggle" type="button" id="dropdownMenu3" data-bs-toggle="dropdown" aria-expanded="false">
        <h6 class="text-primary">Lưu</h6>
    </div>
    <div id="listForm" class="dropdown-menu" aria-labelledby="dropdownMenu3">
        <h6 style="font-size: 0.875rem !important;" class="text-center">
            Danh sách phát
        </h6>

        <form class="mx-3 my-1" action="" method="POST">

            <select name="categorylist_id" class="form-select form-select-sm">
                <?php
                if (isset($_SESSION['client_id'])) {
                    $user_id = $_SESSION['client_id'];
                    // echo $user_id."Hello";

                    $sql = "SELECT * FROM categorylist WHERE categorylist.user_id = '$user_id'";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        // output data of each row

                        while ($row = $result->fetch_array()) {
                ?>
                            <option value="<?php echo $row['categorylist_id'] ?>"><?php echo $row['name'] ?></option>

                <?php
                        }
                    } else {
                        // echo "0 results";
                    }
                }
                ?>
            </select>
            <button style="float: right;" type="submit" name="add" class="btn btn-sm text-primary bolder">Thêm</button>
        </form>
    </div>
</div>