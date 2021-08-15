delete all 
    fetch 4HCR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+3+35+36+37+39+41+71+73+74+75+77+78+79+80+81+82+83+84
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1+2+78+140+36+141+80+29+81+32+79+35+142+174+175+75+34+30+33+181+73+28+82+31+88+37+86+202
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HCR/4HCR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit