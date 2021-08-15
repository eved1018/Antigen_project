delete all 
    fetch 1EGJ.A


    set cartoon_transparency,0.75


    select ann2, resi 362+363+364+365+366+367+395+416+418+419+421
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 363+421+367+364+418+366+365+362+419+416+338+420+368+361+422+339+370+423+393+415+360+369+340+395
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
    




    fetch 1C8P.A
    set cartoon_transparency,0.75


    select ann, resi 26+27+28+29+30+31+59+80+82+83+85
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 29+28+26+30+31+25+83+94+84+1+3+4+82+23+86+73+71+2+89+21+75+77+91+95
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
    




    align 1EGJ.A, 1C8P.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1EGJ_1C8P.png,width=900, height=900,dpi = 350,ray=1
    quit