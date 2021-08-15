delete all 
    fetch 3IRC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 305+306+307+309+310+325+326+327+328+329+330+361+362
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 301+334+299+350+300+298+296+397+396+394+398+392+297+399+351+332+317+316+352+395+337+338+355
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4L5F/4L5F_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit