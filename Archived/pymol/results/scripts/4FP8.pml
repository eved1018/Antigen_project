delete all 
    fetch 4FP8.A


    set cartoon_transparency,0.75


    select ann2, resi 98+131+133+134+135+136+137+145+153+155+156+186+189+190+192+193+194+226+228
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 301+110+300+299+269+294+114+309+109+43+298+224+94+307+308+62+221+266+91+305+222+63+106+75+267+105+223+78+95+208
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


    select ann, resi 98+131+133+134+135+136+137+145+153+155+156+186+189+190+192+193+194+226+228
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
    




    align 4FP8.A, 6WXB.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4FP8_6WXB.png,width=900, height=900,dpi = 350,ray=1
    quit