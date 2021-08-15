delete all 
    fetch 3Q1S.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 64+65+66+67+68+69+70+71+76+77+80+173
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 164+72+66+121+41+60+70+133+100+59+69+139+136+68+128+167+40+85+101+119+76+62+71+73
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3Q1S/3Q1S_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit