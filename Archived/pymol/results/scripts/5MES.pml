delete all 
    fetch 5MES.A


    set cartoon_transparency,0.75


    select ann2, resi 174+205+208+308+309+310+311+313+317+318+320+322
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 318+321+231+320+308+223+319+252+260+266+235+263+310+249+248+317+224+322+227+309+234+215+262+253+230
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
    




    fetch 5KU9.A
    set cartoon_transparency,0.75


    select ann, resi 174+205+208+308+309+310+311+313+317+318+320+322
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 318+321+319+320+231+252+322+317+234+248+223+235+260+215+249+233+305+262+230+309+316+251+208+259+266
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
    




    align 5MES.A, 5KU9.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5MES_5KU9.png,width=900, height=900,dpi = 350,ray=1
    quit