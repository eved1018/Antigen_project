delete all 
    fetch 5D8J.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 24+25+26+27+28+29+30+31+32+33+36+58+77+78+79+98+99+101
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 36+32+58+29+33+28+30+37+35+59+57+68+87+34+86+78+88+3+1+31+48+66+74+60+67
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5D8J/5D8J_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit