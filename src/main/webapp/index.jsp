<!DOCTYPE html>
<html>
<head>
    <meta charset="gb2313">
    <title>tableģ�����ʹ��</title>
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
</head>
<body>

<table id="demo" lay-filter="test"></table>

<script src="layui/layui.js"></script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        //��һ��ʵ��
        table.render({
            elem: '#demo'
            ,height: 312
            ,url: 'data.json' //���ݽӿ�
            ,page: false //������ҳ
            ,cols: [[ //��ͷ
                // {field: 'id', title: 'ID', width:100, sort: true, fixed: 'left'},
                {field: 'sno', title: 'ѧ��', width:120, sort: true, fixed: 'left'}
                ,{field: 'name', title: '����', width:100}
                ,{field: 'totSolve', title: '������', width:100, sort: true}
                ,{field: 'solve_zzulioj', title: 'zzulioj����', width:130, sort: true}
                ,{field: 'solve_codeforces', title: 'codeforces����', width:130, sort: true}
                ,{field: 'rating_codeforces', title: 'codeforces rating', width:130, sort: true}
                ,{field: 'solve_nowcoder', title: 'ţ������', width:130, sort: true}
                ,{field: 'solve_nyoj', title: 'nyoj����', width:130, sort: true}
                ,{field: 'solve_fuquanoj', title: 'fuquanoj����', width:130, sort: true}
                // ,{field: 'username', title: '�û���', width:100}
                // ,{field: 'sex', title: '�Ա�', width:100, sort: true}
                // ,{field: 'city', title: '����', width:100}
                // ,{field: 'sign', title: 'ǩ��', width: 177}
                // ,{field: 'experience', title: '����', width: 80, sort: true}
                // ,{field: 'score', title: '����', width: 80, sort: true}
                // ,{field: 'classify', title: 'ְҵ', width: 80}
                // ,{field: 'wealth', title: '�Ƹ�', width: 135, sort: true}
            ]]
        });

    });
</script>
</body>
</html>

<!--{field: 'sno', title: 'ѧ��', width:100, sort: true, fixed: 'left'}-->
