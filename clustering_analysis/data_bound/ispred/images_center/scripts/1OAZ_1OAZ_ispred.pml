delete all 
    fetch 1OAZ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+34+35+37+41+43+46+47+48+87+88+89+106+107+108+109+112
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 100+101+102+105+11+83+82+87+78+85+84+121
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 38+49+48+43+42+40+41+45+51+44+46+47+35
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1OAZ/1OAZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit