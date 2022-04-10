delete all 
    fetch 1WEJ.F
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+37+58+60+61+62+96+99+100+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 34+37+39+103+104+1+62+11+81+61+100+16+36+38+3+28+42+60+17+80+2+45+27+12
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1WEJ/1WEJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit