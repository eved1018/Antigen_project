delete all 
    fetch 5E94.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 29+30+31+32+33+35+36+39+40+43+68+137+138+141+142+145
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 144+145+143+113+33+68+80+40+120+111+39+43+117+115+101+141+32+118+140+142+36+121+122+112
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5E94/5E94_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit