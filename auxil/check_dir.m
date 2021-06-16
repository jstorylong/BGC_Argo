function success = check_dir(ddir)
% check_dir  This function is part of the
% MATLAB toolbox for accessing BGC Argo float data.
%
% USAGE:
%   success = check_dir(ddir)
%
% DESCRIPTION:
%   This function determines if a directory needs to be created and
%   does so if necessary.
%
% INPUT:
%   ddir : directory (this can be a relative or absolute path)
%
% OUTPUT:
%   success : 0 if ddir did not exist yet and cannot be created; 1
%             otherwise
%
% AUTHORS: 
%   H. Frenzel, J. Sharp, A. Fassbender (NOAA-PMEL),
%   J. Plant, T. Maurer, Y. Takeshita (MBARI), D. Nicholson (WHOI),
%   and A. Gray (UW)
%
% CITATION:
%   BGC-Argo-Mat: A MATLAB toolbox for accessing and visualizing
%   Biogeochemical Argo data,
%   H. Frenzel*, J. Sharp*, A. Fassbender, J. Plant, T. Maurer, 
%   Y. Takeshita, D. Nicholson, and A. Gray; 2021
%   (*These authors contributed equally to the code.)
%
% LICENSE: bgc_argo_mat_license.m
%
% DATE: June 15, 2021

if nargin < 1
    warning('Usage: check_dir(ddir)')
end

if ~exist(ddir, 'dir') && ~mkdir(ddir)
    warning('Could not create directory %s', ddir)
    success = 0;
else
    success = 1;
end
