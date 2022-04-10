delete all 
    fetch 7JNY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 20+23+24+26+27+28+29+30+48+50+61+64+65+68
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 5+8+10+9+6+60+36+7+2+20+72+63+64+74+11+23+28+3+76+24+40+39
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5CBA/5CBA_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit