delete all 
    fetch 4H8W.G


    set cartoon_transparency,0.75


    select ann2, resi 51+52+53+58+60+69+71+72+73+74+75+76+77+78+79+103+106+107+114
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 200+434+202+423+199+432+53+201+122+120+75+121+44+73+492+123+198+72+327+491+427+246+425+71+220+368+76+86+84+78+369+371
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


    select ann, resi 51+52+53+58+60+69+71+72+73+74+75+76+77+78+79+103+106+107+114
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
    




    align 4H8W.G, 4DVV.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4H8W_4DVV.png,width=900, height=900,dpi = 350,ray=1
    quit