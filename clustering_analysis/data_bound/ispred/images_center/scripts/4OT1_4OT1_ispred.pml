delete all 
    fetch 4OT1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 131+359+360+361+362+379+380+381+382+383+386+388+422
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 413+361+406+360+374+376+363+367+415+372+358+416+365+359+354+369+380+356
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 201+203+383+384+344+133
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4OT1/4OT1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit