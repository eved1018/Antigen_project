delete all 
    fetch 5KVF.E


    set cartoon_transparency,0.5


    select ann2, resi 307+340+342+343+344+347+348+350+351+352+353+354+355+358+391
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 357+323+407+322+405+359+382+399+304+303+354+406+377+403+379+347+338+358+401+355+317+353+305
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color brown, annotated2
    set sphere_transparency, 0.1,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color orange, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 5OMZ.A
    set cartoon_transparency,0.75


    select ann, resi 13+46+48+49+50+53+54+56+57+58+59+60+61+64+97
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 115+3+107+2+29+63+5+112+111+110+81+28+114+92+83+1+109+100+4+10+7+9+64+55+60
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.7,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    



    super 5OMZ.A, 5KVF.E





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/5KVF_5OMZ.png,width=900, height=900,dpi = 350,ray=1
    quit