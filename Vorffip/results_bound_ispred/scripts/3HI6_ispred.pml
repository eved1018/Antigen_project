delete all 
    fetch 3HI6.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 140+141+142+143+144+200+201+202+203+204+205+206+239+241+242+243+263+264+269
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 144+205+203+141+143+204+202+140+189+175+244+145+200+201+198+243+229+148+187+176+194+197+210+164+177+193
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3HI6/3HI6_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit