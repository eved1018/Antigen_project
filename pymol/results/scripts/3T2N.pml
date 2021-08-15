delete all 
    fetch 3T2N.A


    set cartoon_transparency,0.75


    select ann2, resi 252+317+320+321+323+324+325+326+327+328+329+330+331+333+341+383+384+385+386+387
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 207+383+328+327+385+413+187+210+341+250+325+386+249+353+384+239+415+326+171+296+246+208+206+247+203+185+342+351+188+329+186+417
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
    




    fetch 5CE1.A
    set cartoon_transparency,0.75


    select ann, resi 253+317+320+321+323+324+325+326+327+328+329+330+331+333+341+383+384+385+386+387
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 378+353+349+348+350+377+379+381+302+301+254+380+376+188+187+203+351+383+347+300+388+331+250+171+99+208+413+343+375+210+100+386
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
    




    align 3T2N.A, 5CE1.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3T2N_5CE1.png,width=900, height=900,dpi = 350,ray=1
    quit