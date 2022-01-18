delete all 
    fetch 3HI1.J
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 109+112+210+255+257+365+366+367+368+370+371+375+376+382+384+421+424+426+429+473+474+475+476
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+459+461+460+280+457
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 300+201+200+202+438+203+429+428+206+204+199+198+205+432+427+431+434+437+436+121+120+122+123+442+124+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3HI1/3HI1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit