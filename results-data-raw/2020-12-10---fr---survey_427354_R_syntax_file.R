data <- read.csv("survey_427354_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8")


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "Seed"
names(data)[5] <- "q_"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "startdate"
names(data)[6] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "datestamp"
names(data)[7] <- "datestamp"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "Il s\'agit d\'une étude portant sur deux comportements : faire de l\'exercice physique et ne pas fumer. Pour chaque comportement, nous allons vous poser 16 questions pour avoir un aperçu de ce que vous en pensez. Cette étude faire partie d\'une étude internationale dont l\'objectif est de comparer les déterminants de ces comportements entre les pays.  Par exemple, est-ce que c\'est aussi plaisant d\'adopter chacun de ces comportements, ou encore que font les autres ? Et est-ce que c\'est identique en France et aux Pays-Bas, en Finlande ou en Croatie ?"
names(data)[8] <- "intro"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Cette étude a été paramétrée pour que toutes les données soient collectées de manière anonyme. Il est donc impossible de tracer vos réponses. Vous pouvez arrêter votre participation à tout moment. Si vous avez des questions, vous pouvez les poser à ciberlite@a-bc.eu. Seulement les adultes de plus de 18 ans peuvent participer à cette étude. En acceptant de participer, vous indiquez que vous avez lu et compris ce texte, que vous avez plus de 18 ans d\'âge, et que vous consentez à ce que vos données soient utilisées sous couvert d\'anonymat à des fins de recherche."
data[, 9] <- factor(data[, 9], levels=c("yes","no"),labels=c("Oui, j\'accepte de participer.", "Non, je refuse de participer."))
names(data)[9] <- "informedConsent"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "Merci d\'avoir participé à l\'étude !  Votre contribution nous aide à comprendre la motivation et le comportement humain, et à quel degrée est-ce que c\'est stable ou différent en fonction du comportement, du pays ou de la culture.  Si vous souhaitez avoir plus d\'informations sur cette étude, vous pouvez consulter le répertoire Open Science Framework de cette étude via : https://osf.io/pr9dz/.  Vous pouvez maintenant fermer la fenêtre de votre navigateur."
names(data)[10] <- "thankYouParticip"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "Merci d\'avoir pris le temps d\'indiquer que vous ne préférez pas participer à cette étude.  Vous pouvez maintenant fermer la fenêtre de votre navigateur."
names(data)[11] <- "thankYouNonParticip"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "Quel âge avez-vous ?"
names(data)[12] <- "age"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "Quel est votre genre ?"
data[, 13] <- factor(data[, 13], levels=c(0,1,2),labels=c("Femme", "Homme", "Ne souhaite pas répondre"))
names(data)[13] <- "gender"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "[Other] Quel est votre genre ?"
names(data)[14] <- "gender_other"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "Êtes-vous actuellement étudiant(e) ?"
data[, 15] <- factor(data[, 15], levels=c(0,1,2),labels=c("Non, je ne suis aucune formation actuellement", "Oui, j\'étudie dans une formation professionnalisante (ou niveau similaire)", "Oui, j\'étudie à l\'université"))
names(data)[15] <- "educationPresent"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "Quel est le diplôme le plus élevé que vous ayez obtenu ?"
data[, 16] <- factor(data[, 16], levels=c(1,2,3,4),labels=c("Brevet des collèges ou équivalent (ou sans diplôme)", "Baccalauréat ou équivalent", "Bac +3 ou équivalent", "Bac +5 ou équivalent (ou supérieur)"))
names(data)[16] <- "educationPast"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "Avez-vous fait de l\'exercice physique pendant au moins une heure par semaine au cours du dernier mois ?"
data[, 17] <- factor(data[, 17], levels=c(0,1),labels=c("Non", "Oui"))
names(data)[17] <- "exerciseBehavior"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "Avez-vous consommé du tabac au cours du dernier mois ?"
data[, 18] <- factor(data[, 18], levels=c(0,1),labels=c("Non, je n’ai pas du tout fumé", "Oui, j’ai fumé"))
names(data)[18] <- "smokingBehavior"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[J\'ai l\'intention de faire de l\'exercice physique pendant au moins une heure par semaine au cours du mois à venir.Définitivement non|Définitivement oui] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 19] <- factor(data[, 19], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[19] <- "exerciseRAA_inInt"
# LimeSurvey Field type: F
data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "[Je ferai de l\'exercice physique au moins une heure par semaine au cours du mois à venir.Peu probable |Probable] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 20] <- factor(data[, 20], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[20] <- "exerciseRAA_inWll"
# LimeSurvey Field type: F
data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "[J’ai envie de faire de l\'exercice physique au moins une heure par semaine au cours du mois à venir.Faux|Vrai] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 21] <- factor(data[, 21], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[21] <- "exerciseRAA_inWln"
# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[Je prévois de faire de l\'exercice physique au moins une heure par semaine au cours du mois à venir.Absolument pas|Absolument] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 22] <- factor(data[, 22], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[22] <- "exerciseRAA_inPln"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Pour moi, faire de l’exercice physique au moins une heure par semaine au cours du mois à venir est...Mauvais|Bon] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 23] <- factor(data[, 23], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[23] <- "exerciseRAA_AttIg"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Pour moi, faire de l’exercice physique au moins une heure par semaine au cours du mois à venir est...Désagréable|Agréable] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 24] <- factor(data[, 24], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[24] <- "exerciseRAA_AttEp"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Pour moi, faire de l’exercice physique au moins une heure par semaine au cours du mois à venir est...Douloureux|Bénéfique] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 25] <- factor(data[, 25], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[25] <- "exerciseRAA_AttIb"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Pour moi, faire de l’exercice physique au moins une heure par semaine au cours du mois à venir est...Ennyeux|Intéressant] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 26] <- factor(data[, 26], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[26] <- "exerciseRAA_AttEi"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[La plupart des gens qui comptent pour moi pensent que je devrais faire de l’exercice physique au moins une heure par semaine au cours du mois à venir.Faux|Vrai] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 27] <- factor(data[, 27], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[27] <- "exerciseRAA_pnIim"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[La plupart des gens dont j’accorde de la valeur aux opinions . . . que je fasse de l’exercice physique au moins une heure par semaine au cours du mois à venir.Désapprouverait|Approuverait] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 28] <- factor(data[, 28], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[28] <- "exerciseRAA_pnIva"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[La plupart des gens que je respecte et admire vont pratiquer de l’exercice physique au moins une heure par semaine au cours du mois à venir.Peu probable|Probable] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 29] <- factor(data[, 29], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[29] <- "exerciseRAA_pnDre"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Combien de personnes comme vous ont pratiqué de l’exercice physique au moins une heure par semaine au cours du mois écoulé ?Personne|Tout le monde] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 30] <- factor(data[, 30], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[30] <- "exerciseRAA_pnDmn"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Je suis convaincu(e) que si je le veux, je peux faire de l’exercice physique pendant au moins une heure par semaine au cours du mois à venir.Pas du tout convaincu(e)|Tout à fait convaincu(e)] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 31] <- factor(data[, 31], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[31] <- "exerciseRAA_pbcAc"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Faire de l\'exercice physique pendant au moins une heure par semaine au cours du mois à venir…Ne dépend pas de moi|Dépend complètement de moi] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 32] <- factor(data[, 32], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[32] <- "exerciseRAA_pbcCu"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Si je le voulais vraiment, je pourrais faire de l’exercice physique pendant au moins une heure par semaine au cours du mois à venir.Improbable|Probable] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 33] <- factor(data[, 33], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[33] <- "exerciseRAA_pbcAw"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Pour moi, faire de l’exercice physique pendant au moins une heure par semaine au cours du mois à venir est sous mon contrôle.Pas du tout|Tout à fait] Consgine : Les 16 propositions suivantes concernent la pratique de l’exercice physique. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous fassiez de l\'exercice physique ou non. En effet, nous nous intéressons aux différences entre les personnes qui font et ne font pas ce type d’exercice. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de l’exercice physique nous intéresse."
data[, 34] <- factor(data[, 34], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[34] <- "exerciseRAA_pbcCc"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[J\'ai l\'intention de ne pas fumer au cours du mois à venir.Définitivement non|Définitivement oui] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 35] <- factor(data[, 35], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[35] <- "smokingRAA_inInt"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[Je ne fumerai pas au cours du mois à venir.Peu probable|Probable] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 36] <- factor(data[, 36], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[36] <- "smokingRAA_inWll"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[J’ai envie de ne pas fumer au cours du mois à venir.Faux|Vrai] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 37] <- factor(data[, 37], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[37] <- "smokingRAA_inWln"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[Je prévois de ne pas fumer au cours du mois à venir.Absolument pas|Absolument] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 38] <- factor(data[, 38], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[38] <- "smokingRAA_inPln"
# LimeSurvey Field type: F
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[Pour moi, ne pas fumer au cours du mois à venir est...Mauvais|Bon] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 39] <- factor(data[, 39], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[39] <- "smokingRAA_AttIg"
# LimeSurvey Field type: F
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[Pour moi, ne pas fumer au cours du mois à venir est...Désagréable|Agréable ] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 40] <- factor(data[, 40], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[40] <- "smokingRAA_AttEp"
# LimeSurvey Field type: F
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "[Pour moi, ne pas fumer au cours du mois à venir est...Douloureux|Bénéfique] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 41] <- factor(data[, 41], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[41] <- "smokingRAA_AttIb"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[Pour moi, ne pas fumer au cours du mois à venir est...Ennuyeux|Intéressant] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 42] <- factor(data[, 42], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[42] <- "smokingRAA_AttEi"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[La plupart des gens qui comptent pour moi pensent que je devrais ne pas fumer au cours du mois à venir.Faux|Vrai] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 43] <- factor(data[, 43], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[43] <- "smokingRAA_pnIim"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[La plupart des gens dont j’accorde de la valeur aux opinions . . . que je ne fume pas au cours du mois à venir.Désapprouverait|Approuverait] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 44] <- factor(data[, 44], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[44] <- "smokingRAA_pnIva"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[La plupart des gens que je respecte et admire ne vont pas fumer au cours du mois à venir.Peu probable|Probable] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 45] <- factor(data[, 45], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[45] <- "smokingRAA_pnDre"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[Combien de personnes comme vous n’ont pas fumé au cours du mois écoulé ?Personne|Tout le monde] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 46] <- factor(data[, 46], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[46] <- "smokingRAA_pnDmn"
# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[Je suis convaincu(e) que si je le veux, je peux ne pas fumer au cours du mois à venir.Pas du tout convaincu(e)|Tout à fait convaincu(e)] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 47] <- factor(data[, 47], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[47] <- "smokingRAA_pbcAc"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "[Ne pas fumer au cours du mois à venir…Ne dépend pas de moi|Dépend complètement de moi] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 48] <- factor(data[, 48], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[48] <- "smokingRAA_pbcCu"
# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[Si je le voulais vraiment, je pourrais ne pas fumer au cours du mois à venir.Improbable|Probable] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 49] <- factor(data[, 49], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[49] <- "smokingRAA_pbcAw"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[Pour moi, ne pas fumer au cours du mois à venir est sous mon contrôle.Pas du tout|Tout à fait] Consigne : Les 16 propositions suivantes concernent la consommation de tabac. Nous vous demandons de bien vouloir répondre à chacune de ces propositions, que vous ayez consommé du tabac ou non. En effet, nous nous intéressons aux différences entre les personnes qui consomment et celles qui ne consomment pas de tabac. De plus, il n’y a pas de bonnes ou de mauvaises réponses - seule votre expérience personnelle de la consommation de tabac nous intéresse."
data[, 50] <- factor(data[, 50], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[50] <- "smokingRAA_pbcCc"
Unknown type