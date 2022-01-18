delete all 
    fetch 4K94.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 317+318+319+320+329+330+331+332+334+336+358+360+362+364+365+366+372+376+378+380+381
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 316+310+406+367+366+402+365+354+368+381+351+319+318
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 458+462+415+416+417+419+418+424+420+421+423+422+457+456+455
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4K94/4K94_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit