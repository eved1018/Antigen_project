delete all 
    fetch 1P53.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 336+367+372+373+374+375+377+379+380+389+391+393+394+395+396+399+414+415
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 216+217+329+325+330+324+354+326+328+327+185+186+349+356+331+241+220+391+219+214+238+341+347+306+374+305+240+381+393+270+345
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2OZ4/2OZ4_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit