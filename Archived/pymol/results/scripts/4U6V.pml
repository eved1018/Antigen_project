delete all 
    fetch 4U6V.A


    set cartoon_transparency,0.75


    select ann2, resi 173+179+181+182+183+185+186+187+188+189+190+191+200+263+264+266
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 200+188+180+181+179+16+201+14+191+190+187+182+178+120+194+121+15+189+199+138+13+137+47+177+141+12+35+28+113+68
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
    




    fetch 6U49.A
    set cartoon_transparency,0.75


    select ann, resi 173+179+181+182+183+185+186+187+188+189+190+191+200+263+264+266
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 142+118+120+123+140+144+132+113+136+200+121+141+135+5+117+124+112+189+188+110+180+145+138+122+134+179+125+114+6+139+147
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
    




    align 4U6V.A, 6U49.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4U6V_6U49.png,width=900, height=900,dpi = 350,ray=1
    quit