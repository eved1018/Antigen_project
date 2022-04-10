delete all 
    fetch 2YPV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 41+126+128+130+214+215+217+218+219+220+221+239+241+242+243+244+245+246+248
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 244+123+126+243+202+124+43+214+125+27+26+242+114+89+215+79+216+174+245+82+25+52+88+113+51+203+149+91
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2YPV/2YPV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit