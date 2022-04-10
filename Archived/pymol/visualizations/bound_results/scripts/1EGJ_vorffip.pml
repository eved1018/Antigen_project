delete all 
    fetch 1EGJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 362+363+364+365+366+367+395+416+418+419+421
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 363+421+367+364+418+366+365+362+419+416+338+420+368+361+422+339+370+423+393+415+360+369+340+395
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1EGJ/1EGJ_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit