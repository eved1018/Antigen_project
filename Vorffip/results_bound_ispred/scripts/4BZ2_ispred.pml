delete all 
    fetch 4BZ2.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 308+309+310+311+312+313+314+315+316+323+344+364+377+390+391+392+393+394+396
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 355+354+396+298+301+352+395+299+351+350+317+318+323+300+357+297+349+325+368+353+394+346+303
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4BZ2/4BZ2_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit