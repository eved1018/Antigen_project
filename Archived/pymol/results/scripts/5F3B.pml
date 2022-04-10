delete all 
    fetch 5F3B.C


    set cartoon_transparency,0.75


    select ann2, resi 25+30+31+33+34+35+36+83+85+87+91+92+93+94+95
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 49+27+31+52+46+55+50+66+42+29+93+20+59+62+48+99+51+98+54+100+63+60+28+12+22
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
    




    fetch 5NXS.A
    set cartoon_transparency,0.75


    select ann, resi 291+296+297+299+300+301+302+349+351+353+357+358+359+360+361
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 316+112+118+374+119+252+203+318+314+120+113+317+313+325+326+157+320+359+117+312+266+319+327+44+321+111+338+124+248+324+322+372+202
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
    




    align 5F3B.C, 5NXS.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5F3B_5NXS.png,width=900, height=900,dpi = 350,ray=1
    quit