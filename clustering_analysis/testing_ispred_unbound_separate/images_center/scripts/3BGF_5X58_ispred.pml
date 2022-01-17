delete all 
    fetch 5X58.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 359+362+392+424+426+427+485+486+487+488+489+490+491+492+494
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 124+154+155+159+160+164+316+326+330+347+354+356+365+367+369+377+404+408+416+417+428+442+443+458+462+470+502+503+546+547
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 1055+1060+1061+1064+1080+646+660+679+777+778+836+873+874+876+877+942
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3BGF/3BGF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit