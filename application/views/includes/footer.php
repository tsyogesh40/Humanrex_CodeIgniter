

    <footer class="main-footer">
        <div>
          <button style="display: block; margin: 0 auto;" type="button" class="btn btn-primary btn-lg" id="print">Print</button>
        </div>
        <br />
        <div class="pull-right hidden-xs">
          <b>HumanRex</b> Version 1.0
        </div>
        <strong>Copyright &copy; 2018-2019 <a href=""></a>.</strong> All rights reserved.
    </footer>

    <!-- jQuery UI 1.11.2 -->
    <!-- <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.min.js" type="text/javascript"></script> -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 3.3.2 JS -->
    <script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>assets/dist/js/app.min.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>assets/js/jquery.validate.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>assets/js/validation.js" type="text/javascript"></script>
    <script src="<?php echo base_url(); ?>assets/js/print.js" type="text/javascript"></script>

    <script type="text/javascript">
        var windowURL = window.location.href;
        pageURL = windowURL.substring(0, windowURL.lastIndexOf('/'));
        var x= $('a[href="'+pageURL+'"]');
            x.addClass('active');
            x.parent().addClass('active');
        var y= $('a[href="'+windowURL+'"]');
            y.addClass('active');
            y.parent().addClass('active');

        $('#print').click(function(){
          var printElm = $('.print-this');
          if(printElm.length == 0) {
            alert("Nothing to print!"); return;
          }
          printElm.printThis({
            header:'<h3 style="text-align:center;">Velammal College Of Engineering & Technology<h3>'
          });
        });
    </script>
  </body>
</html>
