delete all 
    fetch 2Q8A.A


    set cartoon_transparency,0.75


    select ann2, resi 186+187+188+189+190+194+196+197+199+200+201+202+203+204+205+208+222+223+224+225+235
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 223+190+186+188+397+189+344+329+261+327+109+201+260+110+187+228+319+224+184+251+225+315+200+185+325+355+202+204+258+183+354
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
    




    fetch 1Z40.A
    set cartoon_transparency,0.75


    select ann, resi 186+187+188+189+190+194+196+197+199+200+201+202+203+204+205+208+222+223+224+225+235
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 109+379+201+223+187+188+110+189+360+325+413+261+381+315+397+204+327+356+355+354+389+380+202+344+260+186+382+421+378+419+177
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
    




    align 2Q8A.A, 1Z40.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2Q8A_1Z40.png,width=900, height=900,dpi = 350,ray=1
    quit