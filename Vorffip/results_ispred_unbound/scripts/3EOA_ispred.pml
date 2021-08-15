delete all 
    fetch 1ZOO.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 144+147+148+151+155+191+193+194+197+198+199+200+201+203
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 143+144+205+203+204+175+140+200+202+141+257+232+201+309+307+225+308+310+198+128+145+197+229+213+176+255+305
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3EOA/3EOA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit