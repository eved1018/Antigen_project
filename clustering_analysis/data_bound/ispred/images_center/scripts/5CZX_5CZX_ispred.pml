delete all 
    fetch 5CZX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1440+1463+1466+1467+1468+1469+1470+1471+1472+1474+1486+1487+1619+1621
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 1442+1468+1469+1441+1444+1435+1620+1436+1432+1618+1615+1463+1470+1471+1459
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 1481+1482+1484+1557+1556+1590+1547+1592+1549+1577+1502+1503+1500+1504
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/5CZX/5CZX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit