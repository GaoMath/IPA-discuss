% ���δ���������Ⱥ��д

% clear all;
% close all;
% clc;
% �ϳ�Դͼ��

f = zeros(512,512);
[row_num,col_num] = size(f);
x = round(row_num/2);
y = round(col_num/2);
f (x-29:x+30,y-4:y+5) = 1; % ���θ�ֵ
imshow(f);title('Դͼ��');
F = dft2D(f); % ��ά����Ҷ�任
figure;imshow(abs(F),[]);title('��ͼ��');

% ���Ļ���f(x,y) = f(x,y)*(-1)^(x+y)
for i=1:row_num
    for j=1:col_num
        if mod(i+j,2) == 1  % i+jΪ����
            f(i,j) = -f(i,j);
        end
    end
end

F_centre = dft2D(f); % ���Ļ��Ķ�ά����Ҷ�任
S = log(abs(F_centre)+1); % �����任

figure;imshow(abs(F_centre),[]);title('���Ļ�����ͼ');
figure;imshow(S,[]);title('�����任�����ͼ');