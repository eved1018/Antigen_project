delete all 
    fetch 2ANY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 37+39+41+42+57+58+60+94+96+97+98+99+102+146+147+174+189+190+191+192+195+214+215+216+217+219+220+222+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 113+115+116+117+119+133+161+186+202+204+205+26
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 34+35+36+37+38+39+41+57+60+61+62+78+79+84+86+88+95
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4OGX/4OGX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit