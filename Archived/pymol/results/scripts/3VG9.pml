delete all 
    fetch 3VG9.A


    set cartoon_transparency,0.75


    select ann2, resi 33+34+35+36+37+39+41+42+102+110+113+216+217+221+222+223+224+227+228+231+235+292+293+294+297+298+301
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 270+306+304+10+267+303+300+180+7+108+307+179+115+176+111+8+183+264+290+266+127+199+103+6+70+262+144+110+271+124+175+169
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
    




    fetch 3RFM.A
    set cartoon_transparency,0.75


    select ann, resi 33+34+35+36+37+39+41+42+102+110+113+216+217+221+222+223+224+227+228+231+292+293+294+297+298+301
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 270+108+257+303+67+115+169+264+199+10+143+267+263+198+110+272+304+290+9+296+8+123+68+29+33+179+12+300+205+258+75+103
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
    




    align 3VG9.A, 3RFM.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3VG9_3RFM.png,width=900, height=900,dpi = 350,ray=1
    quit