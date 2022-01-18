delete all 
    fetch 3VI3.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 77+78+79+80+81+82+83+84+85+119+120+151+154+155+156+158+399+400
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+14+388+403+80+383+382+81+83+82+79+385+384+85+386+444+443+330
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 275+274+270+264+271+272+266+173+180+182+178+179+190+269+293+290
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3VI3/3VI3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit