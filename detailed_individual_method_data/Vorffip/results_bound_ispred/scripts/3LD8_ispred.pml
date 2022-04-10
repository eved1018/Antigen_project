delete all 
    fetch 3LD8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 53+55+57+58+61+62+65+158+291+319+320+322+326
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 332+325+310+303+334+321+330+313+302+304+314+328+299+319+326+318+296+322+305+306+329+317+333+251+331+315+307+247+250+246+300+245
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3LD8/3LD8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit