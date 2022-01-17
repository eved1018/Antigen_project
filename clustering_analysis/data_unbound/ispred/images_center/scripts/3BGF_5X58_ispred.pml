delete all 
    fetch 5X58.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+362+392+424+426+427+485+486+487+488+489+490+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1055+660+1080+942+836+777+778+874+646+877+679+876+1064+1060+873+1061
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 470+316+458+502+462+503+160+404+377+159+367+428+164+416+365+417+546+354+369+547+155+356+154+408+347+443+330+442+124+326
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3BGF/3BGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit