# XDKitSpecs
存放XDKit相关的Specs

# Swift制作私有库 GitHub（图文详解）

##### 1.创建索引库，`XDKitSpecs`用于集中存放所有库的索引，勾选`Add a README file`这样就创建了一个初始化好了的库，如图：
![创建索引库](https://raw.githubusercontent.com/ywdonga/oss/main/202206151553262.png)
完成后的仓库，如图：
![索引库](https://raw.githubusercontent.com/ywdonga/oss/main/202206151557475.png)

##### 2.创建组件库，`XDUIExtension`用于存放组件，不要勾选Add a README file 也不要添加 Add .gitignore, 需要的是一个未初始化的仓库。
![创建组件库](https://raw.githubusercontent.com/ywdonga/oss/main/202206151548869.png)
完成后的仓库，如图：
![组件库](https://raw.githubusercontent.com/ywdonga/oss/main/202206151559165.png)
###### 3.在本地新建一个目录`Modules`，并在终端`cd`到该目录下，执行如图：
![创建目录](https://raw.githubusercontent.com/ywdonga/oss/main/202206151603854.png)
##### 4.执行`pod lib create XDUIExtension`，这样就自动生成了一个项目，如图：
![创建组件](https://raw.githubusercontent.com/ywdonga/oss/main/202206151605659.png)
生成项目的目录结构，如图：
![目录结构](https://raw.githubusercontent.com/ywdonga/oss/main/202206151608472.png)

##### 5.打开`Example/XDUIExtension.xcworkspace`项目，一般会自动打开，将`XDUIExtension.podspec`中的`s.homepage`和`s.source`替换成我们第2步创建的组件库地址，`s.homepage`记得去掉`.git`,如图：
![](https://raw.githubusercontent.com/ywdonga/oss/main/202206151609450.png)
##### 6.找到`Classes`目录，这里是放源码的地方，删除`ReplaceMe.swift`，将组件源码拖进去，如图：
![Classes目录](https://raw.githubusercontent.com/ywdonga/oss/main/202206151617432.png)
![拖入源码](https://raw.githubusercontent.com/ywdonga/oss/main/202206151621500.png)
###### 7.导入源码`cd`到`Example`目录，执行`pod install`，如图：
![导入源码](https://raw.githubusercontent.com/ywdonga/oss/main/202206151622098.png)
##### 8.此时项目的`Development Pods`目录中就能看到源码了，如图：
![](https://raw.githubusercontent.com/ywdonga/oss/main/202206151625394.png)
##### 9.上传组件源码，`cd`到组件所在目录`XDUIExtension`，按照顺序执行以下命令：
```
find . -name ".git" | xargs rm -Rf
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ywdonga/XDUIExtension.git
git push -u origin main
```
执行完成后，远程仓库目录结构，如图：
![](https://raw.githubusercontent.com/ywdonga/oss/main/202206151632353.png)
##### 10.打上`tag`版本号`0.1.0`和`XDUIExtension.podspec`文件中的`s.version`一定要保持一致
```
git tag 0.1.0
git push origin 0.1.0
```
##### 11.创建本地`Spec Repo`,索引地址就是第1步创建的索引仓库地址，执行命令：
`pod repo add XDKitSpecs https://github.com/ywdonga/XDKitSpecs.git`
##### 12.校验索引文件`.podspecs`，`cd`到`XDUIExtension`目录执行：
`pod lib lint XDUIExtension.podspec --allow-warnings`
执行结果如图：
![校验索引](https://raw.githubusercontent.com/ywdonga/oss/main/202206151640873.png)
##### 13.推送索引文件，还是在`XDUIExtension`目录，执行命令：
`pod repo push XDKitSpecs XDUIExtension.podspec --allow-warnings`
执行结果如图：
![推送索引文件](https://raw.githubusercontent.com/ywdonga/oss/main/202206151642472.png)
##### 14.这样在远程索引仓库就能看到我们刚推上去的组件索引了，如图：
![](https://raw.githubusercontent.com/ywdonga/oss/main/202206151650247.png)
##### 15.使用的时候，需要在Podfile的顶部添加索引源
`source "https://github.com/ywdonga/XDKitSpecs.git"`
然后想其他三方库一样，添加 `pod "XDUIExtension"`就可以了
如图：
![](https://raw.githubusercontent.com/ywdonga/oss/main/202206151650876.png)

### 更新podspec命令记录
##### 1.更新私有库podspec
`pod repo push XDKitSpecs XDScan.podspec --allow-warnings`
##### 2.更新公开库podspec
`pod trunk push XDScan.podspec --allow-warnings`
