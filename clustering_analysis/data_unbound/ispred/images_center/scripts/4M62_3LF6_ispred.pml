delete all 
    fetch 3LF6.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 8+56+60+75+100+101+119+120+121+122+123+124+125+127+128
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 10+160+148+149+158+156+157+150+153+147+152
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 128+102+60+64+59+121+120+122+127+132+124+125+131+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4M62/4M62_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit