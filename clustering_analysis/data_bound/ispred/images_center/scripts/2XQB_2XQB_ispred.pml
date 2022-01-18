delete all 
    fetch 2XQB.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 22+23+26+38+41+44+45+46+48+49+52+53+55+64+67+68+71+72+75+88+89+93
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 112+113+111+75+72+81+4+6+83+84+34
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+16+17+49+57+56+55+45+52+53+21+23
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2XQB/2XQB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit