delete all 
    fetch 5HDQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 234+243+250+251+252+253+254+255+256+257+258+259+260+272
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 112+113+111+176+228+174+173+197+231+109+120+252+118+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 277+103+270+271+148+159+156+94+154+55+150+151+93+147+152+35
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5HDQ/5HDQ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit