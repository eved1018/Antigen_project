delete all 
    fetch 4KUC.A


    set cartoon_transparency,0.75


    select ann2, resi 53+92+98+99+101+102+105+106+109+112+113+114+116
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 115+116+243+240+241+118+114+154+161+234+250+246+251+247+157+152+156+153+229+257+183+117+235+236+54+244+91+189+105+94
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
    




    fetch 4Q2V.A
    set cartoon_transparency,0.75


    select ann, resi 53+92+98+99+101+102+105+106+109+112+113+114+116
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 115+116+243+240+157+194+250+247+156+234+241+193+154+251+196+161+118+114+160+246+91+153+94+155+41+113+158+244+223
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
    




    align 4KUC.A, 4Q2V.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4KUC_4Q2V.png,width=900, height=900,dpi = 350,ray=1
    quit