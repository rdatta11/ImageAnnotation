jpgFiles = dir('Path');
display(length(jpgFiles));

for k = 1:length(jpgFiles)
    display(k);
    filename = jpgFiles(k).name;
    I = imread(filename);
    figure('Image');
    clf;
    h = imagesc(I);
    axis image;
    rectangle = getrect;
    display(rectangle);
    temp = inputdlg('Enter Scale of Images: ', 'Sample', [1 50]);
    Scale = str2num(temp{:});
    [x,y] = ginput;
    numpix = sqrt(((x(1) - x(2))^2) + ((y(1) - y(2))^2));
    display(numpix);
    numPix(k) = numpix;
    scale(k) = Scale; 
    f = strrep(filename,'.jpg','');
    t = strcat(f,'.mat');
    display(t);
    save(t, 'Scale', 'x', 'y', 'jpgFiles', 'numpix', 'rectangle');   
end

display(scale);
numPix = numPix(1:length(numPix));
display(numPix);
save('image_data.mat','numPix', 'scale');

figure1 = figure;
scatter(numPix, scale);
xlabel('Number of Pixels');
ylabel('Scale of Image');
title('Number Of Pixels vs Scale Of Image');
saveas(figure1,'NumberOfPixels_vs_ScaleOfImage');

figure2 = figure;
scatter(scale, numPix);
ylabel('Number of Pixels');
xlabel('Scale of Image');
title('Scale Of Image vs Number Of Pixels');
saveas(figure2, 'ScaleOfImage_vs_NumberOfPixels');