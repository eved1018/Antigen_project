delete all 
    fetch 4ZPW.R
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 398+400+496+527+528+529+530+531+532+535+536+539+540+542+543+549
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 401+422+423+424+429+430+431+495+535+536+537+539+540+560+561+562
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 506+507+508+509+510+511+546+547+548+549+550+553
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4ZPT/4ZPT_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit