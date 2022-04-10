delete all 
    fetch 5KVG.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 309+310+311+312+313+314+331+333+334+335+336+337+368+370+371+393+394+395+396+397
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 323+301+382+299+300+298+303+357+322+366+302+359+347+304+353+404+305+403+402+377+354+401+384
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5KVG/5KVG_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit