delete all 
    fetch 5E8E.H
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 339+344+345+346+380+382+388+389+390+391+393+398
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 538+329+389+397+433+394+431+395+434+390+436+393+478+443+331+330+536
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 470+465+471+473+367+366+370+371+342+408+409+468+469
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5E8E/5E8E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit