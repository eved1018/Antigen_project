delete all 
    fetch 5TZU.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 29+31+32+34+35+36+37+39+46+51+53+54+97+99+100+101+102+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+114+14+16+17+13+11+18
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+101+102+106+104+71+72+5+54+55+34+35+26+32+27+31
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5TZU/5TZU_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit