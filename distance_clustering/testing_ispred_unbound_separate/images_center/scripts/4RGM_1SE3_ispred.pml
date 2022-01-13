delete all 
    fetch 1SE3.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 18+19+20+22+23+26+29+30+31+58+59+60+88+90+110+177+178
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 12+135+141+142+143+144+177+178+18+181+20+22+23+236+25+26+9
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 102+109+110+32+45+57+58+59+90+91+92+94
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4RGM/4RGM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit