delete all 
    fetch 3RFM.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+34+35+36+37+39+41+42+102+110+113+216+217+221+222+223+224+227+228+231+292+293+294+297+298+301
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+129+115+103+117+300+304+113+38+111+104+110+202+199+109+108+120+35+297+296+118+119+290
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 248+274+271+272+61+161+269+251+247
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3VG9/3VG9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit