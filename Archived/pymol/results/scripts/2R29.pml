delete all 
    fetch 2R29.A


    set cartoon_transparency,0.75


    select ann2, resi 305+306+307+308+309+310+311+312+325+327+362+364+387+388+389+390
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 345+300+301+347+334+351+350+349+348+299+355+298+338+373+346+370+354+352+372+317+353+343+357
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 1OAN.A
    set cartoon_transparency,0.75


    select ann, resi 305+306+307+308+309+310+311+312+325+327+362+364+387+388+389+390
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 107+104+101+108+392+106+348+375+391+195+103+342+102+373+77+191+390+16+20+15+105+346+211+282+284+22+347+349+98+74+76+13+299+210
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 2R29.A, 1OAN.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2R29_1OAN.png,width=900, height=900,dpi = 350,ray=1
    quit