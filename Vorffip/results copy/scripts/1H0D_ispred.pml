delete all 
    fetch 1H0D.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 34+35+36+37+38+39+40+41+83+85+86+87+88+89+90+91+93
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 86+89+88+91+123+90+83+12+84+93+31+122+100+85+119+32+3+16+2+101+37+28+65+24
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1H0D/1H0D_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit