delete all 
    fetch 3U2S.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 157+158+160+162+166+167+168+169+170+171+172+173+223+240
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 195+130+191+212+192+173+208+211+196+159+216+158+193+176+205+215+210+190+177+156+219+128+202
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3U2S/3U2S_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit