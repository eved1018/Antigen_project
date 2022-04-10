delete all 
    fetch 3LF6.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 8+56+60+75+100+101+119+120+121+122+123+124+125+127+128
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 120+60+128+121+56+152+15+124+131+125+77+156+7+153+132+160+16+119+157+127+10+129+59+100+13
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4M62/4M62_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit