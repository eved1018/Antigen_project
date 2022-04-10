delete all 
    fetch 1M6B.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 72+93+96+99+101+102+104+106+129+132+145+153+154+155+156+158+159+162
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['569+575+242+62+570+579+562+57+245+253+246+56+568+61+8+82+36+60+571+567+37+577+244+58+573+81+572+560+38+59+576+580+574']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4LEO/4LEO_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit