delete all 
    fetch 5A3I.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 71+72+113+114+115+116+118+120+121+137+145+162+163+164+165+252
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 296+295+316+291+141+297+317+289+118+298+120+66+313+205+293+9+290+7+315+19+8+159+145+314+6+210+86+318+213+20+137+269
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5A3I/5A3I_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit