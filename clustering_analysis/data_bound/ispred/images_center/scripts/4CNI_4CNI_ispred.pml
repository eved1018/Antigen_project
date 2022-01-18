delete all 
    fetch 4CNI.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 47+48+57+103+104+106+152+153+154+155+156+157+158+159+160
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 128+77+171+172+182+82+183+79+179+20+23+22+27+19+124+125+18
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 63+60+156+142+143+157+155+150+153
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4CNI/4CNI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit