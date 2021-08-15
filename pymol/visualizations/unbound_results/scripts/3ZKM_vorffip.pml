delete all 
    fetch 6UJ1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 254+255+258+259+261+262+263+265+270+271+272+275+276+277+278+280+281+283+289+293+319+332+334
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 283+282+329+322+292+284+327+176+127+280+330+279+331+265+63+287+328+175+285+62+272+375+291+270+65+28+288+278+201+275+264+128
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3ZKM/3ZKM_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit