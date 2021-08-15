delete all 
    fetch 2JEL.P
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+3+4+34+41+64+66+67+68+70+71+72+75+76
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 4+68+72+3+66+67+75+71+1+76+2+70+69+79+5+34+7+16+60+82+36+9
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2JEL/2JEL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit