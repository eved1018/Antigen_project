delete all 
    fetch 3WIH.A


    set cartoon_transparency,0.75


    select ann2, resi 18+19+49+50+51+52+53+54+55+56+68+70+71
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 50+53+68+70+52+51+36+54+71+47+67+48+62+30+63+60+17+45+65+61+49+38
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
    




    fetch 4HLJ.A
    set cartoon_transparency,0.75


    select ann, resi 792+822+823+824+825+826+827+828+829+841+843+844
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 843+823+825+661+841+662+664+663+660+844+824+826+756+767+827+666+746+835+703+836+665+821+667+769+724+818+755+883+868
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
    




    align 3WIH.A, 4HLJ.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3WIH_4HLJ.png,width=900, height=900,dpi = 350,ray=1
    quit