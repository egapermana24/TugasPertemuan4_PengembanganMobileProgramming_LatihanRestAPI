<?php
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
include('db.php');


// JIKA YANG DIKIRIM BERUPA FORM-DATA atau x-www-form-urlencoded
if (!isset($_POST['title']) && !isset($_POST['content'])) {
  echo json_encode("No Data Sent");
} else {
  $title = $_POST['title'];
  $content = $_POST['content'];
  htmlspecialchars($title);
  htmlspecialchars($content);
  $result = mysqli_query($db, "INSERT INTO blog (title, content) VALUES
('{$title}','{$content}')");
  if ($result) {
    echo json_encode("Success");
  } else {
    echo json_encode("Failed");
  }
}

  // JIKA YANG DIKIRIM BERUPA JSON
  // $data = json_decode(file_get_contents("php://input"));
  // if (!empty($data->title) && !empty($data->content)) {
  //   $title = $data->title;
  //   $content = $data->content;
  //   $result = mysqli_query($db, "INSERT INTO blog (title, content) VALUES ('{$title}','{$content}')");
  //   if ($result) {
  //     echo json_encode("Success");
  //   } else {
  //     echo json_encode("Failed");
  //   }
  // } else {
  //   echo json_encode("No Data Sent");
  // }