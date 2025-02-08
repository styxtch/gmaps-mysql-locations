<?php include_once('header.php'); ?>
      
      <div class="container overlap-section">
        <div class="row">
        <?php
    $sql = mysqli_query($con, "SELECT * FROM kategori");
    while(($data =  mysqli_fetch_assoc($sql))) {
    ?>
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0" data-aos="fade-up" data-aos-delay="400" >
            <a href="destination.php?id=<?=$data['id_type']?>" class="unit-1 text-center">
              <img src="<?=$data['gambar']?>" alt="Image" class="img-fluid">
              <div class="unit-1-text">
                <h3 class="unit-1-heading"><?=$data['nama_type']?></h3>
              </div>
            </a>
          </div>
          
          <?php
    }
    ?>
        </div>
      </div>
    
    </div>

              <div class="row text-center">
                <div class="col-md-12">
                  <p class="mb-0"><a href="index.php" class="btn btn-primary py-3 px-5 text-white">VIEW ALL</a></p>
                </div>
              </div>

    <div class="site-section border-top">
      <div class="container">
        <div class="row text-center">
          <?php
        $query = "SELECT * FROM kategori WHERE id_type = '$_GET[id]'";
    $sql = mysqli_query($con, $query);
    while(($data =  mysqli_fetch_assoc($sql))) {
    ?>
          <div class="col-md-12" data-aos="fade-up" data-aos-delay="400">
          <h2 class="mb-5 text-black"><?=$data['nama_type']?></h2>
          <?php
    }
    ?>
          <div id="dvMap" style="width: 1100px; height: 550px"></div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-blocks-cover overlay inner-page-cover" style="background-image: url(images/hero_bg_2.jpg); background-attachment: fixed;">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-7" data-aos="fade-up" data-aos-delay="400">
            <h2 class="text-white font-weight-light mb-5 h1">Experience Our Outstanding Services</h2>
            
          </div>
        </div>
      </div>
    </div> 
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="mb-5">
              <h3 class="footer-heading mb-4">About Travelers</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe pariatur reprehenderit vero atque, consequatur id ratione, et non dignissimos culpa? Ut veritatis, quos illum totam quis blanditiis, minima minus odio!</p>
            </div>

          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>

  <script type="text/javascript">
    var markers = [
    <?php
    $query = "SELECT * FROM tempa WHERE id_type = '$_GET[id]'";
    $sql = mysqli_query($con, $query);
    while(($data =  mysqli_fetch_assoc($sql))) {
    ?>
    {
                 "lat": '<?php echo $data['lat']; ?>',
         "long": '<?php echo $data['lang']; ?>',
         "alamat": '<?php echo $data['alamat']; ?>'
    },
    <?php
    }
    ?>
    ];
    </script>
    <script type="text/javascript">
        window.onload = function () {
            var mapOptions = {
            center: new google.maps.LatLng(-0.491831,117.145997),
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }; 
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i];
        var latnya = data.lat;
        var longnya = data.long;
        
        var myLatlng = new google.maps.LatLng(latnya, longnya);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.alamat
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent('<b>Lokasi</b> :' + data.alamat + '<br>');
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
    </script>
    
  </body>
</html>