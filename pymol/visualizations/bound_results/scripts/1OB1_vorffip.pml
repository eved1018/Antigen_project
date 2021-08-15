delete all 
    fetch 1OB1.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 8+9+10+11+13+14+23+24+25+26+28+38+39
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1+84+86+87+3+4+95+6+85+2+88+20+82+93+34+7+14+31+83+81+18+40+8
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1OB1/1OB1_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit