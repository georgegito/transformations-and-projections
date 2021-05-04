function cq = affine_transformation( cp, T )

    N = size( cp, 2 );
    cq = zeros( 4, N );
    for i = 1:N
        cq( :, i ) = T * [ cp( :, i );   1 ];
    end

    cq( 4, : ) = [];
end