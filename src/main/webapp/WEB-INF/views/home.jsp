<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CRM-客户关系管理系统</title>

    <!-- Bootstrap Core CSS -->
    <link href="./static/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="./static/js/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="./static/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="./static/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="static/js/morris/morris.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<!-- jQuery -->
<script src="./static/js/jquery.min.js"></script>

<div id="wrapper">

    <%@ include file="include/nav.jsp"%>
    <div id="main" /> 

</div>
<!-- /#wrapper -->


<!-- Bootstrap Core JavaScript -->
<script src="./static/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="./static/js/metisMenu/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="./static/js/sb-admin-2.js"></script>
<script src="./static/js/morris/raphael-min.js"></script>
<script src="./static/js/morris/morris.min.js"></script>
<%-- DataTables JS--%>
<script src="./static/js/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="./static/js/datatables/media/js/dataTables.bootstrap.min.js"></script>
<script src="./static/js/jquery.twbsPagination.min.js"></script>
<script src="static/js/datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="static/js/datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>

<script src="http://apps.bdimg.com/libs/underscore.js/1.7.0/underscore-min.js"></script>
<script src="http://apps.bdimg.com/libs/backbone.js/1.1.2/backbone.js"></script>
<!-- <script src="http://apps.bdimg.com/libs/backbone.js/1.1.2/backbone-min.js"></script> -->
<script>
    $(function(){        
        
        // add on 2018.1.31
        window.APP = window.APP || {};
        APP.CrmRouter = Backbone.Router.extend({
        	  routes: {
        		"":"chart",  
        		"home":"chart",
        		"charter":"chart",
        		"account":"account",
        		"progress":"progress",
        		"customer":"customer",
        		"customer/:id":"viewCustomer",
        		"task":"task"
        	  },

        	  $container: $('#main'),

        	  initialize: function () {
        	    //this.collection = new APP.NoteCollection();
        	    //this.collection.fetch({ajaxSync: false});
        	    //APP.helpers.debug(this.collection);
        	    this.chart();
        	    // start backbone watching url changes
        	    Backbone.history.start();
        	  },
        	  
        	  chart:function(){
        		  this.$container.load("./report/chart");
        	  },
        	  account:function(){
        		  this.$container.load("./account");
        	  },
        	  customer : function(){
        		  this.$container.load("./customer");
        	  },
        	  viewCustomer : function(id){
        		  this.$container.load("./customer/"+id);
        	  },
        	  progress : function(){
        		  this.$container.load("./progress");
        	  },
        	  task : function(){
        		  this.$container.load("./task");
        	  }

        });
        
        var app=new APP.CrmRouter();
        	  
        
    });
</script>

</body>

</html>
