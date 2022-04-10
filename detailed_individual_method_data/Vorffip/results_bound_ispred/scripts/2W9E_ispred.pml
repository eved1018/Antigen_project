delete all 
    fetch 2W9E.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 142+143+144+145+147+148+149+151+152+153+155+156+197+199+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 194+153+165+129+195+130+189+137+186+192+188+162+146+181+193+164+152+197+190+145+148+201+155
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2W9E/2W9E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit