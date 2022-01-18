delete all 
    fetch 5MVZ.U
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 20+21+22+23+24+25+27+64+65+66+67+74+81+82+84+85+86+87
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 106+111+73+72+142+55+145+147+135+120+127+133+126+118+130+131+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 88+149+66+56+150+151+91+152
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5MVZ/5MVZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit