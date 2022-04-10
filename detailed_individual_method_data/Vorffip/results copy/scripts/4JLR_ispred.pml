delete all 
    fetch 4JLR.S
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 65+68+69+72+73+78+79+82+83+85+86+89
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 62+61+83+82+78+70+75+79+81+98+89+72+58+47+68+59+29+80+77+97+90+100+84
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4JLR/4JLR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit