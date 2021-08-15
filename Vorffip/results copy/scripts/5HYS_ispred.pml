delete all 
    fetch 5HYS.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 373+374+375+376+377+378+379+380+412+414+417+419+430
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 508+506+539+453+525+446+486+454+499+489+510+456+448+491+457+455+458+450+540+487+488+459+492+452+544+542+497+444+501
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5HYS/5HYS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit