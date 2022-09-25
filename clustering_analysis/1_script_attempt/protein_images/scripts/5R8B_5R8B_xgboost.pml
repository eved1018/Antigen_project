delete all 
                fetch 5R8B.A

                color blue 
                set cartoon_transparency,0.75


                select ann1, resi 19+20+21+22+23+25+27+29+31+34+35+37+38+39+64+65+66+86+87+88+129
                indicate bycalpha ann1
                create annotated1, indicate
                select ann2, resi 72+73+74+75+81+83+84+86+89+90+92+94+96+97+98+115+116+117+118
                indicate bycalpha ann2
                create annotated2, indicate
                select ann3, resi 20+21+22+23+24+25+27+64+65+66+67+74+81+82+84+85+86+87
                indicate bycalpha ann3
                create annotated3, indicate
                select ann4, resi 
                indicate bycalpha ann4
                create annotated4, indicate
                select ann5, resi 72+73+74+75+81+83+84+86+89+90+92+94+96+97+98+115+116+117+118
                indicate bycalpha ann5
                create annotated5, indicate
                select ann6, resi 
                indicate bycalpha ann6
                create annotated6, indicate
                select ann7, resi 
                indicate bycalpha ann7
                create annotated7, indicate
                select ann8, resi 72+73+74+75+81+83+84+86+89+90+92+94+96+97+98+115+116+117+118+10000000000
                indicate bycalpha ann8
                create annotated8, indicate
                select ann9, resi 
                indicate bycalpha ann9
                create annotated9, indicate


                select pred, resi 5+148+150+6+4+7+15+22+46+151+21+149+147+85+24+36+103+120+23+2+131+1+130+65+108+30
                indicate bycalpha pred
                create pred_res, indicate



                show sphere, annotated1
                color pink, annotated1
                set sphere_transparency, 0.5,annotated1
                show sphere, annotated2
                color blue, annotated2
                set sphere_transparency, 0.5,annotated2
                show sphere, annotated3
                color aquamarine, annotated3
                set sphere_transparency, 0.5,annotated3
                show sphere, annotated4
                color br3, annotated4
                set sphere_transparency, 0.5,annotated4
                show sphere, annotated5
                color br6, annotated5
                set sphere_transparency, 0.5,annotated5
                show sphere, annotated6
                color br9, annotated6
                set sphere_transparency, 0.5,annotated6
                show sphere, annotated7
                color brightorange, annotated7
                set sphere_transparency, 0.5,annotated7
                show sphere, annotated8
                color deepsalmon, annotated8
                set sphere_transparency, 0.5,annotated8
                show sphere, annotated9
                color violet, annotated9
                set sphere_transparency, 0.5,annotated9








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
                png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/protein_images/Images/5R8B/5R8B_xgboost.png,width=900, height=900,dpi = 350,ray=1
                quit