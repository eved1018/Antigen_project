delete all 
    fetch 3GI8.C


    set cartoon_transparency,0.75


    select ann2, resi 1+3+4+5+6+305+307+309+310+311+312+313+316+318+319+435
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 396+141+399+182+395+400+179+142+123+403+116+184+152+325+374+421+176+422+180+326+185+187+1+392+57+138+181+372+4+153+130+271+375
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
    




    fetch 3GIA.A
    set cartoon_transparency,0.75


    select ann, resi 3+4+5+6+305+307+309+310+311+312+313+316+318+319+435
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 396+399+123+179+395+400+116+325+375+141+187+176+421+422+142+180+184+374+152+182+112+122+377+418+372+363+326+175+407+336+12+226+402
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
    




    align 3GI8.C, 3GIA.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3GI8_3GIA.png,width=900, height=900,dpi = 350,ray=1
    quit