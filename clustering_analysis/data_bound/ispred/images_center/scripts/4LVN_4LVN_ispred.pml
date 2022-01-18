delete all 
    fetch 4LVN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 363+364+365+367+387+390+391+393+394+395+396+397+401+408+410+454
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 464+465+467+466+462+463+417+426+427+579+425+418+578+421+580+423+524+494+495+520+468+469+496
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 589+601+444+443+442+440+441
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4LVN/4LVN_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit