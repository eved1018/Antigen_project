delete all 
    fetch 3T59.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+37+38+71+72+74+75+77+78+81+82+84+85+142+143+144+145+146+148
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 289+504+510+511+506+299+412+401+428+548+547+431+542+519+295+296+292+523+522+293+291+520+521+509+290
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 261+248+258+270+265+256+255+245+246+253+247
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5D93/5D93_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit