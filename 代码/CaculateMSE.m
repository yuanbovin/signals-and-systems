function mse=CaculateMSE(I,J)
    if (size(I,1)~=size(J,1)||size(I,2)~=size(J,2))
        error("图片大小不一致");
    end
    mse=0;
    for i=1:size(I,1)
        for j=1:size(I,2)
            mse=mse+(I(i,j)-J(i,j)).^2;
        end
    end
    mse=mse/(i*j);
end
    