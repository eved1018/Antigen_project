delete all 
    fetch 3LF6.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 8+56+60+75+100+101+119+120+121+122+123+124+125+127+128
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 128+157+131+121+158+124+125+122+156+149+150+153+160+127+60+148+120+132+64+102+147+59+119+10+152
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4M62/4M62_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit