delete all 
    fetch 4AL8.C


    set cartoon_transparency,0.75


    select ann2, resi 310+313+314+315+316+317+321+352+354+364+368
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 301+300+392+334+298+299+394+337+348+395+351+390+373+330+393+332+384+316+355+336+317+375+346
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
    




    fetch 4GSX.A
    set cartoon_transparency,0.75


    select ann, resi 310+313+314+315+316+317+321+352+354+364+368
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 12+10+286+20+194+9+101+22+300+132+15+299+18+8+398+13+334+348+401+297+301+16+392+298+191+211+96+189+106+220+215+110+107+192+108
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
    




    align 4AL8.C, 4GSX.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4AL8_4GSX.png,width=900, height=900,dpi = 350,ray=1
    quit