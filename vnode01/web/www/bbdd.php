<?php
	$con = mysqli_connect('172.19.0.3','root','roger00','webtest');
	if (!$con) {
		die('Error en connectar a la bbdd (' . mysqli_connect_errno() . ') '. mysqli_connect_error());
	}
	echo "Connexi&oacute; ok...<br />";
	echo "MySQL host info: " . mysqli_get_host_info($con) . '<br />';
	if ($resultat = mysqli_query($con, "select * from ids limit 1")) {
		echo 'Nombre de files: ' . $resultat->num_rows;
	}
	else {
		die('Error en fer consulta a la bbdd (' . mysqli_query_errno() . ') ' . mysqli_query_error());
	}
?>