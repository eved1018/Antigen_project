delete all 
    fetch 1LK3.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 39+71+74+75+78+79+82+83+125+128+129+130+131+132+133+134+136+137
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 129+39+43+82+41+45+79+86+78+44+46+85+84+34+35+127+133+132+126+130+131
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+156+109
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1LK3/1LK3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit