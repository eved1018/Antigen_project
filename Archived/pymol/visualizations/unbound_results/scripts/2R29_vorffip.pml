delete all 
    fetch 1OAN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 305+306+307+308+309+310+311+312+325+327+362+364+387+388+389+390
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 107+104+101+108+392+106+348+375+391+195+103+342+102+373+77+191+390+16+20+15+105+346+211+282+284+22+347+349+98+74+76+13+299+210
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2R29/2R29_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit