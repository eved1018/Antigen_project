delete all 
    fetch 3PNW.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 566+567+579+580+581+582+586+588+590+592+593+594+595+597+598+599
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 567+573+572+570+571+597+568+569+596+594+608+595
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 607+552+551+583+554+555+582+581
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3PNW/3PNW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit