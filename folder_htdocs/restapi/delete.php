<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
include('db.php');
if (!isset($_POST['id'])) {
  echo json_encode("No Data Sent");
} else {
  $id = $_POST['id'];
  $result = mysqli_query($db, "DELETE FROM blog WHERE id = {$id}");
  if ($result) {
    echo json_encode("Success");
  } else {
    echo json_encode("Failed");
  }
}

// header('Content-Type: application/json');
// include('db.php');

// Mengambil data dari body permintaan metode DELETE
// $data = json_decode(file_get_contents("php://input"));

// if (isset($data->id)) {
//   $id = $data->id;
//   $result = mysqli_query($db, "DELETE FROM blog WHERE id = {$id}");
//   if ($result) {
//     echo json_encode("Success");
//   } else {
//     echo json_encode("Failed");
//   }
// } else {
//   echo json_encode("No Data Sent");
// }
