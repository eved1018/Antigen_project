delete all 
    fetch 4UTC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 274+310+311
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+106+107+108+346+104+347+348+301+338+15+102+349+373+20+77+350+286+375+297+103+345+300+337+284+334+246+395+13+105+211+19+36+393
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4UTA/4UTA_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit