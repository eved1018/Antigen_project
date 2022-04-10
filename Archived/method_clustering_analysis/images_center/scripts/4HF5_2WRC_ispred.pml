delete all 
    fetch 2WRC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 130+132+133+134+135+136+139+142+143+144+152+154+155+157+188+189+192+193
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['399+405+400+470+404+407+458+417+413+460+469+414+468+471+401+398+409+412+103+472+402+397+415+416+455+104+411+410+396+406+457+403+419+459+408']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4HF5/4HF5_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit