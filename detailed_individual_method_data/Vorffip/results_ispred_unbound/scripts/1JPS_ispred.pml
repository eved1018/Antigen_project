delete all 
    fetch 1BOY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 152+154+156+164+165+166+167+168+169+170+171+190+192+194+197+198+199+200+201+203+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 94+149+169+197+119+93+172+203+171+158+168+96+116+42+117+95+40+83+92+156+135+207+167+3+136+30+15+20+61
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1JPS/1JPS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit