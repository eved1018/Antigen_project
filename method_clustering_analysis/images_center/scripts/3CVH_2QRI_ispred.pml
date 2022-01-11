delete all 
    fetch 2QRI.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 62H+65H+68H+72H+73H+76H+79H+80H+146H+149H+150H+154H+155H+158H+159H+162H+163H
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['257H+200H+195H+106H+3H+110H+197H+108H+226H+256H+220H+1H+222H+219H+218H+198H+224H+193H+107H+258H+105H+248H+227H+109H+223H+221H+196H+199H+225H+228H+194H+103H+104H+2H']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3CVH/3CVH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit