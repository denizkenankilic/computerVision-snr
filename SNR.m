% 1st Way of SNR
img = imread('test.tiff');
img = double(img(:));
ima = max(img(:));
imi = min(img(:));
imm = mean(img(:));
ims = std(img(:));
snr1 = imm/ims % Here same with ./
snr2 = 10*log10((imm)./ims)
snr3 = 10*log10((ima-imi)./ims)

% 2nd Way of SNR
sig_mean = 150;
noise_v = (std(img-imm)); % variance or standard deviation
psnr = sig_mean/noise_v
