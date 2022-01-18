delete all 
    fetch 5TZT.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 3+27+35+37+101+102+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+114+115+14+116+17+62+89+88+61+60+64+85
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+103+102+106+105+104+56+3+26+32+27+31
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5TZT/5TZT_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit