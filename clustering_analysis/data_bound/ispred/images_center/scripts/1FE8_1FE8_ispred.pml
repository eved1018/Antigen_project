delete all 
    fetch 1FE8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 962+963+966+981+982+983+984+985+986+987+989+990+993+994+996+997+1023+1024+1026
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1090+1044+937+1040+1042+1043+942+943+941+940+1009+1039+1004+1006+974+975+1003+1067+1065+938
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 921+923+1051+1056+983+963+962
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1FE8/1FE8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit