<?php 
	include '../koneksi.php';

	if(@$_GET['page']=='penjualan') {
		$no_pjl = @mysqli_real_escape_string($conn, $_GET['no_pjl']);
		$query_lihat = "SELECT obat.nm_obat, detail_penjualan.hrg_jual, detail_penjualan.jml_jual, detail_penjualan.sat_jual, detail_penjualan.subtotal FROM detail_penjualan INNER JOIN obat ON detail_penjualan.kd_obat = obat.kd_obat WHERE detail_penjualan.id_penjualan = '$no_pjl'";
		$sql_lihat = mysqli_query($conn, $query_lihat) or die ($conn->error);
		$data = array();

		while($detail=mysqli_fetch_array($sql_lihat)) {
			$data[] = $detail;
		}
		echo json_encode($data);
	} 
	else if(@$_GET['page']=='pembelian') {
		$id_pembelian = @mysqli_real_escape_string($conn, $_GET['id_pembelian']);
		$query_lihat = "SELECT obat.nm_obat, detail_pembelian.hrg_beli, detail_pembelian.jml_beli, detail_pembelian.sat_beli, detail_pembelian.subtotal FROM detail_pembelian INNER JOIN obat ON detail_pembelian.kd_obat = obat.kd_obat WHERE detail_pembelian.id_pembelian = '$id_pembelian'";
		$sql_lihat = mysqli_query($conn, $query_lihat) or die ($conn->error);
		$data = array();

		while($detail=mysqli_fetch_array($sql_lihat)) {
			$data[] = $detail;
		}
		echo json_encode($data);
	}
	else if(@$_GET['page']=='pelunasan_pembelian') {
		$id_pembelian = @mysqli_real_escape_string($conn, $_POST['id_pembelian']);
		// $no_faktur = "tesss";
		$tgl_lunas = date('Y-m-d');
		$query_lunas = "UPDATE pembelian SET status_byr = 'Lunas', tgl_lunas = '$tgl_lunas' WHERE id_pembelian = '$id_pembelian'";
		mysqli_query($conn, $query_lunas) or die ($conn->error);
	}
	else if(@$_GET['page']=='expstok_obat') {
		$kd_obat = @mysqli_real_escape_string($conn, $_GET['kd_obat']);
		$query_expstok = "SELECT * FROM stok_obat WHERE kd_obat = '$kd_obat'";
		$sql_expstok = mysqli_query($conn, $query_expstok) or die ($conn->error);
		$data_expstok = array();

		while($data = mysqli_fetch_array($sql_expstok)) {
			$data_expstok[] = $data;
		}

		echo json_encode($data_expstok);
	}
 ?>