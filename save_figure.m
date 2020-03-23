src = imread('cameraman.tif');

figure(1); colormap gray;
imagesc(src, [0, 255]);

%%
hdl_fig = figure('Position', [0, 0, 500, 500]);
set(gca, 'position', [0, 0, 1, 1,]);
set(gcf, 'paperpositionmode', 'auto');

figure(hdl_fig); colormap gray;
imagesc(src, [0, 255]);
axis image off;

print('src', '-dpng', '-r300');

%%
src = double(src)/255.0;
sz = size(src);

src_r = zeros(sz(1), sz(2), 3);
src_g = zeros(sz(1), sz(2), 3);
src_b = zeros(sz(1), sz(2), 3);

src_r(:,:,1) = src;
src_g(:,:,2) = src;
src_b(:,:,3) = src;

figure(10);
subplot(141); colormap gray; imagesc(src);
subplot(142); imagesc(src_r);
subplot(143); imagesc(src_g);
subplot(144); imagesc(src_b);
%%
hdl_fig = [];

for i = 1:4
    hdl_fig(i) = figure('position', [0, 0, 800, 800]);
    set(gca, 'position', [0, 0, 1, 1]);
    set(gcf, 'paperpositionmode', 'auto');
end

figure(hdl_fig(1)); colormap gray; imagesc(src, [0, 1]); axis off image;
print('1_src', '-dpng', '-r300');
figure(hdl_fig(2)); imagesc(src_r, [0, 1]); axis off image;
print('2_src_r', '-dpng', '-r300');
figure(hdl_fig(3)); imagesc(src_g, [0, 1]); axis off image;
print('3_src_g', '-dpng', '-r300');
figure(hdl_fig(4)); imagesc(src_b, [0, 1]); axis off image;
print('4_src_b', '-dpng', '-r300');



















