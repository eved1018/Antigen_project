delete all 
    fetch 5HDQ.A


    set cartoon_transparency,0.75


    select ann2, resi 234+243+250+251+252+253+254+255+256+257+258+259+260+272
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 163+39+107+269+221+277+225+222+229+35+26+27+220+30+144+112+113+147+218+148+152+177+45+278+224+16+156+41+149+254
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
    




    fetch 4NNO.A
    set cartoon_transparency,0.75


    select ann, resi 251+260+267+268+269+270+271+272+273+274+275+276+277+289
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 239+246+96+70+73+194+113+294+52+123+121+161+134+196+55+238+180+32+190+135+165+198+292+189+131+199+71+222+95+248
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
    




    align 5HDQ.A, 4NNO.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5HDQ_4NNO.png,width=900, height=900,dpi = 350,ray=1
    quit