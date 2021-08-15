delete all 
    fetch 5KW9.A


    set cartoon_transparency,0.75


    select ann2, resi 346+347+348+349+350+351+362+380+381+382+383+384+385+394+396+397+398
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 510+312+311+313+404+511+335+509+478+310+356+508+414+512+305+337+336+400+505+453+455+403+286+334+275+229+399+368+375+506
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
    




    fetch 3BY2.A
    set cartoon_transparency,0.75


    select ann, resi 346+347+348+349+350+351+362+380+381+382+383+384+385+394+396+397
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 510+414+509+312+511+508+512+335+311+410+455+404+336+505+334+368+313+356+412+506+230+337+478+413+504+310+408+370+286+411
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
    




    align 5KW9.A, 3BY2.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5KW9_3BY2.png,width=900, height=900,dpi = 350,ray=1
    quit