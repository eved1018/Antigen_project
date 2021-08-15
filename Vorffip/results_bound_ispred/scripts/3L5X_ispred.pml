delete all 
    fetch 3L5X.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+14+15+101+104+105+107+108+109+110
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 58+59+43+22+12+108+65+32+70+107+18+77+82+74+81+8+11+9+78+109+31+40+7
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3L5X/3L5X_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit