delete all 
    fetch 2QQN.A


    set cartoon_transparency,0.75


    select ann2, resi 294+295+296+297+298+299+302+318+319+321+323+324
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 426+332+333+400+425+402+335+427+398+274+322+376+334+323+364+399+392+397+370+380+275+424+378+374+377
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
    




    fetch 2QQI.A
    set cartoon_transparency,0.75


    select ann, resi 294+295+296+297+298+299+302+318+319+321+323+324
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 392+394+272+511+274+276+571+277+481+480+390+455+396+509+273+535+570+456+471+479+568+477+376+510+482+478+572+377+398+422+429+391
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
    




    align 2QQN.A, 2QQI.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2QQN_2QQI.png,width=900, height=900,dpi = 350,ray=1
    quit