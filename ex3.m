% Tutorial Minggu ke-3 
% MENCARI AKAR-AKAR FUNGSI F(x) = 0 SECARA NUMERIK
% 
% File ini akan memanggil beberapa kode dan anda harus membuat kode tersebut
% agar anda dapat mencari akar dari fungsi F(x) dengan metode Newton dan metode secant
% 
% File latihan :    
%     1. fungsi.m
%     2. createGraph.m
%     3. newton.m
%     
% Pada latihan ini, anda tidak perlu mengotak-atik code pada file ini 
% anda cukup membuat kode program pada file-file diatas.
% 
%==========================================================================
% PART 1: MENDEFINISIKAN FUNGSI
% Buatlah sebuah fungsi yang diberi nama fungsi.m yang nanti akan dicari akarnya
% Fungsi yang akan dibuat adalah  f(x) = x^6 - x - 1

clc;
clear;
close all;

fprintf('Part 1 : Mendefinisikan fungsi dan turunannya,f(x)= x^6 - x - 1\n');
x = [0 1.5];
[y dy] = fungsi(x)
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf('y = [-1 8.8906] \n');
fprintf('dy = [-1 44.5625] \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 2: MEMBUAT GRAFIK FUNGSI YANG DIDEFINISIKAN
% Buatlah sebuah fungsi void yang diberinama createGraph.m yang inputnya adalah 
% fungsi yang telah didefiniskan diatas dan juga interval dimana grafik tersebut akan dibuat

fprintf('Part 2 : Menggambar grafik fungsi x^6 - x - 1 dari -1 sampai dengan 2\n');
a = -1;
b = 2;
createGraph(@(x)fungsi(x),a,b);
fprintf('Kode yang anda kerjakan adalah benar jika muncul window baru \n');
fprintf('yang berisi grafik fungsi yang anda definisikan di atas \n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 3: MENCARI AKAR DENGAN METODE NEWTON
% Buatlah sebuah fungsi yang diberimana newton.m yang inputnya adalah fungsi yang telah 
% didefinisikan diatas, tebakan awal dan maksimum iterasi.

fprintf('Part 3 : Mencari akar f(x) dengan metode Newton\n');
max_iter = 7; %dapat diubah sesuai kebutuhan
init_guess = 1.5; %dapat diubah tergantung dari fungsinya
c = newton(@(x)fungsi(x),init_guess,max_iter);
fprintf('Akar dari fungsi diatas didapatkan dari metode Newton adalah %f \n',c(end));
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf('1.134724\n');
fprintf('Tekan tombol apapun untuk lanjut\n\n');
pause;

%==========================================================================
% PART 4: MENCARI AKAR DENGAN METODE SECANT
% Buatlah sebuah fungsi yang diberimana secant.m yang inputnya adalah fungsi yang telah 
% didefinisikan diatas, tebakan awal dan maksimum iterasi.

fprintf('Part 4 : Mencari akar f(x) dengan metode secant\n');
max_iter = 7; %dapat diubah sesuai kebutuhan
init_guess1 = 1.5; %dapat diubah tergantung dari fungsinya
init_guess2 = 2;
c = secant(@(x)fungsi(x),init_guess,init_guess2,max_iter);
fprintf('Akar dari fungsi diatas didapatkan dari metode secant adalah %f \n',c(end));
fprintf('Kode yang anda kerjakan adalah benar jika outputnya adalah \n');
fprintf('1.141285\n');
fprintf('Program selesai. Tekan tombol apapun untuk lanjut\n\n');
pause;

% ==============================AKHIR KODE================================
% TIDAK MELAKUKAN PENGETIKAN KODE DI BAWAH GARIS INI AGAR LEBIH RAPI DALAM
% MELAKUKAN KODING DAN LEBIH DIMENGERTI.

% BONUS : 
% 1. COBALAH UNTUK MENCOBA FUNGSI YANG LAIN ATAU FUNGSI YANG SAMA TETAPI 
%    MENCARI AKAR YANG LAIN DENGAN CARA MEMASUKKAN TEBAKAN AWAL YANG BERBEDA
% 2. COBALAH UNTUK MENGGANTI KRITERIA PENGHENTIAN ITERASI MENJADI TINGKAT
%	 KEAKURATAN SOLUSI DAN BUKANNYA MAKSIMUM ITERASI

