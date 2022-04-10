delete all 
    fetch 5KVE.E


    set cartoon_transparency,0.75


    select ann2, resi 307+340+342+343+344+347+348+350+351+352+353+354+355+358+384+386
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 382+322+399+384+402+401+357+354+347+359+323+353+303+403+321+304+398+350+377+320+383+379+317
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
    




    fetch 5OMZ.A
    set cartoon_transparency,0.75


    select ann, resi 13+46+48+49+50+53+54+56+57+58+59+60+61+64+90+92
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 115+3+107+2+29+63+5+112+111+110+81+28+114+92+83+1+109+100+4+10+7+9+64+55+60
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
    




    align 5KVE.E, 5OMZ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5KVE_5OMZ.png,width=900, height=900,dpi = 350,ray=1
    quit