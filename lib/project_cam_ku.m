function [P, D] = project_cam_ku( w, cv, c_lookat, c_up, p )
    
    CK = c_lookat - cv;
    cz = CK / norm (CK );
    t = c_up - dot( c_up, cz ) * cz;
    cy = t / norm( t );
    cx = cross( cy, cz );
    
    [ P, D ] = project_cam(w, cv, cx, cy, cz, p);
end