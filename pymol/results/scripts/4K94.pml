delete all 
    fetch 4K94.C


    set cartoon_transparency,0.75


    select ann2, resi 317+318+319+320+329+330+331+332+334+336+358+360+362+364+365+366+372+376+378+380+381
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 318+312+353+320+351+354+352+316+317+420+507+422+418+319+350+505+419+458+355+322+508+484+324+485+408+486+371+456
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
    




    fetch 2EC8.A
    set cartoon_transparency,0.75


    select ann, resi 317+318+319+320+329+330+331+332+334+336+358+360+362+364+365+366+372+376+378+380+381
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 418+504+426+425+351+505+422+352+421+506+503+13+507+316+320+456+15+318+354+16+12+14+423+349+319+420+324+441+469+467+416+40+317+442+454+181+455
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
    




    align 4K94.C, 2EC8.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4K94_2EC8.png,width=900, height=900,dpi = 350,ray=1
    quit