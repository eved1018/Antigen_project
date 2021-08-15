delete all 
    fetch 4OSN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 131+359+360+361+362+380+381+382+383+386+388+422
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 354+417+372+365+369+358+415+385+367+360+416+373+374+383+384+398+411+386+359+356+405+409+121+414
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4OT1/4OT1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit