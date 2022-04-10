delete all 
    fetch 4O9H.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 21+22+23+26+27+30+73+74+75+78+80+129+179+182+183+184
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 157+164+121+158+161+31+19+117+113+165+48+118+24+155+47+168+28+124+160+120+114+40+30+162+125+75
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4O9H/4O9H_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit