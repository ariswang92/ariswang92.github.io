%% Zhongjian Wang Oct.29 2020
figure()
for n=1:150
f=zeros(n+1,1);

for i=0:n
    f(i+1)=nchoosek(n,i)/(2^n)*sqrt(n);
end
area(((0:n)-n/2)/sqrt(n),f)
title(strcat('n=',num2str(n)));
xlabel('(k-n/2)/sqrt(n)')
ylabel('P(X=k)*sqrt(n)')
xlim([-4,4])
drawnow
M(n)=getframe(gcf);
end
  writerObj = VideoWriter('myVideo.avi');
  writerObj.FrameRate = 1;
open(writerObj);
% write the frames to the video
for i=1:length(M)
    frame = M(i) ;    
    writeVideo(writerObj, frame);
end
close(writerObj);
    
