delete all 
    fetch 1XIW.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 35+44+45+46+47+48+49+56+57+78+80+81+82+83+84+85+86
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 14+17+12+89+88+74+80+41+92
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 100+101+102+70+98+99+94+97+96+69+20+21+22+19
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1XIW/1XIW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit