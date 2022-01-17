delete all 
    fetch 1MJD.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 60+62+63+64+93+94+95+96+130+132+134+135+136
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 39+49+48+43+42+41+45+44+47
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 139+111+110+63+98+66+94+143+141+96+144+145+93+137+131
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5IKC/5IKC_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit