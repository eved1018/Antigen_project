delete all 
    fetch 6U49.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 173+179+181+182+183+185+186+187+188+189+190+191+200+263+264+266
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 28+13+12+11+9+56+6+7+3+227+20+35+26+27+19
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+116+113+111+110+149+142+140+144+145+146+109+120+133+118+125
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4U6V/4U6V_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit