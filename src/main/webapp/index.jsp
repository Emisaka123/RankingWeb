
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>测试 - layui</title>
    <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body>

<div class="layui-container">
    <div class="layui-progress" style="margin: 15px 0 30px;">
        <div class="layui-progress-bar" lay-percent="100%"></div>
    </div>


    <div class="layui-btn-container">
        <button class="layui-btn" test-active="test-form">一个按钮</button>
        <button class="layui-btn layui-btn-normal" id="test2">当前日期</button>
    </div>

    <blockquote class="layui-elem-quote" style="margin-top: 30px;">
        <div class="layui-text">
            <ul>
                <li>你当前预览的是：<span>layui-v<span id="version"></span></span></li>
                <li>layui 是一套开源的 Web UI（界面）组件库。这是一个极其简洁的演示页面</li>
            </ul>
        </div>
    </blockquote>
</div>



<!-- 引入 layui.js 的 <script> 标签最好放置在 html 末尾 -->
<script src="layui/layui.js"></script>
<script>
    layui.use(function(){
        var layer = layui.layer
            ,form = layui.form
            ,laypage = layui.laypage
            ,element = layui.element
            ,laydate = layui.laydate
            ,util = layui.util;

        //欢迎信息
        layer.msg('Hello World');

        //输出版本号
        lay('#version').html(layui.v);

        //日期
        laydate.render({
            elem: '#test2'
            ,value: new Date()
            ,isInitValue: true
        });

        //触发事件
        util.event('test-active', {
            'test-form': function(){
                layer.open({
                    type: 1
                    ,resize: false
                    ,shadeClose: true
                    ,area: '350px'
                    ,title: 'layer + form'
                    ,content: ['<ul class="layui-form layui-form-pane" style="margin: 15px;">'
                        ,'<li class="layui-form-item">'
                        ,'<label class="layui-form-label">输入框</label>'
                        ,'<div class="layui-input-block">'
                        ,'<input class="layui-input" lay-verify="required" name="field1">'
                        ,'</div>'
                        ,'</li>'
                        ,'<li class="layui-form-item">'
                        ,'<label class="layui-form-label">选择框</label>'
                        ,'<div class="layui-input-block">'
                        ,'<select name="field2">'
                        ,'<option value="A">A</option>'
                        ,'<option value="B">B</option>'
                        ,'<select>'
                        ,'</div>'
                        ,'</li>'
                        ,'<li class="layui-form-item" style="text-align:center;">'
                        ,'<button type="submit" lay-submit lay-filter="*" class="layui-btn">提交</button>'
                        ,'</li>'
                        ,'</ul>'].join('')
                    ,success: function(layero, index){
                        layero.find('.layui-layer-content').css('overflow', 'visible');

                        form.render().on('submit(*)', function(data){
                            layer.msg(JSON.stringify(data.field), {icon: 1});
                            //layer.close(index); //关闭层
                        });
                    }
                });
            }
        });
    });
</script>
</body>
</html>
