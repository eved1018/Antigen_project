delete all 
    fetch 3BGF.A


    set cartoon_transparency,0.5


    select ann2, resi 359+362+392+424+426+427+485+486+487+488+489+490+491+492+494 +33
    indicate bycalpha ann2
    create trip, indicate


    select pred, resi 442+476+475+443+479+491+436+484+470+486+360+354+469+472+471+459+489+440+359+330+361+488+379+358+378+473+480
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, trip
    color black, trip
    set sphere_transparency, 1,trip


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 5X58.A
    set cartoon_transparency,0.75


    select ann, resi 359+362+392+424+426+427+485+486+487+488+489+490+491+492+494
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 443+476+503+1103+417+578+491+504+442+681+1071+470+47+416+741+475+886+415+480+360+405+1084+557+837+459+995+436+1073+1096+1083+689+48+151+149+1023+46+687+469+1064+984+1079+1070+484+489+958+1104
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color grey, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 3BGF.A,5X58.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/3BGF_5X58.png,width=900, height=900,dpi = 350,ray=1
    quit