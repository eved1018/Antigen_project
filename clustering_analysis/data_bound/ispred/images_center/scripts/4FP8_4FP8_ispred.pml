delete all 
    fetch 4FP8.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+133+134+135+136+137+145+153+155+156+186+189+190+192+193+194+226+228
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+103+106+107+259+111+105+104+110+62+214+216+217+207+57+142+94+81+143+141+92+144+145+78+255+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 49+294+296+291
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4FP8/4FP8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit