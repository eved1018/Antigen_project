delete all 
    fetch 4HKX.E


    set cartoon_transparency,0.75


    select ann2, resi 134+135+136+137+153+155+158+159+160+187+189+190+192+193+194+196+219+225+226
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 211+101+231+98+97+76+52+82+210+100+99+75+74+196+208+53+73+55+78+212+72+233+207+192+209+117+77+84
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


    select ann, resi 134+135+136+137+153+155+158+159+160+187+189+190+192+193+194+196+219+225+226
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
    




    align 4HKX.E, 6CHX.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4HKX_6CHX.png,width=900, height=900,dpi = 350,ray=1
    quit