delete all 
    fetch 5K9K.I
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+38+318+344+345+347+348+349+350+363+364+367+370+371+374+375+377
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 412+404+409+410+405+402+403+406+416+62+500+496+423+407+420+408+78+413+208+60+411+492+75+339+94+399+222+214+63+321+6+401+30+212+415+499
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5K9K/5K9K_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit