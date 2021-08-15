delete all 
    fetch 4UTA.B


    set cartoon_transparency,0.75


    select ann2, resi 274+310+311
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 395+348+346+394+373+396+107+16+101+15+347+345+398+108+392+344+350+338+106+20+397+13+393+18+102+375+301+209+104+266+14+22+279+374
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
    




    fetch 4UTC.A
    set cartoon_transparency,0.75


    select ann, resi 274+310+311
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 101+106+107+108+346+104+347+348+301+338+15+102+349+373+20+77+350+286+375+297+103+345+300+337+284+334+246+395+13+105+211+19+36+393
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
    




    align 4UTA.B, 4UTC.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4UTA_4UTC.png,width=900, height=900,dpi = 350,ray=1
    quit