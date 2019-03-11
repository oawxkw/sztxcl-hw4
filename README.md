# Homework 4
数字图像处理课程作业实验四

空域滤波器

## Author
王适未 自动化钱61 2160405015

## Exp. tasks
实验任务

1. 空域低通滤波器：分别用高斯滤波器和中值滤波器去平滑测试图像 test1 和 test2 ，模板大小分别是 3x3 ， 5x5 ， 7x7 ；分析各自优缺点；
2. 利用固定方差 sigma=1.5 产生高斯滤波器。附件有产生高斯滤波器的方法；分析各自优缺点；
3. 利用高通滤波器滤波测试图像 test3, test4 ：包括 unsharp masking, Sobel edge detector, and Laplace edge detection, Canny algorithm 。分析各自优缺点。

## File structures
文件结构说明

```
dist/
    hw4.md
	hw4-1.png
    hw4-2.png
    hw4-3.png
src/
    pic/
        test1.pgm
        test2.tif
        test3_corrupt.pgm
        test4 copy.bmp
        test4.tif
    hw4.m
.gitignore
README.md
hw4.md
hw4.txt
```

- The `dist/` directory contains all complied reports and pictures.
- The `src/` directory contains all source code and source pictures.
- The `hw4.md` file is the homework 4 report file, same as `dist/hw4.md`.
- The `hw4.txt` file is the homework 4 code file, same as `src/hw4.m`.
