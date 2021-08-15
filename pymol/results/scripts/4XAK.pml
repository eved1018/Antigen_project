delete all 
    fetch 4XAK.A


    set cartoon_transparency,0.75


    select ann2, resi 502+506+510+513+535+536+538+539+540+541+542+553+555+557
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 540+507+535+553+506+590+542+548+539+588+580+536+591+510+541+403+589+505+547+579+587+408+381+544+549+511+550+474+585
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
    




    fetch 7C02.A
    set cartoon_transparency,0.75


    select ann, resi 502+510+513+535+536+538+539+540+541+542+553+555+557
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 535+553+542+536+540+539+541+544+547+403+548+507+511+506+510+496+546+381+538+579+543+552+531+513+384+581+508+522
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
    




    align 4XAK.A, 7C02.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4XAK_7C02.png,width=900, height=900,dpi = 350,ray=1
    quit