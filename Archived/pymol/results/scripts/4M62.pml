delete all 
    fetch 4M62.S


    set cartoon_transparency,0.75


    select ann2, resi 8+56+60+75+100+101+119+120+121+122+123+124+125+127+128
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 120+60+128+121+127+119+124+125+123+56+132+79+16+131+13+77+11+122+156+152+153+100+118+10+78
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


    select ann, resi 8+56+60+75+100+101+119+120+121+122+123+124+125+127+128
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
    




    align 4M62.S, 3LF6.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4M62_3LF6.png,width=900, height=900,dpi = 350,ray=1
    quit