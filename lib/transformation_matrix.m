classdef transformation_matrix < handle

    properties
        T = eye( 4 );  
    end

    methods
        function rotate( obj, theta, u )
            % normalize u vector
            u_ = u / norm( u );
            % Rodriguez rotation formula
            A = ( 1 - cos(theta) ) * ( u_ * u_' );
            B = cos( theta ) * eye( 3 );
            C = sin( theta ) * [ 0     -u_(3)   u_(2)    ;   u_(3)    0   -u_(1)   ;  -u_(2)    u_(1)    0 ];
            R = A + B + C;
            obj.T = [ R    zeros( 3, 1 )    ;   zeros( 1, 3 )   1 ];
        end
        function translate( obj, t )
            obj.T = [ eye( 3 )    t    ;    zeros( 1, 3 )   1 ];
        end
    end

end