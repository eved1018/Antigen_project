delete all 
    fetch 5UGY.A


    set cartoon_transparency,0.75


    select ann2, resi 95+134+135+136+137+138+145+153+155+156+158+159+160+187+188+189+190+192+193+194+196+222+225+226+227
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 9+7+8+6+4+24+11+322+12+311+10+264+211+309+326+308+149+324+98+256+317+212+104+119+72+101+76+208+103+321+51+36
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
    




    fetch 6CHX.A
    set cartoon_transparency,0.75


    select ann, resi 95+134+135+136+137+138+145+153+155+156+158+159+160+187+188+189+190+192+193+194+196+222+225+227
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 211+82+52+53+72+76+81+101+55+117+212+210+75+98+83+209+73+74+97+208+201+264+192+77+196+207+160+262
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
    




    align 5UGY.A, 6CHX.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5UGY_6CHX.png,width=900, height=900,dpi = 350,ray=1
    quit