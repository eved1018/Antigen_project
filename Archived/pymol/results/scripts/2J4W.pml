delete all 
    fetch 2J4W.D


    set cartoon_transparency,0.75


    select ann2, resi 427+428+431+432+433+434+435+436+437+450+451+452
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 446+441+439+454+452+422+421+423+448+449+453+451+425+442+450+445+440+433
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
    




    fetch 1W8K.A
    set cartoon_transparency,0.75


    select ann, resi 427+428+431+432+433+434+435+436+437+450+451+452
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 196+168+169+202+219+218+135+170+473+87+179+208+209+335+105+216+207+104+474+82+84+134+86+472+128+217+199+181+124+106+88+83+197
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
    




    align 2J4W.D, 1W8K.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/2J4W_1W8K.png,width=900, height=900,dpi = 350,ray=1
    quit