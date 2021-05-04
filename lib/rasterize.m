function Prast = rasterize( P, M, N, H, W )

    N_ = size( P, 2 );
    Prast = zeros( 2, N );
    c_ver = M / H;
    c_hor = N / W;

    for i = 1 : N_

        if abs( P( 1, i ) ) > H / 2  ||  abs( P( 2, i ) ) > W / 2
            fprintf("dimensions error\n");
            return;
        end

        Prast( 1, i ) = floor( ( P( 1, i ) + H / 2 ) * c_ver + 0.5);
        Prast( 2, i ) = floor( ( P( 2, i ) + W / 2 ) * c_hor + 0.5);
    end
end