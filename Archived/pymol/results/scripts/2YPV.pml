delete all 
    fetch 2YPV.A


    set cartoon_transparency,0.75


    select ann2, resi 41+126+128+130+214+215+217+218+219+220+221+239+241+242+243+244+245+246+248
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 91+90+89+114+123+82+126+88+124+92+128+81+243+41+43+113+244+125+130+79+246+42+215+80+44+256+127+214
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


    select ann, resi 41+126+128+130+214+215+217+218+219+220+221+239+241+242+243+244+245+246+248
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
    




    align 2YPV.A, 2KC0.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2YPV_2KC0.png,width=900, height=900,dpi = 350,ray=1
    quit