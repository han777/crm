   <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-header">
                        <h4><i class="fa fa-home"></i> 我的首页</h4>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">销售进展报告</div>
                        <div class="panel-body">
                            <div id="myfirstchart" style="height: 250px;"></div>
                        </div>
                    </div>



                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </div>
    <!-- /#page-wrapper -->
    
    <script>
    $(function(){
        Morris.Bar({
            element: 'myfirstchart',
            data: ${json},
            xkey: 'custtype',
            ykeys: ['total'],
            labels: ['total']
        }).on('click', function(i, row){
            console.log(i, row);
        });
    });
    </script>