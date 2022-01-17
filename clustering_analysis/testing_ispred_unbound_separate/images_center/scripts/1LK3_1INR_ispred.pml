delete all 
    fetch 1INR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 71+74+75+78+79+82+83+125+128+129+130+131+132+133+134+136+137
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+23+27+30+31+36+48+52+53+56+60+72+86
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 121+128+133+136+137+139+141+142+144+148+151+154+156
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/1LK3/1LK3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit