originalImage = imread('lambo.png'); 
imageFilePath = '‪C:\Users\Asus\Documents\MATLAB\lambo.png';
originalImage = im2double(originalImage);
figure;
subplot(2, 2, 1);
imshow(originalImage);
title('Original Image');

fourierTransform = fft2(originalImage);

fourierTransformShifted = fftshift(fourierTransform);

magnitudeSpectrum = abs(fourierTransformShifted);
subplot(2, 2, 2);
imshow(log(1 + magnitudeSpectrum), []);
title('Magnitude Spectrum');

phaseSpectrum = angle(fourierTransformShifted);
subplot(2, 2, 3);
imshow(phaseSpectrum, []);
title('Phase Spectrum');

reconstructedImage = ifft2(ifftshift(fourierTransformShifted));

imshow(reconstructedImage);
title('Reconstructed Image');

% imwrite(log(1 + magnitudeSpectrum), 'MagnitudeSpectrum.png');
% imwrite(phaseSpectrum, 'PhaseSpectrum.png');
% imwrite(reconstructedImage, 'ReconstructedImage.png');
