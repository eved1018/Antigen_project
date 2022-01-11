delete all 
    fetch 7KNA.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 122+123+124+125+128+130+131+173+175+262
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['569+587+575+583+561+570+579+585+578+563+588+589+584+568+591+581+567+571+577+566+592+564+573+590+572+576+580+574+586+565']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4F15/4F15_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit