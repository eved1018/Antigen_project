delete all 
    fetch 1IGL.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 7+9+10+11+12+14+15+17+26+34+35+40+43+44+45+47+48+49+59
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+12+10+11+57+5+43+4+7+2+53+18
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 38+63+65+41+23+22+26+31+25
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3KR3/3KR3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit