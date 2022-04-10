delete all 
    fetch 4ZS7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+33+34+37+40+67+69+74+75+76+164+168+171+172+175+176+178+179+182+183
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 142+133+78+146+157+75+74+143+31+152+141+117+161+149+183+158+76+184+34+151+147+159+69+145+165
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4ZS7/4ZS7_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit