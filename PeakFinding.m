%% Adam Briggs
% OPT 204 Lab2
% Reference Analysis
%asosd;flkj
%Import
opts = spreadsheetImportOptions("NumVariables", 2);
opts.Sheet = "Kr Emission";
opts.DataRange = "A2:B2049";
opts.VariableNames = ["Wavelength", "KrTrial1"];
opts.VariableTypes = ["double", "double"];
tbl = readtable("/Users/adambriggs/Dropbox/College/Spring 2020/OPT 204/Lab1/Lab1_CleanedData.xlsx", opts, "UseExcel", false);
Wavelength = tbl.Wavelength;
Amplitude = tbl.KrTrial1;


%Calculations
findpeaks(Amplitude, Wavelength,'Annotate','extents','WidthReference','halfheight','MinPeakProminence',0.3e4);
[pks,locs,widths,proms] = findpeaks(Amplitude, Wavelength,'Annotate','extents','WidthReference','halfheight','MinPeakProminence',0.3e4);
% T = table(pks, locs, widths, proms);
% table2latex(T)

% figure(1)
% hold on
% findpeaks(PumpAmp,PumpWav,'Annotate','extents','WidthReference','halfheight','MinPeakHeight',0.005);
% [pks,locs,widths,proms] = findpeaks(PumpAmp,PumpWav,'Annotate','extents','WidthReference','halfheight','MinPeakHeight',0.005);
title('Peaks');
xlabel('Wavelength (nm)');
ylabel('Spectral Density (W/m)');
set(findall(gcf,'-property','FontSize'),'FontSize',18); %Changes font size
set(gcf, 'position', [100, 100, 800, 500]); %Change size of window
ylim([0 4e4])

set(gca, ...
  'Box'         , 'off'     , ...
  'TickDir'     , 'out'     , ...
  'TickLength'  , [.02 .02] , ...
  'XMinorTick'  , 'on'      , ...
  'YMinorTick'  , 'on'      , ...
  'YGrid'       , 'on'      , ...
  'XColor'      , [.3 .3 .3], ...
  'YColor'      , [.3 .3 .3], ...
  'LineWidth'   , 1         );
set(gcf, 'PaperPositionMode', 'auto');

% figure(2)
% findpeaks(ErbAmp,ErbWav,'Annotate','extents','WidthReference','halfheight','MinPeakHeight',1e-5);
% [pks2,locs2,widths2,proms2] = findpeaks(ErbAmp,ErbWav,'Annotate','extents','WidthReference','halfheight','MinPeakHeight',1e-5);
% title('Peaks');
% xlabel('Wavelength (nm)');
% ylabel('Spectral Density (W/m)');
% set(findall(gcf,'-property','FontSize'),'FontSize',18); %Changes font size
% set(gcf, 'position', [100, 100, 800, 500]); %Change size of window
% ylim([0 2e-5]);
% 
% set(gca, ...
%   'Box'         , 'off'     , ...
%   'TickDir'     , 'out'     , ...
%   'TickLength'  , [.02 .02] , ...
%   'XMinorTick'  , 'on'      , ...
%   'YMinorTick'  , 'on'      , ...
%   'YGrid'       , 'on'      , ...
%   'XColor'      , [.3 .3 .3], ...
%   'YColor'      , [.3 .3 .3], ...
%   'LineWidth'   , 1         );
% set(gcf, 'PaperPositionMode', 'auto');
