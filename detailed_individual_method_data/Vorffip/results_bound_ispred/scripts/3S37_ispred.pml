delete all 
    fetch 3S37.X
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 220+221+222+251+255+256+257+259+261+308+310+311+312+313+314+315+316+317
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 328+319+329+315+318+271+317+275+321+314+270+327+316+284+310+266+276+326+323+252+269+313+253+268
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3S37/3S37_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit