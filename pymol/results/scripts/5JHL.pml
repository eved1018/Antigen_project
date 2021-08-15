delete all 
    fetch 5JHL.A


    set cartoon_transparency,0.75


    select ann2, resi 76+77+101+102+104+106+107+108
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 107+104+382+401+108+101+15+347+106+13+322+323+18+20+348+77+384+225+12+10+102+57+403+22+355+399+14+11+398+6+4+16+357+103
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
    




    fetch 5JHM.A
    set cartoon_transparency,0.75


    select ann, resi 76+77+101+102+104+106+107+108
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 108+101+107+106+15+13+20+102+382+22+11+347+16+353+104+292+399+18+225+354+355+76+384+404+405+323+322+357+10+381+36+406+403+57
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
    




    align 5JHL.A, 5JHM.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5JHL_5JHM.png,width=900, height=900,dpi = 350,ray=1
    quit