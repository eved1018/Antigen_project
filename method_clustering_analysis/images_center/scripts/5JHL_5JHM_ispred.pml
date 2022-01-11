delete all 
    fetch 5JHM.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 76+77+101+102+104+106+107+108
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['272+384+399+400+405+108+404+266+380+269+102+211+324+274+273+383+105+270+106+401+385+320+107+103+267+402+381+104+382+100+406+265+403+271+268+101']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5JHL/5JHL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit