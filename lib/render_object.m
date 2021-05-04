function I = render_object(p, F, C, M, N, H, W, w, cv, c_lookat, c_up)
    
    %% 2d projection
    [P, D] = project_cam_ku( w, cv, c_lookat, c_up, p' );
    
    %% rasterize
    Prast = rasterize( P, M, N, H, W );

    %% paint triangles with gouraud method
    I = render( Prast', F, C, D', 2 );
end