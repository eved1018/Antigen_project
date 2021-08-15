delete all 
    fetch 1H0D.C


    set cartoon_transparency,0.75


    select ann2, resi 34+35+36+37+38+39+40+41+83+85+86+87+88+89+90+91+93
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 89+121+88+71+123+69+38+37+66+90+70+86+5+118+87+91+85+122+67+41+114+95+2+68
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
    




    fetch 1HBY.A
    set cartoon_transparency,0.75


    select ann, resi 34+35+36+37+38+39+40+41+83+85+86+87+88+89+90+91+93
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 87+82+123+89+40+121+95+12+41+86+5+97+101+8+84+102+114+119+88+100+85+122+68+37
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
    




    align 1H0D.C, 1HBY.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1H0D_1HBY.png,width=900, height=900,dpi = 350,ray=1
    quit