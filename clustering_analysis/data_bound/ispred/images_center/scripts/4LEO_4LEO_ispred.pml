delete all 
    fetch 4LEO.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 72+93+96+99+101+102+104+106+129+132+145+153+154+155+156+158+159+162
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+101+249+102+62+163+200+60+48+203+204+72+205+94+81+95+91+255+251+244+252+118+124+125+18+253
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 472+466+516+461+460+415+414+354+355+357+356+320+321
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4LEO/4LEO_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit