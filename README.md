
【海报】


# 项目介绍

本期给大家介绍一个基于SpringBoot+VUE的 房屋租赁管理系统。只有后台管理部分，有管理员和租客两种角色。没有太多复杂功能，涵盖了SpringBoot集成Mysql 数据库，实现了基本新增,查询,修改,删除功能。初学者可以拿来练手学习，非常不错。

**技术栈:**

* 后端:  SpringBoot +Mybatis
* 数据库 : MySQL 5
* 前端:  VUE + ElementUI

**开发环境依赖：**
* MySQL 5 数据库
* JDK1.8
* Maven 3
* IDEA
* Node 16+

## 一 业务介绍

本系统分为以下几个模块：

### 管理员登录
![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211549712.png)


### 1.房屋信息管理
- 可以新增房屋,设置地点,价格，出租状态，详情，租客等。
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211551918.png)
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211554114.png)


### 2.租金管理
- 添加租金信息,可以输入 租客姓名,地址,金额,缴纳日期，实际缴纳日期，缴纳状态等。
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211556804.png)
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211556293.png)

### 3 故障管理
- 故障管理模块可以查看租客上报的房屋故障信息,进行处理
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211558914.png)
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211558335.png)

### 新闻公告管理

- 新闻公告可以发布新闻告知租客相关信息,提示缴纳租金等
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211559027.png)
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211600879.png)

### 用户管理
- 用户管理可以添加租客设置角色
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211601607.png)

> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211600555.png)

### 租客登录
- 租客登录后可以查看房屋信息,故障申报等。
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211603328.png)

## 二 技术介绍
### 1.技术栈

* 后端:  SpringBoot +Mybatis
* 数据库 : MYSQL
* 前端:  VUE + ElementUI

### 2.代码介绍
![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211607161.png)

### 三 Quick Start

### 1. 环境准备
* MYSQL 5
* JDK1.8
* Maven 3
* IDEA
* Node 16+

> 以上环境需要准备好, 在自己的本地搭建好,方可进行下面步骤
### 2. 下载源码

关注微信公众号: **ITSource 每日分享**,回复 `0021` 获取源码

### 3. 后端部署

- Step1: 下载源码
- Step2: IDEA 打开项目
- Step3: 安装 Maven 依赖
- Step4: 配置检查
> 数据库配置: 找到配置文件 `src/main/resources/application.yml` 修改数据库配置。
注意：**不需要手动创建数据库和初始化表结构，直接运行项目，会自动创建数据库，初始化SQL语句**
- Step4: 启动后端项目
> Idea 运行后端项目,看到以下信息,表示运行成功
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211609931.png)

### 4. 前端部署
打开终端,进入 前端项目目录:

- Step1: 安装npm依赖
> npm install
- Step2: 启动前端项目
> npm run serve
> 看到如下信息表示部署成功
> ![image.png](https://itguang.oss-cn-beijing.aliyuncs.com/202401211605710.png)

点击任何一个连接,即可跳转浏览器打开.

>登录:  输入账号密码: admin 88888888 即可登录成功!

## 下载源码

---
关注微信公众号: **ITSource 每日分享**,回复 `0021` 获取源码

---

**关注微信公众号 【ITSource每日分享】,免费获取一万个IT资源：项目源码，软件工具，面试面经，学习视频 应有尽有！！！!**

![关注 微信公众号 ! 获取更多学习资源呀](https://files.mdnice.com/user/6392/e3313449-2408-459e-b94a-960497837e17.jpg)

**更多资源推荐:**
- [ITSource 分享 第1期【问卷调查系统】](https://mp.weixin.qq.com/s/KE7jOCpvbLVddVnu81fg9A)
- [ITSource 分享 第2期【在线考试系统】](https://mp.weixin.qq.com/s/So2Nb20hotB3S0aQtqf1mQ)
- [ITSource 分享 第4期【简洁的问卷调查系统】](https://mp.weixin.qq.com/s/HeSGWxxU-bGoeONjyR6qsw)
- [ITSource 分享 第5期【校园信息墙系统】](https://mp.weixin.qq.com/s/oA0Mbz3c4q1ziQbHvr72dg)
- [ITSource 分享 第6期【网址云收藏系统】】](https://mp.weixin.qq.com/s/NddwJn9h2f5n6dY-spCFhQ)
- [ITSource 分享 第7期【小程序记账软件系统】](https://mp.weixin.qq.com/s/kRigevtP_EjpOS_Bw2UdZQ)
- [ITSource 分享 第8期【班级学生管理系统】](https://mp.weixin.qq.com/s/oJ-PEahVwQkwRwE8sINyZg)
- [ITSource 分享 第9期【学知识在线考试系统】】](https://mp.weixin.qq.com/s/euvjxBX3bVG71IF8yV_zJQ)
- [ITSource 分享 第10期【个人博客系统】](https://mp.weixin.qq.com/s/j5O3oi0Yc28v8ROomyR9_g)
- [ITSource 分享 第11期【简单的教务管理系统】](https://mp.weixin.qq.com/s/5AEgWPW1v0Y5Z77LGoMm1Q)
- [ITSource分享第12期【驾校理论课考试系统】](https://mp.weixin.qq.com/s/YpJXaGC5338ydeLCMBiLtg)
- [ITSource分享第13期【班级信息管理系统】](https://mp.weixin.qq.com/s/7FYxlXoKrb5r-nckcPlAWw)
- [ITSource分享第14期【电影院售票管理系统】](https://mp.weixin.qq.com/s/oRU1VtvB68Z1qJbuGIGrGw)

---
> 可付费二次开发,  定制, 一对一讲解, 有意可微信联系:  **itguangit**


