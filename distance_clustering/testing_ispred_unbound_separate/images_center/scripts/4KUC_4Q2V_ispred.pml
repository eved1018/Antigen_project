delete all 
    fetch 4Q2V.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 53+92+98+99+101+102+105+106+109+112+113+114+116
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 112+157+189+19+194+195+196+23+26+5+65+67
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 182+183+222+223+225+227+228+229+241+243+244+247+249+251+259+263+41
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4KUC/4KUC_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit