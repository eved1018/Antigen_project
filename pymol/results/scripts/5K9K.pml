delete all 
    fetch 5K9K.I


    set cartoon_transparency,0.75


    select ann2, resi 18+38+318+344+345+347+348+349+350+363+364+367+370+371+374+375+377
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 412+404+409+410+405+402+403+406+416+62+500+496+423+407+420+408+78+413+208+60+411+492+75+339+94+399+222+214+63+321+6+401+30+212+415+499
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
    




    fetch 6WXB.A
    set cartoon_transparency,0.75


    select ann, resi 18+38+318+344+345+347+348+349+350+363+364+367+370+371+374+375+377
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 456+423+405+225+29+406+188+403+409+500+412+453+434+30+420+198+104+438+431+415+424+234+107+421+413+238+221+222+82+445+103+214+216+391+449+419
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
    




    align 5K9K.I, 6WXB.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5K9K_6WXB.png,width=900, height=900,dpi = 350,ray=1
    quit