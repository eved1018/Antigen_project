delete all 
    fetch 5SY8.O
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 64+73+79+118+119+120+121+124+125+127+128+131+134
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 131+127+128+120+132+121+150+124+148+60+102+122+162+101+165+125+164+104+103+59+147+153+135+160+61
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5SY8/5SY8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit