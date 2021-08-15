delete all 
    fetch 1M4C.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+32+33+34+35+37+38+41+42+43+71+72+73
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 42+40+38+72+37+45+41+88+84+19+43+104+20+35+85+34+16+22+68+23+83+103+11+15
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5LQB/5LQB_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit