delete all 
    fetch 5SY8.O


    set cartoon_transparency,0.75


    select ann2, resi 64+73+79+118+119+120+121+124+125+127+128+131+134
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 120+128+121+125+60+124+119+56+153+131+15+11+79+165+16+122+164+156+127+123+77+157+163+152+132
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
    




    fetch 3LF6.A
    set cartoon_transparency,0.75


    select ann, resi 64+73+79+118+119+120+121+124+125+127+128+134
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 120+60+128+121+56+152+15+124+131+125+77+156+7+153+132+160+16+119+157+127+10+129+59+100+13
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
    




    align 5SY8.O, 3LF6.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5SY8_3LF6.png,width=900, height=900,dpi = 350,ray=1
    quit