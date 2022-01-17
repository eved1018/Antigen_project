delete all 
    fetch 3U74.U
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 185+186+187+188+189+190+191+192+217+218+220+267+269
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+103+13+12+10+38+39+11+71+9+8+66+42+4+40+7+41+91+34+37+36+32
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 129+277+203+198+208+140+281+279+278
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/2FD6/2FD6_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit