delete all 
    fetch 4M62.S
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 8+56+60+75+100+101+119+120+121+123+124+125+127+128
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 128+131+100+60+127+124+150+61+101+149+125+121+59+102+120+148+132+92+93+156+153+103+157+94+65
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