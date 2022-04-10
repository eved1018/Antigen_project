delete all 
    fetch 4AL8.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 310+313+314+315+316+317+321+352+354+364+368
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 301+300+392+334+298+299+394+337+348+395+351+390+373+330+393+332+384+316+355+336+317+375+346
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4AL8/4AL8_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit