delete all 
    fetch 4FFY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 300+301+334+336+337+338+339+340+342+343+344+345+346+347+349+350+351+370+371+372+379+382+383+384+386
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 383+352+346+384+351+355+347+382+301+357+354+350+385+330+311+344+366+303+313+353+341+343+314
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4FFY/4FFY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit