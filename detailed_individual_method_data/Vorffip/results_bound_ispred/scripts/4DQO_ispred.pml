delete all 
    fetch 4DQO.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 158+160+163+166+167+168+169+170+171+172+173
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 191+156+176+132+211+192+175+193+173+177+190+196+214+128+154+171+174+160+155+208+215+158+194
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4DQO/4DQO_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit