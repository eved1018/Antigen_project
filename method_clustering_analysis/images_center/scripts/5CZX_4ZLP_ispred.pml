delete all 
    fetch 4ZLP.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1440+1463+1466+1467+1468+1469+1470+1471+1472+1474+1486+1487+1619+1621
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['1547+1548+1469+1637+1593+1549+1550+1598+1636+1594+1596+1551+1472+1595+1466+1468+1597+1635+1470+1599+1553+1552+1473+1592+1471+1634+1467+1591']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5CZX/5CZX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit