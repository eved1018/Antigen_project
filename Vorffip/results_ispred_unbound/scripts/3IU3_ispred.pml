delete all 
    fetch 6VWU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 139+140+142+143+144+160+161+163+165+167+176+179+180+181+183+185+186+194+195+258
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 77+59+74+29+58+89+88+30+60+189+81+289+188+273+84+191+57+32+287+278+190+87+192+276+23+70+271+34+85+277
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3IU3/3IU3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit