# actuarial-system
基于大数据技术的保险精算系统开发

## task 1
熟悉项目的结构，完成部分ssm转django的转换（可参考ICseller,Login,news,PIBuy）详细规则如下

> 1. 将templates 目录下的AboutUs,BuyerManager,Customer,DepartmentManager,Finance,HomePage文件夹下的html页面转换为符合diango规范的模板文件，转换的主要工作包括：
>
>    - 静态文件css、js、images转换为static 引入的方式，其中资源文件放在static 目录下，资源初步比较混乱，若找不到相关文件在之前发的first(2)压缩包里应该有，其次在转换的时候尽可能把资源文件归类，可以建一个新的目录来存放，把看起来像自己写的资源文件放在自己建的文件夹下，对于网络上公用的资源文件，例如layui.js , jquery.js 则放在public目录下。新建目录时以APP的名字为目录名，尽可能把资源文件归类。
>
>      ```html
>      原：<h2><img src="/images/LXX.png" class="icon">
>      后：<h2><img src="{% static 'images/PIBuy/LXX.png' %}" class="icon">  
>      ```
>
>      
>
>    - html页面中url 的转换
>
>      ```html
>      原：<li><a href="/Aboutus/toAbout">关于北平</a></li>
>      后：<li><a href="{% url 'aboutus:about' %}">关于北平</a></li>
>      ```

#### point

尽可能将自己负责的模板的资源文件归类

#### 分工：

> 蒋黎明：templates/Customer目录
>
> 祝康：../AboutUs、DepartmentManager、Finance
>
> 申霖：../Homepage、boss、BuyerManager

​				