delete all 
    fetch 4UTA.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 274+310+311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 76+108+107+210+311+346+109+301+101+209+74+102+212+103+345+297+8+222+77+396+224+17+262+106+7+215+211+78+313+397+104+195+310+266
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