delete all 
    fetch 4HF5.A


    set cartoon_transparency,0.75


    select ann2, resi 131+133+134+135+136+137+140+143+144+145+153+155+156+158+189+190+193+194+226
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 30+316+320+17+321+16+29+240+18+318+15+317+307+326+28+11+32+323+31+239+314+294+293+13+12+9+310+324+42+308+10+309
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
    




    fetch 2WRC.A
    set cartoon_transparency,0.75


    select ann, resi 130+132+133+134+135+136+139+142+143+144+152+154+155+157+188+189+192+193
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 417+409+424+421+431+423+435+412+420+405+331+406+416+332+428+427+453+307+413+434+23+24+239+330+457+456+419+402+391+426+432+404+347+407+470+389
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
    




    align 4HF5.A, 2WRC.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4HF5_2WRC.png,width=900, height=900,dpi = 350,ray=1
    quit