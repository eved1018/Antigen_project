delete all 
    fetch 4YK4.E


    set cartoon_transparency,0.75


    select ann2, resi 135+136+137+153+159+190+192+193+194+196+198+226
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 74+80+55+75+76+77+82+101+81+149+117+212+211+98+221+73+72+210+229+97+223+256+231+233+220+160+79+115
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


    select ann, resi 135+136+137+153+159+190+192+193+194+196+198+226
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
    




    align 4YK4.E, 6CHX.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4YK4_6CHX.png,width=900, height=900,dpi = 350,ray=1
    quit