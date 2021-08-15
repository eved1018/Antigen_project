delete all 
    fetch 4NNP.A


    set cartoon_transparency,0.75


    select ann2, resi 230+231+232+233+234+235+237+238+239+241+242+262+266
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 237+266+238+234+262+241+239+180+235+267+265+233+130+245+242+224+190+268+128+51+113+232+230+260+198+173+236+228+176+172
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


    select ann, resi 230+231+232+233+234+235+237+238+239+241+242+262+266
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
    




    align 4NNP.A, 4NNO.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4NNP_4NNO.png,width=900, height=900,dpi = 350,ray=1
    quit