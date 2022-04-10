delete all 
    fetch 4JR9.A


    set cartoon_transparency,0.75


    select ann2, resi 12+15+16+17+19+24+25+27+28+29+32
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 98+293+94+231+99+36+379+315+454+349+292+187+232+337+380+295+97+103+456+32+257+121+402+336+455+377+348+409+384+303+307+311+125
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
    




    fetch 4U4W.A
    set cartoon_transparency,0.75


    select ann, resi 12+15+16+17+19+24+25+27+28+29+32
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 231+315+36+32+255+99+193+94+454+232+456+337+457+191+319+293+98+196+121+349+103+197+252+455+348+347+192+39+253+384+451+311+350
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
    




    align 4JR9.A, 4U4W.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4JR9_4U4W.png,width=900, height=900,dpi = 350,ray=1
    quit