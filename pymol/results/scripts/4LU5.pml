delete all 
    fetch 4LU5.B


    set cartoon_transparency,0.75


    select ann2, resi 116+117+118+119+154+155+156+157+168+170+171+172+173+174+175
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 143+141+104+147+106+98+105+102+103+146+100+101+142+140+116+120+112+177+145+185+118+117
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
    




    fetch 3K7B.A
    set cartoon_transparency,0.75


    select ann, resi 116+117+118+119+154+155+156+157+165+170+171+172+173+174+175
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 143+104+106+147+105+102+103+98+101+146+112+141+100+116+177+184+114+99+185+107+142+161
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
    




    align 4LU5.B, 3K7B.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/4LU5_3K7B.png,width=900, height=900,dpi = 350,ray=1
    quit