data <- read.csv("survey_166179_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8")


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
attributes(data)$variable.labels[8] <- "This is a study into two behaviors: exercise and smoking cessation. About each behavior we will ask sixteen questions to map how you think about the behavior. This study is a part of an international study where the goal is to compare the determinants of these behaviors over countries. For example, is it equally important for both behaviors how pleasant people find it, or what other people do? And is that the same in the Netherlands as in Finland or Croatia?"
names(data)[8] <- "intro"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "This study has been set up such that all data are collected anonymously. Therefore, these can never be traced back to you. You can cease participation at any time. If you still have any questions, you can always ask these through ciberlite@a-bc.eu. Only people of 18 years and older are allowed to participate in this study. By agreeing to participate you indicate that you have read and understood this text, that you are 18 years of age or older, and do you consent to use your data, which will be collected anonymously, for scientific research."
data[, 9] <- factor(data[, 9], levels=c("yes","no"),labels=c("Yes, I consent to participate.", "No, I do not consent to participate."))
names(data)[9] <- "informedConsent"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "Thank you for having participated in this study!  Your contribution helps us to understand human motivation and behavior, and to what degree this is stable or different over different behaviors, countries, and cultures.  If you would like more information about this study, you can visit the Open Science Framework repository for this study at https://osf.io/mh9fs/.  You can now close your browser tab."
names(data)[10] <- "thankYouParticip"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "Thank you for taking the time to indicate that you prefer not to participate in this study.  You can now close your browser tab."
names(data)[11] <- "thankYouNonParticip"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "How old are you?"
names(data)[12] <- "age"
# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "What is your gender?"
data[, 13] <- factor(data[, 13], levels=c(0,1,2),labels=c("Female", "Male", "Prefer not to disclose"))
names(data)[13] <- "gender"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "[Other] What is your gender?"
names(data)[14] <- "gender_other"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "Are you presently following an education?"
data[, 15] <- factor(data[, 15], levels=c(0,1,2),labels=c("No, I am not currently following a formal education", "Yes, I am studying at a polytechnical education or a similar level", "Yes, I am studying at a university"))
names(data)[15] <- "educationPresent"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "What is the highest formal education you have completed in the past?"
data[, 16] <- factor(data[, 16], levels=c(1,2,3,4),labels=c("High school (secondary education)", "Polytechnical education", "A bachelor\'s degree", "A master\'s degree or higher"))
names(data)[16] <- "educationPast"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "In the past month, have you exercised for at least one hour every week?"
data[, 17] <- factor(data[, 17], levels=c(0,1),labels=c("No", "Yes"))
names(data)[17] <- "exerciseBehavior"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "In the past month, have you smoked?"
data[, 18] <- factor(data[, 18], levels=c(0,1),labels=c("No, I have not smoked at all", "Yes, I have smoked"))
names(data)[18] <- "smokingBehavior"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[I intend to [BEHAVIOR].Definitely do not|Definitely do] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 19] <- factor(data[, 19], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[19] <- "exerciseRAA_inInt"
# LimeSurvey Field type: F
data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "[I will [BEHAVIOR].Unlikely|Likely] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 20] <- factor(data[, 20], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[20] <- "exerciseRAA_inWll"
# LimeSurvey Field type: F
data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "[I am willing to [BEHAVIOR].False|True] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 21] <- factor(data[, 21], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[21] <- "exerciseRAA_inWln"
# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[I plan to [BEHAVIOR].Absolutely not|Absolutely] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 22] <- factor(data[, 22], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[22] <- "exerciseRAA_inPln"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[For me, [BEHAVIOR] is ...Bad|Good] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 23] <- factor(data[, 23], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[23] <- "exerciseRAA_AttIg"
# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[For me, [BEHAVIOR] is ...Unpleasant|Pleasant] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 24] <- factor(data[, 24], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[24] <- "exerciseRAA_AttEp"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[For me, [BEHAVIOR] is ...Harmful|Beneficial] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 25] <- factor(data[, 25], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[25] <- "exerciseRAA_AttIb"
# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[For me, [BEHAVIOR] is ...Boring|Interesting] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 26] <- factor(data[, 26], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[26] <- "exerciseRAA_AttEi"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Most people who are important to me think I should [BEHAVIOR].False|True] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 27] <- factor(data[, 27], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[27] <- "exerciseRAA_pnIim"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Most people whose opinions I value would ... of my [BEHAVIOR].Most people I respect and admire will [BEHAVIOR].Disapprove|Approve] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 28] <- factor(data[, 28], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[28] <- "exerciseRAA_pnIva"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Most people I respect and admire will [BEHAVIOR].Unlikely|Likely] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 29] <- factor(data[, 29], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[29] <- "exerciseRAA_pnDre"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[How many people like you [BEHAVIOR]?Nobody|Everybody] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 30] <- factor(data[, 30], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[30] <- "exerciseRAA_pnDmn"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[I am confident that if I want to, I can [BEHAVIOR].No confidence at all|A lot of confidence] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 31] <- factor(data[, 31], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[31] <- "exerciseRAA_pbcAc"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Whether I [BEHAVIOR] is ...Not up to me|Completely up to me] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 32] <- factor(data[, 32], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[32] <- "exerciseRAA_pbcCu"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[If I really wanted to, I could [BEHAVIOR].Unlikely|Likely] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 33] <- factor(data[, 33], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[33] <- "exerciseRAA_pbcAw"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[For me to [BEHAVIOR] is under my control.Not at all|Completely] Instruction: The next 16 items concern exercising. We kindly ask you to complete these items, regardless of whether you do or do not engage in exercising. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about exercising."
data[, 34] <- factor(data[, 34], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[34] <- "exerciseRAA_pbcCc"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[I intend to [BEHAVIOR].Definitely do not|Definitely do] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 35] <- factor(data[, 35], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[35] <- "smokingRAA_inInt"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[I will [BEHAVIOR].Unlikely|Likely] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 36] <- factor(data[, 36], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[36] <- "smokingRAA_inWll"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[I am willing to [BEHAVIOR].False|True] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 37] <- factor(data[, 37], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[37] <- "smokingRAA_inWln"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[I plan to [BEHAVIOR].Absolutely not|Absolutely] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 38] <- factor(data[, 38], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[38] <- "smokingRAA_inPln"
# LimeSurvey Field type: F
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[For me, [BEHAVIOR] is ...Bad|Good] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 39] <- factor(data[, 39], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[39] <- "smokingRAA_AttIg"
# LimeSurvey Field type: F
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[For me, [BEHAVIOR] is ...Unpleasant|Pleasant] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 40] <- factor(data[, 40], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[40] <- "smokingRAA_AttEp"
# LimeSurvey Field type: F
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "[For me, [BEHAVIOR] is ...Harmful|Beneficial] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 41] <- factor(data[, 41], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[41] <- "smokingRAA_AttIb"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[For me, [BEHAVIOR] is ...Boring|Interesting] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 42] <- factor(data[, 42], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[42] <- "smokingRAA_AttEi"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[Most people who are important to me think I should [BEHAVIOR].False|True] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 43] <- factor(data[, 43], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[43] <- "smokingRAA_pnIim"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[Most people whose opinions I value would ... of my [BEHAVIOR].Most people I respect and admire will [BEHAVIOR].Disapprove|Approve] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 44] <- factor(data[, 44], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[44] <- "smokingRAA_pnIva"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[Most people I respect and admire will [BEHAVIOR].Unlikely|Likely] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 45] <- factor(data[, 45], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[45] <- "smokingRAA_pnDre"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[How many people like you [BEHAVIOR]?Nobody|Everybody] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 46] <- factor(data[, 46], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[46] <- "smokingRAA_pnDmn"
# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[I am confident that if I want to, I can [BEHAVIOR].No confidence at all|A lot of confidence] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 47] <- factor(data[, 47], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[47] <- "smokingRAA_pbcAc"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "[Whether I [BEHAVIOR] is ...Not up to me|Completely up to me] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 48] <- factor(data[, 48], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[48] <- "smokingRAA_pbcCu"
# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[If I really wanted to, I could [BEHAVIOR].Unlikely|Likely] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 49] <- factor(data[, 49], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[49] <- "smokingRAA_pbcAw"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[For me to [BEHAVIOR] is under my control.Not at all|Completely] Instruction: The next 16 items concern smoking. We kindly ask you to complete these items, regardless of whether you do or do not engage in smoking. This because we are interested in differences between these groups. Moreover, there are no right or wrong answers – we are interested in your ideas about smoking."
data[, 50] <- factor(data[, 50], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7"))
names(data)[50] <- "smokingRAA_pbcCc"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "This question is there as a trick to allow a functioning survey with an essentially empty group, so that every country can decide which extra questions to add to the ones provided by default. You can remove this question if you add other questions to the group. The relevance equation, set to \'0\', makes sure this question is skipped by all participants (and therefore, so is this group, unless it contains other questions that have a different relevance equation)."
names(data)[51] <- "dummyQuestion"
Unknown type