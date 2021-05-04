clear;
close all;
addpath('lib')
addpath('lib/gouraud')

%% Create transformation matrix
T = transformation_matrix;

%% Load data 
load('hw2.mat');

%% Variables %%
% V: vertices 3d coords ( L x 3 )
% C: vertices colors ( L x 3)  
% F: triangle vertices ( K x 3 )
% ck: look-at vector
% cu: up vector
% cv: camera position in WCS
% M: num of canvas rows ( pixels )
% N: num of canvas columns ( pixels )
% H: height of camera level ( inches )
% W: width of camera level ( inches )
% w: shutter distance

%% Initial image
Img0 = render_object( V, F, C, M, N, H, W, w, cv, ck, cu );

figure( 1 );
imshow( Img0 ); 
imwrite( Img0, '0.jpg' );

%% Translate by t1
translate( T, t1 );
V = affine_transformation( V', T.T )';
Img1 = render_object( V, F, C, M, N, H, W, w, cv, ck, cu );

figure( 2 );
imshow( Img1 );
imwrite( Img1, '1.jpg' );

%% Rotate by theta
rotate( T, theta, g );
V = affine_transformation( V', T.T )';
Img2 = render_object( V, F, C, M, N, H, W, w, cv, ck, cu );

figure( 3 );
imshow( Img2 );
imwrite( Img2, '2.jpg' );

%% Translate by t2
translate( T, t2 );
V = affine_transformation( V', T.T )';
Img3 = render_object( V, F, C, M, N, H, W, w, cv, ck, cu );

figure( 4 );
imshow( Img3 );
imwrite( Img3, '3.jpg' );