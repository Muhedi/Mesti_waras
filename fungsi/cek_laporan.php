<?php 
	include "../koneksi.php";
	if(@$_GET['page']=='laporan_pembelian'){
		$ket_periode = "";
		$periode_lap = @$_POST['periode_lap'];
		$id_supplier = @$_POST['nm_supplier'];
		$status_byr = @$_POST['status_pbl'];
		if($id_supplier == "semua") {
			$id_supplier = "%";
			$ket_supp = "Semua";
		} else {
			$ket_supp = $id_supplier;
		}

		if($status_byr == "semua") {
			$status_byr = "%";
			$ket_status = "Semua";
		} else {
			$ket_status = $status_byr;
		}

		if($periode_lap == "hari_ini") {
			$ket_periode = date('d M Y');
			$query = "SELECT * FROM pembelian INNER JOIN supplier ON pembelian.id_supplier = supplier.id_supplier WHERE pembelian.tgl_pembelian = CURDATE() AND supplier.id_supplier LIKE '$id_supplier' AND pembelian.status_byr  LIKE '$status_byr' ORDER BY pembelian.tgl_pembelian ASC";
		} else if($periode_lap == "bulan_ini") {
			$ket_periode = date('F Y');
			$query = "SELECT * FROM pembelian INNER JOIN supplier ON pembelian.id_supplier = supplier.id_supplier WHERE MONTH(pembelian.tgl_pembelian) = MONTH(CURDATE()) AND supplier.id_supplier LIKE '$id_supplier' AND pembelian.status_byr  LIKE '$status_byr' ORDER BY pembelian.tgl_pembelian ASC";
		} else if($periode_lap == "tahun_ini") {
			$ket_periode = "tahun ".date('Y');
			$query = "SELECT * FROM pembelian INNER JOIN supplier ON pembelian.id_supplier = supplier.id_supplier WHERE YEAR(pembelian.tgl_pembelian) = YEAR(CURDATE()) AND supplier.id_supplier LIKE '$id_supplier' AND pembelian.status_byr  LIKE '$status_byr' ORDER BY pembelian.tgl_pembelian ASC";
		} else if($periode_lap == "pertanggal") {
			$cek_tgl = @$_POST['tgl_akhir'];
			$tgl_awal = @$_POST['per_tanggal1'];
			if($cek_tgl == "yes") {
				$tgl_akhir = @$_POST['per_tanggal2'];
				$ket_periode = tgl_indo($tgl_awal)." sd ".tgl_indo($tgl_akhir);
				$query = "SELECT * FROM pembelian INNER JOIN supplier ON pembelian.id_supplier = supplier.id_supplier WHERE (pembelian.tgl_pembelian BETWEEN '$tgl_awal' AND '$tgl_akhir') AND supplier.id_supplier LIKE '$id_supplier' AND pembelian.status_byr LIKE '$status_byr' ORDER BY pembelian.tgl_pembelian ASC";
			} else {
				$ket_periode = tgl_indo($tgl_awal);
				$query = "SELECT * FROM pembelian INNER JOIN supplier ON pembelian.id_supplier = supplier.id_supplier WHERE pembelian.tgl_pembelian = '$tgl_awal' AND supplier.id_supplier LIKE '$id_supplier' AND pembelian.status_byr LIKE '$status_byr' ORDER BY pembelian.tgl_pembelian ASC";
			}
		} else if($periode_lap == "perbulan") {
			$cek_bln = @$_POST['bulan_akhir'];
			$bulan1 = @$_POST['per_bulan1'];
			$tahunbulan1 = @$_POST['tahun_perbulan1'];
			if($cek_bln == "yes") {
				$bulan2 = @$_POST['per_bulan2'];
				$tahunbulan2 = @$_POST['tahun_perbulan2'];
				$tgl_awal = $tahunbulan1."-".$bulan1."-01";
				$tgl_akhir = $tahunbulan2."-".$bulan2."-31";
				$ket_periode = bulan_indo($bulan1)." ".$tahunbulan1." sd ".bulan_indo($bulan2)." ".$tahunbulan2;
				$query = "SELECT * FROM pembelian INNER JOIN supplier ON pembelian.id_supplier = supplier.id_supplier WHERE (pembelian.tgl_pembelian BETWEEN '$tgl_awal' AND '$tgl_akhir') AND supplier.id_supplier LIKE '$id_supplier' AND pembelian.status_byr LIKE '$status_byr' ORDER BY pembelian.tgl_pembelian ASC";
			} else {
				$ket_periode = bulan_indo($bulan1)." ".$tahunbulan1;
				$query = "SELECT * FROM pembelian INNER JOIN supplier ON pembelian.id_supplier = supplier.id_supplier WHERE (MONTH(pembelian.tgl_pembelian) = '$bulan1' AND YEAR(pembelian.tgl_pembelian) = '$tahunbulan1') AND supplier.id_supplier LIKE '$id_supplier' AND pembelian.status_byr  LIKE '$status_byr' ORDER BY pembelian.tgl_pembelian ASC";
			}
		} else if($periode_lap == "pertahun") {
			$cek_thn = @$_POST['tahun_akhir'];
			$per_tahun1 = @$_POST['per_tahun1'];
			if($cek_thn == "yes") {
				$per_tahun2 = @$_POST['per_tahun2'];
				$ket_periode = "tahun ".$per_tahun1." sd ".$per_tahun2;
				$query = "SELECT * FROM pembelian INNER JOIN supplier ON pembelian.id_supplier = supplier.id_supplier WHERE (YEAR(pembelian.tgl_pembelian) BETWEEN '$per_tahun1' AND '$per_tahun2') AND supplier.id_supplier LIKE '$id_supplier' AND pembelian.status_byr LIKE '$status_byr' ORDER BY pembelian.tgl_pembelian ASC";
			} else {
				$ket_periode = "tahun ".$per_tahun1;
				$query = "SELECT * FROM pembelian INNER JOIN supplier ON pembelian.id_supplier = supplier.id_supplier WHERE YEAR(pembelian.tgl_pembelian) = '$per_tahun1' AND supplier.id_supplier LIKE '$id_supplier' AND pembelian.status_byr LIKE '$status_byr' ORDER BY pembelian.tgl_pembelian ASC";
			}
		}
		$sql = mysqli_query($conn, $query) or die ($conn->error);
		$rows = mysqli_num_rows($sql);
		if($rows>0) {
			echo "ada";
		} else {
			echo "kosong";
		}
	} 

	else if(@$_GET['page']=='laporan_penjualan'){
		$ket_periode = "";
		$periode_lap = @$_POST['periode_lap'];
		$pegawai = @$_POST['nm_peg'];
		if($pegawai == "semua") {
			$pegawai = "%";
			$ket_pegawai = "Semua";
		} else {
			$ket_pegawai = $pegawai;
		}
		if($periode_lap == "hari_ini") {
			$ket_periode = date('d M Y');
			$query = "SELECT * FROM penjualan INNER JOIN pegawai ON penjualan.id_peg = pegawai.id_peg WHERE penjualan.tgl_penjualan = CURDATE() AND pegawai.username LIKE '$pegawai' ORDER BY penjualan.tgl_penjualan ASC";
		} else if($periode_lap == "bulan_ini") {
			$ket_periode = date('F Y');
			$query = "SELECT * FROM penjualan INNER JOIN pegawai ON penjualan.id_peg = pegawai.id_peg WHERE (MONTH(penjualan.tgl_penjualan) = MONTH(CURDATE()) AND YEAR(penjualan.tgl_penjualan) = YEAR(CURDATE())) AND pegawai.username LIKE '$pegawai' ORDER BY penjualan.tgl_penjualan ASC";
		} else if($periode_lap == "tahun_ini") {
			$ket_periode = "tahun ".date('Y');
			$query = "SELECT * FROM penjualan INNER JOIN pegawai ON penjualan.id_peg = pegawai.id_peg WHERE YEAR(penjualan.tgl_penjualan) = YEAR(CURDATE()) AND pegawai.username LIKE '$pegawai' ORDER BY penjualan.tgl_penjualan ASC";
		} else if($periode_lap == "pertanggal") {
			$cek_tgl = @$_POST['tgl_akhir'];
			$tgl_awal = @$_POST['per_tanggal1'];
			if($cek_tgl == "yes") {
				$tgl_akhir = @$_POST['per_tanggal2'];
				$ket_periode = tgl_indo($tgl_awal)." sd ".tgl_indo($tgl_akhir);
				$query = "SELECT * FROM penjualan INNER JOIN pegawai ON penjualan.id_peg = pegawai.id_peg WHERE (penjualan.tgl_penjualan BETWEEN '$tgl_awal' AND '$tgl_akhir') AND pegawai.username LIKE '$pegawai' ORDER BY penjualan.tgl_penjualan ASC";
			} else {
				$ket_periode = tgl_indo($tgl_awal);
				$query = "SELECT * FROM penjualan INNER JOIN pegawai ON penjualan.id_peg = pegawai.id_peg WHERE penjualan.tgl_penjualan = '$tgl_awal' AND pegawai.username LIKE '$pegawai' ORDER BY penjualan.tgl_penjualan ASC";
			}
		} else if($periode_lap == "perbulan") {
			$cek_bln = @$_POST['bulan_akhir'];
			$bulan1 = @$_POST['per_bulan1'];
			$tahunbulan1 = @$_POST['tahun_perbulan1'];
			if($cek_bln == "yes") {
				$bulan2 = @$_POST['per_bulan2'];
				$tahunbulan2 = @$_POST['tahun_perbulan2'];
				$ket_periode = bulan_indo($bulan1)." ".$tahunbulan1." sd ".bulan_indo($bulan2)." ".$tahunbulan2;
				$query = "SELECT * FROM penjualan INNER JOIN pegawai ON penjualan.id_peg = pegawai.id_peg WHERE ((MONTH(penjualan.tgl_penjualan) BETWEEN '$bulan1' AND '$bulan2') AND (YEAR(penjualan.tgl_penjualan) BETWEEN '$tahunbulan1' AND '$tahunbulan2')) AND pegawai.username LIKE '$pegawai' ORDER BY penjualan.tgl_penjualan ASC";	
			} else {
				$ket_periode = bulan_indo($bulan1)." ".$tahunbulan1;
				$query = "SELECT * FROM penjualan INNER JOIN pegawai ON penjualan.id_peg = pegawai.id_peg WHERE (MONTH(penjualan.tgl_penjualan) = '$bulan1' AND YEAR(penjualan.tgl_penjualan) = '$tahunbulan1') AND pegawai.username LIKE '$pegawai' ORDER BY penjualan.tgl_penjualan ASC";
			}
		} else if($periode_lap == "pertahun") {
			$cek_thn = @$_POST['tahun_akhir'];
			$per_tahun1 = @$_POST['per_tahun1'];
			if($cek_thn == "yes") {
				$per_tahun2 = @$_POST['per_tahun2'];
				$ket_periode = "tahun ".$per_tahun1." sd ".$per_tahun2;
				$query = "SELECT * FROM penjualan INNER JOIN pegawai ON penjualan.id_peg = pegawai.id_peg WHERE (YEAR(penjualan.tgl_penjualan) BETWEEN '$per_tahun1' AND '$per_tahun2') AND pegawai.username LIKE '$pegawai' ORDER BY penjualan.tgl_penjualan ASC";
			} else {
				$ket_periode = "tahun ".$per_tahun1;
				$query = "SELECT * FROM penjualan INNER JOIN pegawai ON penjualan.id_peg = pegawai.id_peg WHERE YEAR(penjualan.tgl_penjualan) = '$per_tahun1' AND pegawai.username LIKE '$pegawai' ORDER BY penjualan.tgl_penjualan ASC";
			}
		}

		$sql = mysqli_query($conn, $query) or die ($conn->error);
		$rows = mysqli_num_rows($sql);
		if($rows>0) {
			echo "ada";
		} else {
			echo "kosong";
		}
	}
 ?>