delete all 
    fetch 6U49.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 173+179+181+182+183+185+186+187+188+189+190+191+200+263+264+266
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 11+12+13+19+20+227+26+27+28+3+35+56+6+7+9
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 109+110+111+113+114+116+118+120+125+133+140+142+144+145+146+149
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4U6V/4U6V_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit