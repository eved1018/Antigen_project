delete all 
    fetch 4UTC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 274+310+311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 301+311+297+345+215+107+212+373+347+76+374+217+298+375+299+300+108+106+392+78+346+316+103+102+263+390+314+104+101+109+344+351+350+266
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4UTA/4UTA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit