delete all 
    fetch 3U74.U
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 58+91+92+94+112+113+114+116+118+174
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['62+11+33+12+13+29+5+6+35+32+30+8+43+36+40+42+37+9+41+39+38+34+27+31+10+7']
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4QTI/4QTI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit