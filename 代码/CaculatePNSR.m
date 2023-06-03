function pnsr=CaculatePNSR(I,J)
    mse=CaculateMSE(I,J);
    fmax=max(max(I));
    a=fmax.^2;
    b=mse;
    pnsr=10*log10(a/b);
end