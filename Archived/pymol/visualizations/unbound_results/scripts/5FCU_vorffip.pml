delete all 
    fetch 4DVV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 51+52+53+54+55+72+73+74+75+76+77+78+79+80+107+217+220+221+246+247
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 423+120+434+200+122+75+202+53+76+72+201+73+44+492+425+45+246+221+71+199+119+84+369+327+368+370+220+87+198+203+82+365
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5FCU/5FCU_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit