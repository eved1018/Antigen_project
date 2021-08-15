delete all 
    fetch 2GMF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 10+11+12+13+15+16+17+20+21+24+83+86+87+119+120
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 50+16+98+119+99+11+20+115+49+21+78+13+6+100+121+48+51+28+30+10+124+7+17+79
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5D70/5D70_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit