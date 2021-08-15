delete all 
    fetch 4GT7.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 373+374+375+376+377+378+379+380+412+414+417+419+430
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 508+506+448+453+450+496+451+463+454+465+504+493+499+335+452+467+446+339+431+494+427+447+492+491+428+430+497+334+455
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5HYS/5HYS_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit