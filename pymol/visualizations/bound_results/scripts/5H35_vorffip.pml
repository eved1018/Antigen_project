delete all 
    fetch 5H35.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+5+6+9+55+57+59+62+107+110+111+113+114+115+164+168+169+172+173+176
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1+171+2+82+115+83+173+165+166+172+3+5+170+113+174+32+169+192+193+65+52+51+140+189+57+81+139
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5H35/5H35_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit