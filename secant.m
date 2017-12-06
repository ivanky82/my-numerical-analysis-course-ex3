function c = secant(f,init_guess,init_guess2,max_iter);
%SECANT mencari akar dengan metode secant
%   c = SECANT(f,init_guess,init_guess2,max_iter) menerima input fungsi f, tebakan awal init_guess
%   dan tebakan awal yang kedua init_guess2. Variable output c adalah vektor tebakan akar-akarnya 
c = zeros(max_iter,1);
fc  = zeros(max_iter,1);
c(1) = init_guess;
c(2) = init_guess2;
fc(1)=f(c(1));
fc(2)=f(c(2));
% ===================== KODENYA MULAI DARI SINI============================
% ******************TULIS KODE DI BAWAH INSTRUKSI*************************
% ------------------------------------------------------------------------



% =========================================================================
[c fc]	
end
