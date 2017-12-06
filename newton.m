function c = newton(f,init_guess,max_iter);
%NEWTON mencari akar dengan metode Newton
%   c=NEWTON(f,init_guess,max_iter) menerima input fungsi f, tebakan awal init_guess
%   dan maximum iterasi max_iter. Variable output c adalah vektor tebakan akar-akarnya 
c = zeros(max_iter,1);
fc  = zeros(max_iter,1);
dfc = zeros(max_iter,1);
c(1) = init_guess;
[fc(1) dfc(1)]=f(c(1));
% ===================== KODENYA MULAI DARI SINI============================
% ******************TULIS KODE DI BAWAH INSTRUKSI*************************
% ------------------------------------------------------------------------





% =========================================================================
[c fc dfc]	
end
