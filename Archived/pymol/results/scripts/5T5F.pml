delete all 
    fetch 5T5F.A


    set cartoon_transparency,0.75


    select ann2, resi 82+84+85+87+89+91+115+117+118+119+121+122+123
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 89+87+84+117+88+85+82+90+121+115+122+123+91+118+83+120+119+86+116+124+113+52+81+51+126+246+241+217
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 2KC0.A
    set cartoon_transparency,0.75


    select ann, resi 82+84+85+87+89+91+115+117+118+119+121+122+123
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 255+149+130+94+93+124+126+151+114+80+185+92+89+125+69+128+112+122+123+192+150+152+87+113+77+215+148+95+97+169+75
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 5T5F.A, 2KC0.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5T5F_2KC0.png,width=900, height=900,dpi = 350,ray=1
    quit