delete all 
    fetch 1N8Z.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 557+558+560+561+569+570+571+572+573+591+593+596+598+600+602+603+604
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 502+477+488+529+567+603+602+427+547+568+594+451+490+527+480+456+483
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 316+260+89+176+202+175+161+367+169+187+179+186+257+241+296+245+319+250+252+332+327
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1N8Z/1N8Z_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit