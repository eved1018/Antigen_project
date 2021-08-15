delete all 
    fetch 2AEP.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 147+150+152+153+154+197+198+199+218+219+220+221+222+224+244+245+246+248+249+250+251
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 466+176+82+83+455+417+108+469+111+458+98+173+99+370+449+468+394+144+415+211+431+172+187+143+107+434+249+450+456+112+267+371
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2AEP/2AEP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit