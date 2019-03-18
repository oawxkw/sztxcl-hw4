 

# 数字图像处理课程作业实验四 空域滤波器

**姓名：王适未**

**班级：自动化钱61**

**学号：2160405015**

**提交日期：2019年3月18日**

 

## 摘要

本次作业主要实现空域滤波器的基本应用，本文通过 MATLAB 实现了图像的低通滤波、高斯滤波以及高通滤波三方面内容，此外本文还采用了 unsharp masking, Sobel edge detector, and Laplace edge detection, Canny algorithm 四种方法进行边缘检测与分割。本次实验是我对图像的直方图处理有了更进一步的认识。

 

## 作业实验任务 

### 一、低通滤波器

空域低通滤波器：分别用高斯滤波器和中值滤波器去平滑测试图像 test1 和 test2 ，模板大小分别是 3x3 ， 5x5 ， 7x7 ；分析各自优缺点；

**中值滤波器**

中值滤波器 3x3 ， 5x5 ， 7x7 的模板分别为：

<div align=center><img src="https://latex.codecogs.com/gif.latex?Mask_{median}=\left(\begin{matrix}1&1&1\\1&1&1\\1&1&1\end{matrix}\right)" alt="Mask_{median}=\left(\begin{matrix}1&1&1\\1&1&1\\1&1&1\end{matrix}\right)"/></div>

![hw4-1.png](https://raw.githubusercontent.com/oawxkw/sztxcl-hw4/master/dist/hw4-1.png)

分析可知：模板尺寸越大噪声约不明显，但是图像更加模糊。

 

### 二、高斯滤波器

利用固定方差 sigma=1.5 产生高斯滤波器。附件有产生高斯滤波器的方法；分析各自优缺点；

**高斯滤波器**

高斯滤波器的模板为：

<div align=center><img src="https://latex.codecogs.com/gif.latex?Mask_{gaussian}=\frac{1}{2\pi\sigma^2}\left(\begin{matrix}e^\frac{-2}{2\sigma^2}&e^\frac{-1}{2\sigma^2}&e^\frac{-2}{2\sigma^2}\\e^\frac{-1}{2\sigma^2}&e^\frac{0}{2\sigma^2}&e^\frac{-1}{2\sigma^2}\\e^\frac{-2}{2\sigma^2}&e^\frac{-1}{2\sigma^2}&e^\frac{-2}{2\sigma^2}\\\end{matrix}\right)" alt="Mask_{gaussian}=\frac{1}{2\pi\sigma^2}\left(\begin{matrix}e^\frac{-2}{2\sigma^2}&e^\frac{-1}{2\sigma^2}&e^\frac{-2}{2\sigma^2}\\e^\frac{-1}{2\sigma^2}&e^\frac{0}{2\sigma^2}&e^\frac{-1}{2\sigma^2}\\e^\frac{-2}{2\sigma^2}&e^\frac{-1}{2\sigma^2}&e^\frac{-2}{2\sigma^2}\\\end{matrix}\right)"/></div>

![hw4-2.png](https://raw.githubusercontent.com/oawxkw/sztxcl-hw4/master/dist/hw4-2.png)

分析可知：模板尺寸越大噪声约不明显，但是图像细节较中值滤波保留更加完整。
 
 

### 三、高通滤波器

利用高通滤波器滤波测试图像 test3, test4 ：包括 unsharp masking, Sobel edge detector, and Laplace edge detection, Canny algorithm 。分析各自优缺点。

**unsharp masking：**
根据老师 PPT 内容进行设计。

**Sobel edge detector**

Sobel edge detector的纵向模板为：

<div align=center><img src="https://latex.codecogs.com/gif.latex?Mask_{sobely}=\left(\begin{matrix}1&0&-1\\2&0&-2\\1&0&-1\end{matrix}\right)" alt="Mask_{sobely}=\left(\begin{matrix}1&0&-1\\2&0&-2\\1&0&-1\end{matrix}\right)"/></div>

Sobel edge detector的横向模板为：

<div align=center><img src="https://latex.codecogs.com/gif.latex?Mask_{sobelx}=\left(\begin{matrix}1&2&1\\0&0&0\\-1&-2&-1\end{matrix}\right)" alt="Mask_{sobelx}=\left(\begin{matrix}1&2&1\\0&0&0\\-1&-2&-1\end{matrix}\right)"/></div>

**Laplace edge detection**

Laplace edge detection的模板为：

<div align=center><img src="https://latex.codecogs.com/gif.latex?Mask_{laplace}=\left(\begin{matrix}1&1&1\\1&-8&1\\1&1&1\end{matrix}\right)" alt="Mask_{laplace}=\left(\begin{matrix}1&1&1\\1&-8&1\\1&1&1\end{matrix}\right)"/></div>

**Canny algorithm：**
直接调用 MATLAB 中的函数。

![hw4-3.png](https://raw.githubusercontent.com/oawxkw/sztxcl-hw4/master/dist/hw4-3.png)

其中 Canny 算法能够较为准确的对边缘进行提取，但是其计算繁琐，相比之下使用 Sobel 边缘检测法能够较为快速准确的对边缘进行提取。

 

## 附录

代码详见文件

 

## 参考文献

[1] 冈萨雷斯, 数字图像处理（第三版）, 电子工业出版社