delete all 
    fetch 2ANY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 37+39+41+42+57+58+60+94+96+97+98+99+102+146+147+174+189+190+191+192+195+214+215+216+217+219+220+222+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 115+117+116+113+202+161+204+205+186+26+133+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 38+39+62+88+61+60+57+95+41+79+86+78+84+34+35+37+36
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4OGX/4OGX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit