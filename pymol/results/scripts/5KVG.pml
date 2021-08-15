delete all 
    fetch 5KVG.E


    set cartoon_transparency,0.75


    select ann2, resi 309+310+311+312+313+314+331+333+334+335+336+337+368+370+371+393+394+395+396+397
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 323+301+382+299+300+298+303+357+322+366+302+359+347+304+353+404+305+403+402+377+354+401+384
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


    select ann, resi 15+16+17+18+19+20+37+39+40+41+42+43+74+76+77+99+100+101+102+103
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
    




    align 5KVG.E, 5OMZ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5KVG_5OMZ.png,width=900, height=900,dpi = 350,ray=1
    quit