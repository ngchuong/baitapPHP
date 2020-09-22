<html>
<header>
</header>
<body>
  <div>
    <form method="POST">
      <table border= "1">
        <tr>
          <th>STT</th>
          <th>Năm xuất bản</th>
          <th>Nhà xuất bản</th>
          <th>Tác giả</th>
          <th>Action</th>
        </tr>
        
        <?php
          $conn = new mysqli("localhost", "root", "", "baitap");
          $queryGetData = "SELECT * FROM tbl_nxb, tbl_sach WHERE tbl_nxb.ma_nxb = tbl_sach.manxb";
          if ($result = $conn->query($queryGetData)) {

            while ($row = $result->fetch_assoc()) {
              echo "<tr>";
              echo "<td>".$row['ma_sach']."</td>";
              echo "<td>".$row['namxb']."</td>";
              echo "<td>".$row['ten_nxb']."</td>";
              echo "<td>".$row['tacgia']."</td>";
              echo "<td>"."Action"."</td>";
              echo "</tr>";
            }
        
            $result->free();
        }
        
        ?>
      </table>
    </form>
  </div>
</body>
</html>
