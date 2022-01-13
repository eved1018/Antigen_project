delete all 
    fetch 4OSN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 131+359+360+361+362+379+380+381+382+383+386+388+422
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 383+384+385+386+398+405+406+409+411+415+416+417
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 121+354+356+358+359+360+365+367+369+372+373+374
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4OT1/4OT1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit