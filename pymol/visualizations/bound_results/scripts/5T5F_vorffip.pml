delete all 
    fetch 5T5F.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 82+84+85+87+89+91+115+117+118+119+121+122+123
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 89+87+84+117+88+85+82+90+121+115+122+123+91+118+83+120+119+86+116+124+113+52+81+51+126+246+241+217
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