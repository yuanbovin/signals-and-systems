function output=filt(b,a,input,key)
    if  key == 0
        output=filter(b,a,input);
    elseif key == 1    
        output=filtfilt(b,a,input);
    else
        error("输入违法,请输入0或1");
    end
end