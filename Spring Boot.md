
## Spring Boot 配置

### 一、JAVA安装

**环境变量**：
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209163836.png)

### 二、Maven安装

> 参考： http://www.cnblogs.com/wkrbky/p/6350334.html?utm_source=itdadao&utm_medium=referral

[Maven官网](http://maven.apache.org/download.cgi)

1. 下载下图文件，将它解压到你要安装 Maven 的文件夹。

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209164109.png)

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209164223.png)


2. 添加环境变量 `M2_HOME` `MAVEN_HOME`

添加 `M2_HOME` 和 `MAVEN_HOME` 环境变量到 Windows 环境变量，并将其指向你的 Maven 文件夹。

> `M2_HOME` 或 `MAVEN_HOME`
> Maven 说只是添加 `M2_HOME` , 但一些项目仍引用 Maven 的文件夹`MAVEN_HOME`, 因此，为了安全也把它添加进去。

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209164358.png)

3. 添加到 `PATH`

更新 `PATH` 变量，添加 Maven `bin` 文件夹到 `PATH` 的最后，如： `%M2_HOME%\bin`, 这样就可以在命令中的任何目录下运行 Maven 命令了。

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209164505.png)

4. 验证是否成功添加环境变量

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209164552.png)

如果你看到类似消息，说明 Apache Maven 在 Windows 上已安装成功。

### 三、配置 Maven 本地仓库

1. 创建一个仓库文件夹 `maven-repository` ，该目录用作maven的本地库。

2. 打开 Maven 安装目录下 `\conf\settings.xml` 文件，修改下面代码。`localRepository` 节点默认是被注释掉的，需要把它移到注释之外，然后将 `localRepository` 节点的值改为我们设定的文件夹。

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209165428.png)

> **`localRepository` 节点用于配置本地仓库。**
> 本地仓库其实起到了一个缓存的作用，它的默认地址是 C:\Users\用户名.m2。当我们从 maven 中获取 jar 包的时候，maven 首先会在本地仓库中查找，如果本地仓库有则返回；如果没有则从远程仓库中获取包，并在本地库中保存。
> 此外，我们在 maven 项目中运行 mvn install，项目将会自动打包并安装到本地仓库中。

4. 运行一下DOS命令
` mvn help:system `
如果前面的配置成功，那么 `maven-repository` 文件夹会出现一些文件。

### 四、IntelliJ 配置 Maven

1. 点击 Settings
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209164942.png)

2. 找到 `Build,Execution,Deployment–>Builds Tools–>Maven`

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209170337.png)

修改标红处为上面配置的路径。

3. 打开maven下的importing页面，勾选右面Sources和Documentation即可。 
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181209171120.png)

### 四、创建 Spring Boot + Mybatis 工程

1. 创建新工程
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216204426.png)

2. 选择Spring框架与JDK版本
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216204516.png)

3. 添加项目名
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216204610.png)

4. 选择使用的依赖，需要选择 Web 下的 Web 与 SQL 下的 Mybatis 
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216204705.png)

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216204719.png)

5. 点击下一步下一步，项目创建成功。第一次创建项目需要下载一些依赖，_如果科学上网了，速度会更快_
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216205441.png)

### 五、项目目录介绍

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216210417.png)

### 六、运行项目
1. 修改主程序，配置属性`@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)`，否则会报错

```

Description:

Failed to configure a DataSource: 'url' attribute is not specified and no embedded datasource could be configured.

Reason: Failed to determine a suitable driver class


Action:

Consider the following:
	If you want an embedded database (H2, HSQL or Derby), please put it on the classpath.
	If you have database settings to be loaded from a particular profile you may need to activate it (no profiles are currently active).


Process finished with exit code 1

```

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216211553.png)

2. 编写hello模块，测试是否运行成功

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216211730.png)

3. 运行结果
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216211829.png)

4. 修改端口

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216211957.png)

5. 修改上下文（路径中添加前缀）
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216212117.png)

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216212209.png)

在8082端口，且必须添加card才可以访问。

### 七、连接数据库

1. 配置 `pom.xml`
添加 mysql 驱动
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216221921.png)

2. 配置 `mybatis-config.xml`
① 创建 `mybatis-config.xml`
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216222116.png)

② 去 [](http://www.mybatis.org/mybatis-3/zh/getting-started.html)复制xml的模板
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216222339.png)
```
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
  PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
  "http://mybatis.org/dtd/mybatis-3-config.dtd">
<configuration>
  <environments default="development">
    <environment id="development">
      <transactionManager type="JDBC"/>
      <dataSource type="POOLED">
        <property name="driver" value="${driver}"/>
        <property name="url" value="${url}"/>
        <property name="username" value="${username}"/>
        <property name="password" value="${password}"/>
      </dataSource>
    </environment>
  </environments>
  <mappers>
    <mapper resource="org/mybatis/example/BlogMapper.xml"/>
  </mappers>
</configuration>
```
然后进行修改

```
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org//DTD Config 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-config.dtd">
<configuration>
    <!-- 配置全局属性 -->
    <settings>
        <!-- 使用jdbc的getGeneratedKeys获取数据库自增主键值 -->
        <setting name="useGenerateKeys" value="true"/>

        <!-- 使用列标签替换列别名，默认true -->
        <setting name="useColumnLabel" value="true"/>

        <!-- 开启驼峰命名转换 -->
        <setting name="mapUnderscoreToCamelCase" value="true"/>
    </settings>
</configuration>
```

3. 对数据库DAO层做相关配置

① 创建config包，config文件夹下创建dao包，即对DAO层做配置

![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216223126.png)

② 创建`DataSourceConfiguration`类
![](https://liysuzy-1257377207.cos.ap-beijing.myqcloud.com/HexoImg/20181216224234.png)
```
package com.liysuzy.card.config.dao;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.beans.PropertyVetoException;

@Configuration
// 配置mybatis mapper的扫描路径
@MapperScan("com.liysuzy.card.dao")
public class DataSourceConfiguration {
    @Value("${jdbc.driver")
    private String jdbcDriver;
    @Value("${jdbc.url")
    private String jdbcUrl;
    @Value("${jdbc.username")
    private String jdbcUsername;
    @Value("${jdbc.password")
    private String jdbcPassword;

    /* 连接池 */
    @Bean(name = "dataSource")
    public ComboPooledDataSource createDataSource() throws PropertyVetoException {
        ComboPooledDataSource dataSource = new ComboPooledDataSource();
        dataSource.setDriverClass(jdbcDriver);
        dataSource.setJdbcUrl(jdbcUrl);
        dataSource.setUser(jdbcUsername);
        dataSource.setPassword(jdbcPassword);
        // 关闭连接后不自动commit
        dataSource.setAutoCommitOnClose(false);
        return dataSource;
    }
}


```