delete all 
    fetch 1EO8.A


    set cartoon_transparency,0.75


    select ann2, resi 50+59+60+62+63+74+75+78+79+82+90+92+94+271+273
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 317+316+30+321+15+17+320+294+18+299+300+319+28+269+29+62+110+310+307+301+10+60+16+13+308+318+309+12+311+325+293+14
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


    select ann, resi 50+59+60+62+63+74+75+78+79+82+90+92+94+271+273
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
    




    align 1EO8.A, 6WXB.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1EO8_6WXB.png,width=900, height=900,dpi = 350,ray=1
    quit