delete all 
    fetch 2AEP.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 147+150+152+153+154+197+198+199+218+219+220+221+222+224+244+245+246+248+249+250+251
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 466+112+107+111+176+172+370+371+173+143+431+144+434+108+468+469
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 458+249+267+449+415+98+417+99+211+83+394+82+187+450+456+455
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2AEP/2AEP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit