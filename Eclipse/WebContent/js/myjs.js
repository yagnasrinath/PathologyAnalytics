 function call_func(e) {
    
     $.ajax({
         url: 'QueryStatisticsServlet',
         cache: false,
         type: 'GET',
         data: "img_name" + "=" + e,
         async : false,
         success: function(js1) {
        	 //alert(js1);
             $("#myModal").modal('show');
         }
     });
 }