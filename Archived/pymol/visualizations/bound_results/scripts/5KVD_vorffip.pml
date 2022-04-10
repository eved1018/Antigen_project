delete all 
    fetch 5KVD.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 301+315+316+317+318+319+320+321+322+327+329+362+364+366+367+372+373+374+375+377
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 300+299+323+358+322+357+377+359+303+405+404+382+403+354+298+361+355+356+398+379+353+402+401
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5KVD/5KVD_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit