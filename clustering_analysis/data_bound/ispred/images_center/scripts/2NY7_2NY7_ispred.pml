delete all 
    fetch 2NY7.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 280+281+365+366+367+368+369+371+372+373+384+386+417+419+430+431+432+455+456+472+473+474+475
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+103+473+89+411+367+372+400+366+370+365+371+368+369+85+280+457
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+116+106+113+110+207+204+205+208+436+109+120+118+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2NY7/2NY7_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit