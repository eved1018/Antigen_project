delete all 
    fetch 4FFY.A


    set cartoon_transparency,0.75


    select ann2, resi 300+301+334+336+337+338+339+340+342+343+344+345+346+347+349+350+351+370+371+372+379+382+383+384+386
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 334+300+299+301+338+337+392+375+390+336+346+350+330+355+332+373+382+391+394+357+354+395+303
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
    




    fetch 3IRC.A
    set cartoon_transparency,0.75


    select ann, resi 300+301+334+336+337+338+339+340+342+343+344+345+346+347+349+350+351+370+371+372+379+382+383+384+386
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 301+334+299+350+300+298+296+397+396+394+398+392+297+399+351+332+317+316+352+395+337+338+355
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
    




    align 4FFY.A, 3IRC.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4FFY_3IRC.png,width=900, height=900,dpi = 350,ray=1
    quit