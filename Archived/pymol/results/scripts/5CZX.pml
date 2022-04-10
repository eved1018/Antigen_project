delete all 
    fetch 5CZX.A


    set cartoon_transparency,0.75


    select ann2, resi 1440+1463+1466+1467+1468+1469+1470+1471+1472+1474+1486+1487+1619+1621
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 1556+1435+1471+1388+1408+1474+1432+1518+1431+1578+1559+1577+1557+1389+1547+1548+1423+1396+1553+1393+1581+1552+1558+1550+1434+1387+1583+1390+1400
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 4ZLP.A
    set cartoon_transparency,0.75


    select ann, resi 1440+1463+1466+1467+1468+1469+1470+1471+1472+1474+1486+1487+1619+1621
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 1556+1474+1554+1471+1559+1434+1583+1557+1470+1634+1505+1435+1637+1468+1386+1487+1506+1593+1486+1635+1548+1581+1549+1508+1408+1431+1546+1636+1388
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 5CZX.A, 4ZLP.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/5CZX_4ZLP.png,width=900, height=900,dpi = 350,ray=1
    quit