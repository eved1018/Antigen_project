delete all 
    fetch 4L5F.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 305+306+307+309+310+325+326+327+328+329+330+361+362
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 301+300+299+334+297+298+332+392+350+355+348+368+352+393+316+373+317+370+346+375+394+354+351
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