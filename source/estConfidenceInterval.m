function rst = estConfidenceInterval(Vtrials,alpha)
    arguments
        Vtrials (:,1) double  % 推定繰返し時の値ベクトル
        alpha (1,1) double {mustBeGreaterThan(alpha,0), mustBeLessThan(alpha,1)} %信頼係数
    end
    %% sectioningで推定値の信頼区間を求める
    Ntrial = size(Vtrials,1); % 繰返し数
    mn = mean(Vtrials); 
    vn = var(Vtrials); % 不偏分散
    coeff = tinv(1-alpha/2,Ntrial-1); % t分布の逆関数

    CILower = mn - coeff*sqrt(vn/Ntrial); % 下側 alpha %点
    CIUpper = mn + coeff*sqrt(vn/Ntrial); % 上側 alpha %点

    rst = table(CILower,CIUpper,Ntrial,alpha);
end

