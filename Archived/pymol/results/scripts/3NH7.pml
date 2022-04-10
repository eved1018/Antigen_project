delete all 
    fetch 3NH7.A


    set cartoon_transparency,0.75


    select ann2, resi 43+60+62+64+67+74+77+78+79+80+81+84+86+90+91+92+93+94+95+96+97
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 80+85+91+92+84+48+49+50+82+86+88+95+79+110+89+73+103+117+83+39+97+109
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
    




    fetch 2K3G.A
    set cartoon_transparency,0.75


    select ann, resi 43+60+62+64+67+74+77+78+79+80+81+84+86+90+91+92+93+94+95+96+97
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 129+126+125+127+124+123+128+79+109+31+94+122+29+51+96+111+87+80+121+89+85+84+101+39
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
    




    align 3NH7.A, 2K3G.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3NH7_2K3G.png,width=900, height=900,dpi = 350,ray=1
    quit