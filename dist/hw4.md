 

# 数字图像处理课程作业实验四 空域滤波器

**姓名：王适未**

**班级：自动化钱61**

**学号：2160405015**

**提交日期：2019年3月11日**

 

## 摘要

本次作业主要实现空域滤波器的基本应用，本文通过 MATLAB 实现了图像的低通滤波、高斯滤波以及高通滤波三方面内容，此外本文还采用了 unsharp masking, Sobel edge detector, and Laplace edge detection, Canny algorithm 四种方法进行边缘检测与分割。本次实验是我对图像的直方图处理有了更进一步的认识。

 

## 作业实验任务 

### 一、低通滤波器

空域低通滤波器：分别用高斯滤波器和中值滤波器去平滑测试图像 test1 和 test2 ，模板大小分别是 3x3 ， 5x5 ， 7x7 ；分析各自优缺点；

**中值滤波器**

中值滤波器 3x3 ， 5x5 ， 7x7 的模板分别为：

<div align=center><img src="https://latex.codecogs.com/gif.latex?Mask_(median)=\left(\begin{matrix}1&2&3\\4&5&6\\7&8&9\end{matrix}\right)" alt="Mask_(median)=\left(\begin{matrix}1&2&3\\4&5&6\\7&8&9\end{matrix}\right)"/></div>

![hw4-1.png](https://raw.githubusercontent.com/oawxkw/sztxcl-hw4/master/dist/hw4-1.png)

 

### 二、高斯滤波器

利用固定方差 sigma=1.5 产生高斯滤波器。附件有产生高斯滤波器的方法；分析各自优缺点；

![hw4-2.png](https://raw.githubusercontent.com/oawxkw/sztxcl-hw4/master/dist/hw4-2.png)

 

### 三、高通滤波器

利用高通滤波器滤波测试图像 test3, test4 ：包括 unsharp masking, Sobel edge detector, and Laplace edge detection, Canny algorithm 。分析各自优缺点。

![hw4-3.png](https://raw.githubusercontent.com/oawxkw/sztxcl-hw4/master/dist/hw4-3.png)

 

## 附录

代码详见文件

 

## 参考文献

[1] 冈萨雷斯, 数字图像处理（第三版）, 电子工业出版社