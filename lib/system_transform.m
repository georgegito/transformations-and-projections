function dp = system_transform( cp, T, c0, theta )

    rotate( T, theta, c0 );
    dp = T.T( 1:3, 1:3 ) \ cp;
end