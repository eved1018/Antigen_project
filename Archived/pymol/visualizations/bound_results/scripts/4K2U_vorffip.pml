delete all 
    fetch 4K2U.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 149+152+153+156+160+161+162+164+167+168+169
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 280+265+213+231+220+112+184+189+233+53+272+217+52+230+216+27+192+281+228+224+221+24+279+51+165+277+164+11+25
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4K2U/4K2U_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit