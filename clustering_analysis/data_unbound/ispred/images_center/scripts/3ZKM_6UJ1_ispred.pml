delete all 
    fetch 6UJ1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 254+255+258+259+261+262+263+265+270+271+272+275+276+277+278+280+281+283+289+293+319+332+334
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 288+328+270+264+272+375+374+376+377+378+295+292+286+287+285+291+284
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 303+304+305+307+306+388+383+396+394+385+384+392+386+387+393
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3ZKM/3ZKM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit