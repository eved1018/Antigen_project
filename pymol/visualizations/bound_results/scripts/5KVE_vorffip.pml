delete all 
    fetch 5KVE.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 307+340+342+343+344+347+348+350+351+352+353+354+355+358+384+386
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 382+322+399+384+402+401+357+354+347+359+323+353+303+403+321+304+398+350+377+320+383+379+317
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5KVE/5KVE_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit