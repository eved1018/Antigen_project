delete all 
    fetch 3LEV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 107+108+109+110+111+112+113+116+244
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 112+113+107+105+104+110+201+212+98+208+209+243+109+108+241+255+251+252
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 260+264+259+267+266+220+221+268+269
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3LEV/3LEV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit