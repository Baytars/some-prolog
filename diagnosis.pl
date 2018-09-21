hasTheSymptom(Disease,Symptom) :- indicatesTheDisease(Symptom,Disease).

hasTheSymptom(房间隔缺损,火柴梗征).
hasTheSymptom(二尖瓣狭窄,城墙样改变).

symptom(发热).
symptom(寒战)
symptom(结膜充血).
symptom(单纯疱疹).
symptom(淋巴结肿大).
symptom(肝肿大).
symptom(脾肿大).
symptom(出血).
symptom(关节肿痛).
symptom(皮疹).
symptom(昏迷).

hasTheAbbreviation('ventricular septal defect','VSD').

indicatesTheLesionOf(反跳痛,腹膜壁,'反跳痛是腹膜壁层已受炎症累及的征象，当突然抬手时腹膜被激惹所致，是腹内器官病变累及邻近腹膜的标志').
indicatesTheDisease(肝震颤,肝棘球蚴病).

hasTheEnglishTranslation(胃泡鼓音区,'Traube space').
hasTheEnglishTranslation(幻觉,hallucination).
hasTheEnglishTranslation(妄想,delusion).
hasTheEnglishTranslation(原发性妄想,'primary delusion').
hasTheEnglishTranslation(发热,fever).
hasTheEnglishTranslation(稽留热,'continued fever').
hasTheEnglishTranslation(弛张热,'remittent fever').
hasTheEnglishTranslation(间歇热,'intermittent fever').
hasTheEnglishTranslation(波状热,'undulant fever').
hasTheEnglishTranslation(回归热,'recurrent fever').
hasTheEnglishTranslation(不规则热,'irregular fever').
hasTheEnglishTranslation(组织间液,'extracellular fluid').

includes(妄想,原发性妄想).
includes(发热,稽留热).
includes(发热,弛张热).
includes(发热,间歇热).
includes(发热,波状热).
includes(发热,回归热).
includes(发热,不规则热).

hasTheSymptom(胰头癌,库瓦西耶征).

hasTheContraindication(增强CT,碘过敏).
hasTheContraindication(青霉素,青霉素过敏).
hasTheContraindication('X线',怀孕).

isOccupationallyRelatedWith(布氏杆菌病,屠夫).
