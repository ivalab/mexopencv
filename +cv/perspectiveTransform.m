%PERSPECTIVETRANSFORM  Performs the perspective matrix transformation of vectors
%
%    dst = cv.perspectiveTransform(src, mtx)
%
% ## Input
% * __src__ Source two-channel or three-channel floating-point array. Each
%        element is a 2D/3D vector to be transformed. Also can be specified
%        as a a cell-array of 2D/3D points.
% * __mtx__ 3x3 or 4x4 floating-point transformation matrix.
%
% ## Output
% * __dst__ Destination array of the same size and type as `src`.
%
% The function cv.perspectiveTransform transforms every element of `src` by
% treating it as a 2D or 3D vector, in the following way:
%
%    [x,y,z] -> [X/w, Y/w, Z/w]
%
% where
%
%    [X,Y,Z,W] = mtx * [x,y,z,1]
%
% and
%        | W    if W ~=0
%    w = |
%        | inf  otherwise
%
% Here a 3D vector transformation is shown. In case of a 2D vector
% transformation, the `z` component is omitted.
%
% ## Note
% The function transforms a sparse set of 2D or 3D vectors. If you want to
% transform an image using perspective transformation, use cv.warpPerspective.
% If you have an inverse problem, that is, you want to compute the most
% probable perspective transformation out of several pairs of corresponding
% points, you can use cv.getPerspectiveTransform or cv.findHomography.
%
% See also: cv.transform, cv.warpAffine, cv.warpPerspective,
%  cv.getPerspectiveTransform, cv.findHomography
%
