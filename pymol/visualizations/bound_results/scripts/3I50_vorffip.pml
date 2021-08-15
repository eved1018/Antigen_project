delete all 
    fetch 3I50.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 74+75+76+77+78+79+104+106+107+109+110
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 104+108+11+34+101+106+102+107+12+10+103+214+76+215+217+57+13+225+199+216+234+16+201+144+77+219+15+98+9+163+254
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3I50/3I50_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit