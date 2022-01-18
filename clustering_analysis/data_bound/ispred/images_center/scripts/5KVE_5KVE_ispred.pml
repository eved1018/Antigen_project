delete all 
    fetch 5KVE.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 307+340+342+343+344+347+348+350+351+352+353+354+355+358+384+386
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 338+304+305+307+361+362+364
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 315+348+377+401+399+402+359+355+382+357+381+384+386+379+323+321
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5KVE/5KVE_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit