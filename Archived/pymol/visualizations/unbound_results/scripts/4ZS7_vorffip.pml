delete all 
    fetch 1ALU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+33+34+37+40+67+69+74+75+76+164+168+171+172+175+176+178+179+182+183
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 157+31+158+118+161+121+155+24+117+120+49+28+113+125+124+61+48+165+27+51+69+114+30+156+62+19
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4ZS7/4ZS7_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit