delete all 
    fetch 2VXQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 32+34+39+40+41+43+65+67+68+75+76+77+78+79+80
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 85+75+67+77+69+40+30+79+71+41+78+93+76+45+22+47+72+88+94+24+73+43+46
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2VXQ/2VXQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit