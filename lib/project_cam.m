function [P, D] = project_cam( w, cv, cx, cy, cz, p )

    % number of points
    N = size( p, 2 );
    
    % init P, D matrices
    P = zeros( 2, N );
    D = zeros( 1, N );
    
    % compute transformation matrix T
    R = [ cx   cy   cz ];
    T = [ R    -R' * cv    ;    zeros( 1, 3 )    1 ];
    
    for i = 1 : N
        % cp_ are the coordinates of a point p(i) in camera system
        cp_ = T * [ p( :, i )   ;   1 ];
        P( 1, i ) = w * cp_( 1 ) / cp_( 3 );
        P( 2, i ) = w * cp_( 2 ) / cp_( 3 );
        D( i ) = cp_( 3 );
    end
end