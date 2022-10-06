delete all 
                fetch 3TGT.A

                color blue 
                set cartoon_transparency,0.75


                select ann1, resi 96+97+275+280+281+282+283+365+366+367+368+369+371+372+373+384+419+420+421+423+455+469+472+473+474+480
                indicate bycalpha ann1
                create annotated1, indicate
                select ann2, resi 123+124+280+281+282+283+365+366+367+368+369+370+371+425+426+427+428+429+430+431+432+455+456+457+458+459+460+469+471+472+473+474+477
                indicate bycalpha ann2
                create annotated2, indicate
                select ann3, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+456+457+458+459+469+472+480
                indicate bycalpha ann3
                create annotated3, indicate
                select ann4, resi 97+122+123+124+257+278+279+280+281+282+365+366+367+368+370+371+425+426+427+430+431+432+455+456+457+458+459+460+461+465+466+467+469+471+474
                indicate bycalpha ann4
                create annotated4, indicate
                select ann5, resi 97+124+275+276+278+279+280+281+282+283+365+366+367+368+371+429+431+455+456+457+458+459+461+462+469+473+476
                indicate bycalpha ann5
                create annotated5, indicate
                select ann6, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+457+458+459+471+472+480
                indicate bycalpha ann6
                create annotated6, indicate
                select ann7, resi 97+98+99+102+122+123+124+276+278+279+280+281+282+365+366+367+368+371+427+430+431+432+455+456+457+458+460+461+465+466+467+469+474+476+480+10000000000
                indicate bycalpha ann7
                create annotated7, indicate
                select ann8, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+456+457+458+459+469+472+480+10000000000
                indicate bycalpha ann8
                create annotated8, indicate
                select ann9, resi 96+102+275+276+277+278+279+280+281+282+365+367+368+370+371+425+426+427+455+456+457+458+459+461+471+472+473+480+10000000000
                indicate bycalpha ann9
                create annotated9, indicate


                select pred, resi 53+61+75+327+425+437+367+221+71+368+369+328+77+432+247+62+76+220+436+73+275+351+326+282+280+434+325+415+423+51+50+324
                indicate bycalpha pred
                create pred_res, indicate



                show sphere, annotated1
                color pink, annotated1
                set sphere_transparency, 0.3,annotated1
                show sphere, annotated2
                color blue, annotated2
                set sphere_transparency, 0.3,annotated2
                show sphere, annotated3
                color aquamarine, annotated3
                set sphere_transparency, 0.3,annotated3
                show sphere, annotated4
                color br3, annotated4
                set sphere_transparency, 0.3,annotated4
                show sphere, annotated5
                color br6, annotated5
                set sphere_transparency, 0.3,annotated5
                show sphere, annotated6
                color br9, annotated6
                set sphere_transparency, 0.3,annotated6
                show sphere, annotated7
                color brightorange, annotated7
                set sphere_transparency, 0.3,annotated7
                show sphere, annotated8
                color deepsalmon, annotated8
                set sphere_transparency, 0.3,annotated8
                show sphere, annotated9
                color violet, annotated9
                set sphere_transparency, 0.3,annotated9








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
                png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/1_script_attempt/protein_images/Images/3TGT/3TGT_xgboost.png,width=900, height=900,dpi = 350,ray=1
                quit