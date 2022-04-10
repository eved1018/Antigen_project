delete all 
    fetch 3THM.F
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+39+40+41+42+43+44+45+46+48+49+59+60+78+79+80+81+86
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 96+95+127+94+113+44+111+59+51+42+45+91+46+82+97+63+74+65+60+77+81+86
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3THM/3THM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit