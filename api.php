<?php
header("Content-Type: application/json");
include "db.php";

$method = $_SERVER['REQUEST_METHOD'];

// อ่านพารามิเตอร์ id จาก URL ถ้ามี
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

switch($method) {
    case 'GET':
        if ($id > 0) {
            $result = $conn->query("SELECT * FROM shoes WHERE shoe_id=$id");
            echo json_encode($result->fetch_assoc());
        } else {
            $result = $conn->query("SELECT * FROM shoes");
            $rows = [];
            while($row = $result->fetch_assoc()) {
                $rows[] = $row;
            }
            echo json_encode($rows);
        }
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"), true);
        $name = $data['shoe_name'];
        $brand = $data['brand'];
        $category = $data['category'];
        $size = $data['size'];
        $price = $data['price'];
        $stock = $data['stock'];

        $sql = "INSERT INTO shoes (shoe_name, brand, category, size, price, stock)
                VALUES ('$name', '$brand', '$category', $size, $price, $stock)";
        if ($conn->query($sql)) {
            echo json_encode(["success" => true, "id" => $conn->insert_id]);
        } else {
            echo json_encode(["error" => $conn->error]);
        }
        break;

    case 'PUT':
        if ($id > 0) {
            $data = json_decode(file_get_contents("php://input"), true);
            $name = $data['shoe_name'];
            $brand = $data['brand'];
            $category = $data['category'];
            $size = $data['size'];
            $price = $data['price'];
            $stock = $data['stock'];

            $sql = "UPDATE shoes SET shoe_name='$name', brand='$brand', category='$category', 
                    size=$size, price=$price, stock=$stock WHERE shoe_id=$id";
            if ($conn->query($sql)) {
                echo json_encode(["success" => true]);
            } else {
                echo json_encode(["error" => $conn->error]);
            }
        }
        break;

    case 'DELETE':
        if ($id > 0) {
            $sql = "DELETE FROM shoes WHERE shoe_id=$id";
            if ($conn->query($sql)) {
                echo json_encode(["success" => true]);
            } else {
                echo json_encode(["error" => $conn->error]);
            }
        }
        break;

    default:
        echo json_encode(["error" => "Method not allowed"]);
        break;
}
?>
