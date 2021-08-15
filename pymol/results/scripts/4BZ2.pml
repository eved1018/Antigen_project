delete all 
    fetch 4BZ2.A


    set cartoon_transparency,0.75


    select ann2, resi 308+309+310+311+312+313+314+315+316+323+344+364+377+390+391+392+393+394+396
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 298+375+396+392+345+334+346+300+373+360+347+317+359+361+350+374+299+394+395+393+352+330+354
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
    




    fetch 3WE1.A
    set cartoon_transparency,0.75


    select ann, resi 587+588+589+590+591+592+593+594+595+602+623+643+656+669+670+671+672+673
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 671+669+652+654+670+672+673+621+667+629+593+580+656+595+577+668+653+649+622+613+591+597+628
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
    




    align 4BZ2.A, 3WE1.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4BZ2_3WE1.png,width=900, height=900,dpi = 350,ray=1
    quit