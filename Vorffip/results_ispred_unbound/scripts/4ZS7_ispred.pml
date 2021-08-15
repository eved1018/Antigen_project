delete all 
    fetch 1ALU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+33+34+37+40+67+69+74+75+76+164+168+171+172+175+176+178+179+182+183
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 182+48+20+179+137+142+160+161+175+37+114+35+153+158+78+117+31+171+19+34+26+38+155+156+157+23
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