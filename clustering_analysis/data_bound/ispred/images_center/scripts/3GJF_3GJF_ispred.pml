delete all 
    fetch 3GJF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 58+62+65+66+69+72+73+150+151+155+158+163+166+167
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 248+229+188+228+206+234+236+232+226+192+227+242+250+253
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 115+17+10+105+138+76+88+48+167+142+96+85+120+35+23+122+27
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3GJF/3GJF_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit