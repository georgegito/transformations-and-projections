function dp = system_transform( cp, T )

    cq = T.T \ [ cp; 1 ];
    dp = cq( 1:3, : );
end