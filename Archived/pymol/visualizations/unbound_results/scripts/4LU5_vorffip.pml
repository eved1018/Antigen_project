delete all 
    fetch 3K7B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 116+117+118+119+154+155+156+157+165+170+171+172+173+174+175
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 143+104+106+147+105+102+103+98+101+146+112+141+100+116+177+184+114+99+185+107+142+161
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4LU5/4LU5_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit