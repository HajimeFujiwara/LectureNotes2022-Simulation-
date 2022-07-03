function rsts = bsModelCallPut(St,r,sig,T,K)
    % Black-Scholesモデルでのコール／プットオプションの価格や感応度を算出する
    arguments
        St (:,1) {mustBeReal,mustBePositive}
        r (1,1) {mustBeReal}
        sig (1,1) {mustBeReal,mustBePositive}
        T (1,1) {mustBeReal,mustBePositive}
        K (1,1) {mustBeReal,mustBePositive}
    end

    d1 = (log(St/K)+r*T)/(sig*sqrt(T)) + 1/2*sig*sqrt(T);
    d2 = d1 - sig*sqrt(T);
    Nd1 = normcdf(d1); nd1 = normpdf(d1); 
    Nd2 = normcdf(d2);

    callValue = St.*Nd1 - K*exp(-r*T)*Nd2;
    putValue = callValue - St + K*exp(-r*T);

    callDelta = Nd1; 
    putDelta = callDelta - 1; 

    Gamma = 1/(sig*sqrt(T))*1./St .* nd1; 

    Kappa = St.*T.*nd1; 

    rsts = table(callValue,putValue,callDelta,putDelta,Gamma,Kappa);
end

