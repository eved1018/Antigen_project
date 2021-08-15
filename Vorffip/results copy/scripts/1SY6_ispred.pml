delete all 
    fetch 1SY6.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 139+140+141+153+155+186+187+188+189+190+192
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 176+175+155+156+186+70+127+187+69+46+42+40+66+68+50+45+71+158+203+47+157+202+73+38+185+44+154
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1SY6/1SY6_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit