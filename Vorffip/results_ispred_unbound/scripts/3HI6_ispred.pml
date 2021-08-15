delete all 
    fetch 1XDG.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 140+141+142+143+144+200+201+202+203+204+205+206+239+241+242+243+263+264+269
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 205+204+203+140+202+141+257+200+244+175+307+143+144+189+255+308+210+198+291+187+305+306+129+128+309+146+264
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