delete all 
    fetch 4F2M.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 524+525+526+527+528+529+530+532+571+630+631+632
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 529+528+573+572+571+574+576+635+530+524+526+527
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 510+511+512+605+604+603+602+600+601+556+653+650+508+509
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4F2M/4F2M_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit