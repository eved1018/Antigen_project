delete all 
    fetch 4K2U.A


    set cartoon_transparency,0.75


    select ann2, resi 149+152+153+156+160+161+162+164+167+168+169
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 280+265+213+231+220+112+184+189+233+53+272+217+52+230+216+27+192+281+228+224+221+24+279+51+165+277+164+11+25
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
    




    fetch 1ZRL.A
    set cartoon_transparency,0.75


    select ann, resi 149+152+153+156+160+161+162+167+168+169
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 227+231+228+366+230+223+34+224+365+234+422+364+452+441+433+220+336+13+134+436+440+448+552+434+55+554+435+338+451+30+415+135+15+363+444+27+437+413
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
    




    align 4K2U.A, 1ZRL.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4K2U_1ZRL.png,width=900, height=900,dpi = 350,ray=1
    quit