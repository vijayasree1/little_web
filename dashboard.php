<!-- Content Header (Page header) -->
<center><br>
	<img src="littleapp.png" alt="Best Deals in India" align="center" height="80px" width="80px">
</center>
<section class="content-header">
		<h1 align="center">Fantastic Deals Around You</h1>
		<h6 align="center" style="color:black">Little App helps you discover great places to eat around or de-stress in all major cities across 20000+ merchants. Explore restaurants, spa & salons and activities to find your next fantastic deal.</h6>
</section>


<section class="content-header">
	<center>
		<h1>Select Your City</h1>
	</center>
</section>

<section class="content">
<?php
$url = "http://127.0.0.1:8000/";
$headers = array(
    "accept" => "application/json"
);

// Curl Get
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_URL, $url . 'city');
curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$contents = curl_exec($ch);
curl_close($ch);
$data = json_decode($contents);

/*
 * CURL POST
 * $url = "http://www.example.com/";
 * $ch = curl_init($url);
 * curl_setopt($ch, CURLOPT_HEADER, false);
 * curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
 * curl_setopt($ch, CURLOPT_POST, true);
 *
 * $data = array(
 * 'username' => 'foo',
 * 'password' => 'bar'
 * );
 *
 * curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
 * $contents = curl_exec($ch);
 * curl_close($ch);
 */

foreach ($data as $result) {
    
    echo '<div class="col-lg-4 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>'.$result->city_name.'</h3>

              <p>New Offers</p>
            </div>
            <a href="index.php?page=deals&city='.$result->city_name.'" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
';
}

?>
	<!-- /.box -->
</section>
<script type="text/javascript">
if(window.Notification && Notification.permission !== "denied") {
	Notification.requestPermission(function(status) {  // status is "granted", if accepted by user
		var n = new Notification('Little', { 
			body: 'Thank you for subscribing to little app',
			icon: 'littleapp.png' // optional
		}); 
	});
	n.close();
}
else
{alert("Hai");
	}
<!--

//-->
</script>
