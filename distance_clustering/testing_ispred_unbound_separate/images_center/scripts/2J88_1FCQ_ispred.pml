delete all 
    fetch 1FCQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 138+140+142+143+144+145+146+147+148+149
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 113+124+128+131+139+140+142+143+145+146+147+163+204+63+64+82+88+89+93
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 259+272+273+296+30+310+311+312+39+42+43+48
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/2J88/2J88_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit