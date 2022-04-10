delete all 
    fetch 3PGF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 87+90+91+92+93+95+98+110+259+301+302+305+308+309+321+324+325+327+328+329+330+331+332
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 92+91+329+331+110+90+321+95+324+98+328+93+325+175+332+330+305+333+341+176+42+301+101+327+211+259+182+344+318+66+337+345
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3PGF/3PGF_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit