delete all 
    fetch 1EZV.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 123+124+126+127+130+131+132+133+134+142+143+144+147+148+149+150+151
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 39+60+59+57+42+55+35+37+36+32+33
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 63+77+75+70+164+71+65+67+66+80+81+83+79+86+87+78+84
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1EZV/1EZV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit