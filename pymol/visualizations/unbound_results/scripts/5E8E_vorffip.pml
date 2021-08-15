delete all 
    fetch 5EDK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 317+322+323+324+358+360+366+367+368+369+371+376
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 24+369+41+28+27+347+23+345+15+40+13+30+372+11+371+22+10+368+34+21+295+38+9+390+17+392+373+296+18+446+393+348+530+307+412+31+298
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5E8E/5E8E_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit