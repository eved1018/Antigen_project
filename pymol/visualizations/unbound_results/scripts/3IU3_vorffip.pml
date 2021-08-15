delete all 
    fetch 6VWU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 139+140+142+143+144+160+161+163+165+167+176+179+180+181+183+185+186+194+195+258
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 274+277+302+303+156+266+276+275+150+268+273+300+264+271+278+154+77+5+74+73+149+88+243+241+270+89+78+272+269+80
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3IU3/3IU3_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit