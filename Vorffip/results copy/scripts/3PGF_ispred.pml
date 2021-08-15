delete all 
    fetch 3PGF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 87+90+91+92+93+95+98+110+259+301+302+305+308+309+321+324+325+327+328+329+330+331+332
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 110+92+1+329+90+176+3+53+121+207+175+4+95+205+328+366+354+98+119+331+326+237+73+54+210+120+123+335+206+124+91+341
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3PGF/3PGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit