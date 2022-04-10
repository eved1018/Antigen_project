delete all 
    fetch 3HI6.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 140+141+142+143+144+200+201+202+203+204+205+206+239+241+242+243+263+264+269
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 205+204+140+203+175+202+200+141+144+188+176+201+189+269+305+264+268+244+177+190+243+194+178+198+214+143
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3HI6/3HI6_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit