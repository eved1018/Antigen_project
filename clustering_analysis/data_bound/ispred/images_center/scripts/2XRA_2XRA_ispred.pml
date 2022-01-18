delete all 
    fetch 2XRA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 564+565+567+568+569+571+572+574+575+578+579+1643+4570+4573+4574+4577
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 3633+4564+4570+564+4567+565+571+575+4577+4575+1627+1633+1626+4578+568
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 1655+3647+1657+3643+3657+4549+547+4546+4553+4557+557+1661
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2XRA/2XRA_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit