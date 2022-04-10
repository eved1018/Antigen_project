delete all 
    fetch 2ZZQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 476+477+479+484+485+496+497+499+510+512+513+514+515+534+573+574+575+576+577+578
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['561+121+531+535+562+118+120+119+563+534+584+550+543+536+553+554+567+533+566+489+532+548+564+123+549+551+544+530+122+565+552']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3RKD/3RKD_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit