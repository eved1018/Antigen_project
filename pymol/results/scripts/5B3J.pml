delete all 
    fetch 5B3J.D


    set cartoon_transparency,0.75


    select ann2, resi 31+32+33+34+55+56+57+58+59+60+61+65+66+67+92
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 195+311+197+330+165+313+325+166+312+164+196+194+176+322+193+167+114+177+118+326+175+205+163+217+333+310+241+331+328+337+110+329
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
    




    fetch 3JPY.A
    set cartoon_transparency,0.75


    select ann, resi 32+33+34+55+56+57+58+59+60+61+65+66+67+92
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 390+389+166+252+387+391+165+175+164+388+253+251+393+204+392+162+110+179+330+254+327+61+311+331+177+255+206+114+194+167+195+163
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
    




    align 5B3J.D, 3JPY.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5B3J_3JPY.png,width=900, height=900,dpi = 350,ray=1
    quit