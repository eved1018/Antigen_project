delete all 
    fetch 1MHP.A


    set cartoon_transparency,0.75


    select ann2, resi 157+158+160+192+218+219+220+221+222+223+224+259+261+263+264
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 264+222+225+223+160+262+265+333+261+263+157+192+161+193+336+267+279+215+287+219+217+158+313+332+183+145
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
    




    fetch 1CK4.A
    set cartoon_transparency,0.75


    select ann, resi 157+158+160+192+220+221+223+224+259+261+263+264
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 222+192+288+160+292+265+157+289+218+223+294+293+163+158+161+268+264+291+225+267+290+162+261+220+219+215
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
    




    align 1MHP.A, 1CK4.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1MHP_1CK4.png,width=900, height=900,dpi = 350,ray=1
    quit