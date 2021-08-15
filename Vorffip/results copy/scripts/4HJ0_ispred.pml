delete all 
    fetch 4HJ0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+33+36+37+39+40+43+47+65+67+68+87+89+90+113+115+119
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 36+112+35+39+111+68+57+59+86+33+32+58+54+113+55+90+34+41+67+37+115+122+40
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HJ0/4HJ0_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit