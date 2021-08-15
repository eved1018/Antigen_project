delete all 
    fetch 5K9K.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+38+318+344+345+347+348+349+350+363+364+367+370+371+374+375+377
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 407+405+29+423+404+367+143+219+409+104+222+500+216+107+412+403+375+30+406+435+144+376+408+221+371+94+141+378+57+379+214+106+62+110+92+363
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5K9K/5K9K_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit