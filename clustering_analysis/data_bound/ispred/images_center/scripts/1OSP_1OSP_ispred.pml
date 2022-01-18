delete all 
    fetch 1OSP.O
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+33+34+35+43+44+45+46+52+69+70+71+92+93+94+95+117+118+119
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 261+260+258+259+273+214+216+217+206+236+232+226+179+231+184+230+218+257+256+269+255+253
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 39+61+60+64+57+23+26+32+33
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1OSP/1OSP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit