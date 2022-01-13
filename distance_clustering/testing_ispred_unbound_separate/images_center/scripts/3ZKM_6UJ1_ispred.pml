delete all 
    fetch 6UJ1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 254+255+258+259+261+262+263+265+270+271+272+275+276+277+278+280+281+283+289+293+319+332+334
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 264+270+272+284+285+286+287+288+291+292+295+328+374+375+376+377+378
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 303+304+305+306+307+383+384+385+386+387+388+392+393+394+396
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3ZKM/3ZKM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit