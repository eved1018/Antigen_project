delete all 
    fetch 4BZ1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 313+314+315+316+317+319+321+323+352+353+368+370
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 396+390+360+391+375+364+332+393+392+373+350+394+357+341+343+301+377+348+395+366+342+349+359
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4BZ1/4BZ1_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit