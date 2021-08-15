delete all 
    fetch 4L5F.E


    set cartoon_transparency,0.75


    select ann2, resi 305+306+307+309+310+325+326+327+328+329+330+361+362
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 301+300+299+334+297+298+332+392+350+355+348+368+352+393+316+373+317+370+346+375+394+354+351
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


    select ann, resi 305+306+307+309+310+325+326+327+328+329+330+361+362
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
    




    align 4L5F.E, 3IRC.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4L5F_3IRC.png,width=900, height=900,dpi = 350,ray=1
    quit