delete all 
    fetch 3NFP.K
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+4+5+6+25+27+42+43+118+120+149+152+153+154
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+115+116+112+113+111+39+62+63+60+64+43+109+108+37+36
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+12+143+135+134+136+137+133
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3NFP/3NFP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit