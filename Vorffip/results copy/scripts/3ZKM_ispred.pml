delete all 
    fetch 3ZKM.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 254+255+258+259+261+262+263+265+267+268+269+270+271+272+276+277+278+280+281+283+289+293+319+332+334
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 323+282+266+277+329+284+330+119+327+322+267+95+127+271+273+270+81+93+77+272+280+80+326+276+16+79+63+194+128+362+39+269+288
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3ZKM/3ZKM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit