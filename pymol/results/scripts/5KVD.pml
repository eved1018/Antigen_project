delete all 
    fetch 5KVD.E


    set cartoon_transparency,0.75


    select ann2, resi 301+315+316+317+318+319+320+321+322+327+329+362+364+366+367+372+373+374+375+377
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 300+299+323+358+322+357+377+359+303+405+404+382+403+354+298+361+355+356+398+379+353+402+401
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


    select ann, resi 7+21+22+23+24+25+26+27+28+33+35+68+70+72+73+78+79+80+81+83
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
    




    align 5KVD.E, 5OMZ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5KVD_5OMZ.png,width=900, height=900,dpi = 350,ray=1
    quit