delete all 
    fetch 1QFU.A


    set cartoon_transparency,0.75


    select ann2, resi 48+49+50+59+60+62+63+74+75+78+79+90+92+94+143+271+272+273+274
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 321+316+17+319+15+75+317+320+14+323+60+300+29+314+315+42+110+299+18+303+62+273+302+269+16+78+94+90+27+266+307+308
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


    select ann, resi 48+49+50+59+60+62+63+74+75+78+79+90+92+94+143+271+272+273+274
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
    




    align 1QFU.A, 6WXB.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/1QFU_6WXB.png,width=900, height=900,dpi = 350,ray=1
    quit