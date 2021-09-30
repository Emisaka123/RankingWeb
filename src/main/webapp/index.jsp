<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <title>排行榜信息填写</title>
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
</head>
<body>
<form class="layui-form" action="newUser" method="get"> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
    <div class="layui-form-item">
        <label class="layui-form-label">学号</label>
        <div class="layui-input-block">
            <input type="text" name="sno" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
            <input type="text" name="name" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
        <br>
        <div style="text-align: center;"><label >以下均填各个oj的用户id</label></div>
        <br>
        <label class="layui-form-label">zzulioj</label>
        <div class="layui-input-block">
            <input type="text" name="id_zzulioj" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
        <label class="layui-form-label">codefroces</label>
        <div class="layui-input-block">
            <input type="text" name="id_codeforces" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
        <label class="layui-form-label">牛客</label>
        <div class="layui-input-block">
            <input type="text" name="id_nowcoder" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
        <label class="layui-form-label">nyoj</label>
        <div class="layui-input-block">
            <input type="text" name="id_nyoj" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
        <label class="layui-form-label">fuquanoj</label>
        <div class="layui-input-block">
            <input type="text" name="id_fuquanoj" placeholder="请输入" autocomplete="off" class="layui-input">
        </div>



    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="*">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
    <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
</form>
<script src="layui/layui.js"></script>
<script>
    layui.use('form', function () {
        var form = layui.form;
        //各种基于事件的操作，下面会有进一步介绍
    });
</script>
</body>
</html>