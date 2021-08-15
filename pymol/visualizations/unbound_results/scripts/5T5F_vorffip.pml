delete all 
    fetch 2KC0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 82+84+85+87+89+91+115+117+118+119+121+122+123
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 255+149+130+94+93+124+126+151+114+80+185+92+89+125+69+128+112+122+123+192+150+152+87+113+77+215+148+95+97+169+75
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5T5F/5T5F_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit