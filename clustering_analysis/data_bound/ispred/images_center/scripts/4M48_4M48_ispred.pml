delete all 
    fetch 4M48.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 90+337+338+498+502+505+506+508+509+511+512+513+514+598
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 263+301+300+304+310+305+517+298+139+404+401+346+347+518+295+297+521
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 458+106+489+111+598+572+566+570+558+576+577+579+597+555+569+580+524+496
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4M48/4M48_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit