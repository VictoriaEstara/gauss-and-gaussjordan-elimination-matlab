## Gambaran Umum

Kode ini berfungsi untuk memecahkan sistem persamaan linear melalui Operasi Baris Elementer (OBE) menggunakan metode Eliminasi Gauss dan Eliminasi Gauss-Jordan.

## Bahasa Pemrograman

Kode proyek ini ditulis menggunakan bahasa pemrograman MATLAB.

## Software Pendukung

Proyek ini dikembangkan menggunakan [MATLAB](https://www.mathworks.com/products/matlab.html). Pastikan Anda memiliki MATLAB yang terpasang sebelum menjalankan proyek.

## Cara Penggunaan

1. Buka proyek menggunakan MATLAB.
2. Ikuti intruksi pada video berikut melalaui [tautan](https://youtu.be/iDAvWAppAzg?si=SobnDpNuCR1iXd7S) ini.

## Contoh Penggunaan Program

Metode Eliminasi Gauss

```matlab
A=[1 3 1;2 1 2;1 -2 -1]
b=[10;10;-6]

R=[A b]

R(2,:)=R(2,:)-(R(2,1))*R(1,:)
R(3,:)=R(3,:)-(R(3,1))*R(1,:)
R(2,:)=R(2,:)*-(1/5)
R(3,:)=R(3,:)-(R(3,2))*R(2,:)
R(3,:)=R(3,:)*-(1/2)

z=R(3,3)*R(3,4)
y=R(2,2)*R(2,4)
x=R(1,4)-z-R(1,2)*y

```

Metode Eliminasi Gauss-Jordan

```matlab
A=[1 3 1;2 1 2;1 -2 -1]
b=[10;10;-6]

R=[A b]

R(2,:)=R(2,:)-(R(2,1))*R(1,:)
R(3,:)=R(3,:)-(R(3,1))*R(1,:)
R(2,:)=R(2,:)*-(1/5)
R(3,:)=R(3,:)-(R(3,2))*R(2,:)
R(3,:)=R(3,:)*-(1/2)

R(1,:)=R(1,:)-(R(1,3))*R(3,:)
R(1,:)=R(1,:)-(R(1,2))*R(2,:)

x=R(1,1)*R(1,4)
y=R(2,2)*R(2,4)
z=R(3,3)*R(3,4)
