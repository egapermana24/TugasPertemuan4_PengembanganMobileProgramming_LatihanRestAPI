<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
include('db.php');
if (!isset($_POST['id']) && !isset($_POST['title']) && !isset($_POST['content'])) {
  echo json_encode("No Data Sent");
} else {
  $id = $_POST['id'];
  $title = $_POST['title'];
  $content = $_POST['content'];
  htmlspecialchars($title);
  htmlspecialchars($content);
  $result = mysqli_query($db, "UPDATE blog SET title = '{$title}', content =
'{$content}' WHERE id ={$id}");
  if ($result) {
    echo json_encode("Success");
  } else {
    echo json_encode("Failed");
  }
}

// header('Content-Type: application/json');
// include('db.php');

// if (isset($_POST['id']) && isset($_POST['title']) && isset($_POST['content'])) {
//   $id = $_POST['id'];
//   $title = $_POST['title'];
//   $content = $_POST['content'];
//   $result = mysqli_query($db, "UPDATE blog SET title = '{$title}', content = '{$content}' WHERE id = {$id}");
//   if ($result) {
//     echo json_encode("Success");
//   } else {
//     echo json_encode("Failed");
//   }
// } else {
//   echo json_encode("No Data Sent");
// }


// UNTUK JSON
// header('Content-Type: application/json');
// include('db.php');

// // Mengambil data dari body permintaan
// $data = json_decode(file_get_contents("php://input"));

// if (isset($data->id) && isset($data->title) && isset($data->content)) {
//   $id = $data->id;
//   $title = $data->title;
//   $content = $data->content;
//   $result = mysqli_query($db, "UPDATE blog SET title = '{$title}', content = '{$content}' WHERE id = {$id}");
//   if ($result) {
//     echo json_encode("Success");
//   } else {
//     echo json_encode("Failed");
//   }
// } else {
//   echo json_encode("No Data Sent");
// }
