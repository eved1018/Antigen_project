delete all 
    fetch 4HD9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+3+35+36+37+39+41+71+73+74+75+77+78+79+80+81+82+83+84
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 102+139+138+176+189+200+202+174+175+161+203+181+142+141+140+183+187+178+92+135+134+137
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 81+84+32+33+31+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4HCR/4HCR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit