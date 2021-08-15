delete all 
    fetch 5KJR.G


    set cartoon_transparency,0.75


    select ann2, resi 51+52+53+54+71+72+73+74+75+76+77+78+103+106+107+217+221
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 53+75+423+432+76+73+411+410+44+427+207+120+115+434+68+206+45+72+492+114+208+437+71+422+379+408+409+433+74+435+395+394
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
    




    fetch 4DVV.A
    set cartoon_transparency,0.75


    select ann, resi 51+52+53+54+71+72+73+74+75+76+77+78+103+106+107+217+221
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 423+120+434+200+122+75+202+53+76+72+201+73+44+492+425+45+246+221+71+199+119+84+369+327+368+370+220+87+198+203+82+365
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
    




    align 5KJR.G, 4DVV.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5KJR_4DVV.png,width=900, height=900,dpi = 350,ray=1
    quit