delete all 
    fetch 3ZKM.A


    set cartoon_transparency,0.75


    select ann2, resi 254+255+258+259+261+262+263+265+267+268+269+270+271+272+275+276+277+278+280+281+283+289+293+319+332+334
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 329+282+127+126+269+268+272+267+62+327+270+274+266+322+271+279+328+63+323+281+280+292+262+95+119+275+291+277+278+333+334+265+28
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
    




    fetch 6UJ1.A
    set cartoon_transparency,0.75


    select ann, resi 254+255+258+259+261+262+263+265+270+271+272+275+276+277+278+280+281+283+289+293+319+332+334
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 283+282+329+322+292+284+327+176+127+280+330+279+331+265+63+287+328+175+285+62+272+375+291+270+65+28+288+278+201+275+264+128
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
    




    align 3ZKM.A, 6UJ1.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3ZKM_6UJ1.png,width=900, height=900,dpi = 350,ray=1
    quit