# Carl De Leo BISC481

## Question 1: Done online

## Question 2:


## Question 3: Included in the Code Below
> ## Install Bioconductor
> source("https://bioconductor.org/biocLite.R")
> biocLite()
> ## Install DNAshapeR
> biocLite("DNAshapeR")
> ## Install Caret
> install.packages("caret")

## Question 4: Included in the Code Below
## A)
> ## Initialization (Mad: 1-mer+shape)
> library(DNAshapeR)
> library(caret)
> workingPath <- "/Users/Carl/Desktop/BISC481m/gcPBM/"
> ## Predict DNA Shapes
> fn_fasta <- paste0(workingPath, "Mad.txt.fa")
> pred <- getShape(fn_fasta)
> ## Encode Feature Vectors
> featureType <- c('1-mer', '1-shape')
> featureVector <- encodeSeqShape(fn_fasta, pred, featureType)
> head(featureVector)
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13] [,14] [,15] [,16]
seq1    0    0    1    0    0    0    1    0    0     0     1     0     0     1     0     0
seq2    0    1    0    0    0    0    1    0    0     0     1     0     0     0     1     0
seq3    0    0    1    0    0    0    1    0    0     1     0     0     0     0     1     0
seq4    0    0    0    1    0    0    1    0    0     1     0     0     0     0     1     0
seq5    0    0    0    1    0    0    1    0    0     1     0     0     0     0     0     1
seq6    0    0    1    0    0    1    0    0    1     0     0     0     0     0     1     0
     [,17] [,18] [,19] [,20] [,21] [,22] [,23] [,24] [,25] [,26] [,27] [,28] [,29] [,30] [,31]
seq1     1     0     0     0     0     0     0     1     0     0     1     0     1     0     0
seq2     0     0     1     0     1     0     0     0     0     0     1     0     0     0     1
seq3     0     0     1     0     0     1     0     0     0     1     0     0     0     1     0
seq4     0     0     1     0     0     1     0     0     0     0     0     1     0     0     0
seq5     0     1     0     0     0     0     1     0     0     1     0     0     0     1     0
seq6     0     1     0     0     0     0     1     0     0     0     1     0     0     1     0
     [,32] [,33] [,34] [,35] [,36] [,37] [,38] [,39] [,40] [,41] [,42] [,43] [,44] [,45] [,46]
seq1     0     1     0     0     0     1     0     0     0     0     0     1     0     0     1
seq2     0     1     0     0     0     0     0     1     0     0     1     0     0     0     1
seq3     0     0     0     1     0     0     0     1     0     0     0     1     0     0     1
seq4     1     0     1     0     0     0     0     1     0     0     0     1     0     0     1
seq5     0     0     0     0     1     0     0     1     0     0     1     0     0     0     1
seq6     0     0     1     0     0     0     1     0     0     0     1     0     0     1     0
     [,47] [,48] [,49] [,50] [,51] [,52] [,53] [,54] [,55] [,56] [,57] [,58] [,59] [,60] [,61]
seq1     0     0     0     1     0     0     1     0     0     0     0     1     0     0     0
seq2     0     0     1     0     0     0     0     1     0     0     0     1     0     0     0
seq3     0     0     1     0     0     0     0     0     0     1     0     1     0     0     0
seq4     0     0     0     0     0     1     0     0     0     1     0     1     0     0     0
seq5     0     0     0     0     0     1     0     0     1     0     0     1     0     0     0
seq6     0     0     0     0     0     1     0     1     0     0     0     1     0     0     0
     [,62] [,63] [,64] [,65] [,66] [,67] [,68] [,69] [,70] [,71] [,72] [,73] [,74] [,75] [,76]
seq1     1     0     0     0     0     0     1     0     1     0     0     0     0     1     0
seq2     1     0     0     1     0     0     0     0     1     0     0     0     0     1     0
seq3     1     0     0     1     0     0     0     0     1     0     0     0     0     1     0
seq4     1     0     0     1     0     0     0     0     1     0     0     0     0     1     0
seq5     1     0     0     1     0     0     0     0     0     0     1     0     0     1     0
seq6     1     0     0     1     0     0     0     0     1     0     0     0     0     1     0
     [,77] [,78] [,79] [,80] [,81] [,82] [,83] [,84] [,85] [,86] [,87] [,88] [,89] [,90] [,91]
seq1     0     0     0     1     0     0     1     0     0     0     1     0     0     0     0
seq2     0     1     0     0     0     0     1     0     0     1     0     0     0     1     0
seq3     0     0     0     1     0     0     1     0     0     0     1     0     0     0     1
seq4     0     1     0     0     0     0     1     0     0     0     1     0     0     1     0
seq5     0     0     0     1     0     0     1     0     0     1     0     0     1     0     0
seq6     0     0     0     1     0     0     1     0     0     0     1     0     0     0     0
     [,92] [,93] [,94] [,95] [,96] [,97] [,98] [,99] [,100] [,101] [,102] [,103] [,104] [,105]
seq1     1     0     0     0     1     0     0     0      1      0      0      0      1      0
seq2     0     1     0     0     0     0     1     0      0      1      0      0      0      0
seq3     0     0     0     0     1     0     1     0      0      0      0      1      0      0
seq4     0     1     0     0     0     0     0     0      1      0      1      0      0      0
seq5     0     0     0     1     0     0     1     0      0      0      0      1      0      0
seq6     1     0     0     0     1     1     0     0      0      1      0      0      0      0
     [,106] [,107] [,108] [,109] [,110] [,111] [,112] [,113] [,114] [,115] [,116] [,117] [,118]
seq1      0      1      0      0      1      0      0      1      0      0      0      0      0
seq2      0      1      0      0      1      0      0      1      0      0      0      1      0
seq3      0      1      0      0      0      1      0      0      1      0      0      0      0
seq4      1      0      0      0      0      0      1      1      0      0      0      0      0
seq5      0      1      0      0      1      0      0      0      1      0      0      0      1
seq6      0      1      0      0      0      0      1      0      0      1      0      0      0
     [,119] [,120] [,121] [,122] [,123] [,124] [,125] [,126] [,127] [,128] [,129] [,130] [,131]
seq1      1      0      0      1      0      0      1      0      0      0      1      0      0
seq2      0      0      0      0      1      0      0      0      0      1      0      1      0
seq3      0      1      0      1      0      0      0      1      0      0      0      0      0
seq4      1      0      0      0      1      0      0      0      0      1      1      0      0
seq5      0      0      0      1      0      0      0      0      0      1      0      0      0
seq6      1      0      0      0      1      0      0      0      0      1      0      0      1
     [,132] [,133] [,134] [,135] [,136] [,137] [,138] [,139] [,140] [,141] [,142] [,143] [,144]
seq1      0      0      0      1      0      0      0      0      1      0      0      1      0
seq2      0      0      1      0      0      0      0      0      1      0      0      1      0
seq3      1      0      0      1      0      0      0      1      0      0      0      0      1
seq4      0      1      0      0      0      0      0      1      0      0      1      0      0
seq5      1      0      0      0      1      0      0      1      0      0      0      0      1
seq6      0      0      0      1      0      0      1      0      0      0      1      0      0

> ## Initialization (Max)
> library(DNAshapeR)
> library(caret)
> workingPath <- "/Users/Carl/Desktop/BISC481m/gcPBM/"
> ## Predict DNA Shapes
> fn_fasta <- paste0(workingPath, "Max.txt.fa")
> pred <- getShape(fn_fasta)
> ## Encode Feature Vectors
> featureType <- c('1-mer', '1_shape')
> featureVector <- encodeSeqShape(fn_fasta, pred, featureType)
> head(featureVector)

> ## Initialization (Myc)
> library(DNAshapeR)
> library(caret)
> workingPath <- "/Users/Carl/Desktop/BISC481m/gcPBM/"
> ## Predict DNA Shapes
> fn_fasta <- paste0(workingPath, "Myc.txt.fa")
> pred <- getShape(fn_fasta)
> ## Encode Feature Vectors
> featureType <- c('1-mer', '1_shape')
> featureVector <- encodeSeqShape(fn_fasta, pred, featureType)
> head(featureVector)

## B)
> ## Build MLR model via Caret
> #Data Prep.
> fn_exp <- paste0(workingPath, "Mad.txt")
> exp_data <- read.table(fn_exp)
> df <- data.frame(affinity = exp_data$V2, featureVector)
> ## Arguments setting for Caret
> trainControl <- trainControl(method = "cv", number = 10, savePredictions = TRUE)
> #Prediction w/o L2-regularized
> model <- train (affinity~ ., data = df, trControl = trainControl, method = "lm", preProcess = NULL)
Warning messages:
1: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
2: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
3: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
4: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
5: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
6: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
7: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
8: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
9: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
10: In predict.lm(modelFit, newdata) :
  prediction from a rank-deficient fit may be misleading
> summary(model)

Call:
lm(formula = .outcome ~ ., data = dat)

Residuals:
     Min       1Q   Median       3Q      Max 
-1.37490 -0.25073 -0.02259  0.23448  1.30602 

Coefficients: (47 not defined because of singularities)
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)  5.858594   0.061833  94.748  < 2e-16 ***
X1           0.006034   0.013869   0.435 0.663523    
X2           0.025971   0.012795   2.030 0.042413 *  
X3           0.008178   0.012833   0.637 0.523962    
X4                 NA         NA      NA       NA    
X5          -0.064195   0.013888  -4.622 3.86e-06 ***
X6          -0.025602   0.012790  -2.002 0.045351 *  
X7          -0.041682   0.012920  -3.226 0.001260 ** 
X8                 NA         NA      NA       NA    
X9          -0.015089   0.014257  -1.058 0.289946    
X10          0.008581   0.013131   0.653 0.513461    
X11         -0.023428   0.013161  -1.780 0.075111 .  
X12                NA         NA      NA       NA    
X13         -0.018280   0.013964  -1.309 0.190537    
X14         -0.004328   0.012613  -0.343 0.731487    
X15         -0.041029   0.013138  -3.123 0.001798 ** 
X16                NA         NA      NA       NA    
X17         -0.024541   0.013848  -1.772 0.076415 .  
X18         -0.014975   0.012683  -1.181 0.237752    
X19         -0.024881   0.013141  -1.893 0.058343 .  
X20                NA         NA      NA       NA    
X21         -0.048005   0.014062  -3.414 0.000644 ***
X22         -0.030887   0.012794  -2.414 0.015795 *  
X23         -0.040255   0.013302  -3.026 0.002485 ** 
X24                NA         NA      NA       NA    
X25         -0.031398   0.013985  -2.245 0.024791 *  
X26         -0.047677   0.012742  -3.742 0.000184 ***
X27         -0.051288   0.013283  -3.861 0.000114 ***
X28                NA         NA      NA       NA    
X29         -0.015306   0.014077  -1.087 0.276935    
X30         -0.040597   0.012766  -3.180 0.001478 ** 
X31         -0.040158   0.013368  -3.004 0.002674 ** 
X32                NA         NA      NA       NA    
X33         -0.008574   0.013982  -0.613 0.539737    
X34         -0.032304   0.012594  -2.565 0.010336 *  
X35         -0.040265   0.013220  -3.046 0.002330 ** 
X36                NA         NA      NA       NA    
X37         -0.007236   0.014378  -0.503 0.614804    
X38         -0.034303   0.012918  -2.656 0.007935 ** 
X39         -0.028002   0.013378  -2.093 0.036365 *  
X40                NA         NA      NA       NA    
X41          0.004342   0.014332   0.303 0.761908    
X42         -0.021932   0.013139  -1.669 0.095106 .  
X43         -0.002354   0.013453  -0.175 0.861095    
X44                NA         NA      NA       NA    
X45         -0.002045   0.014131  -0.145 0.884932    
X46         -0.018572   0.012729  -1.459 0.144613    
X47         -0.016432   0.013328  -1.233 0.217634    
X48                NA         NA      NA       NA    
X49          0.026277   0.014032   1.873 0.061158 .  
X50         -0.069932   0.013293  -5.261 1.47e-07 ***
X51          0.008934   0.013476   0.663 0.507389    
X52                NA         NA      NA       NA    
X53          0.170187   0.014592  11.663  < 2e-16 ***
X54          0.005955   0.013018   0.457 0.647372    
X55         -0.026217   0.012722  -2.061 0.039363 *  
X56                NA         NA      NA       NA    
X57          0.635134   0.041202  15.415  < 2e-16 ***
X58          0.801786   0.040898  19.604  < 2e-16 ***
X59          0.397222   0.040536   9.799  < 2e-16 ***
X60                NA         NA      NA       NA    
X61         -0.757294   0.023804 -31.814  < 2e-16 ***
X62                NA         NA      NA       NA    
X63                NA         NA      NA       NA    
X64                NA         NA      NA       NA    
X65          1.646097   0.019979  82.390  < 2e-16 ***
X66                NA         NA      NA       NA    
X67          0.497527   0.022595  22.020  < 2e-16 ***
X68                NA         NA      NA       NA    
X69                NA         NA      NA       NA    
X70          1.071739   0.012626  84.882  < 2e-16 ***
X71                NA         NA      NA       NA    
X72                NA         NA      NA       NA    
X73         -1.066577   0.012674 -84.155  < 2e-16 ***
X74                NA         NA      NA       NA    
X75                NA         NA      NA       NA    
X76                NA         NA      NA       NA    
X77         -1.613478   0.019601 -82.314  < 2e-16 ***
X78         -1.186002   0.014530 -81.624  < 2e-16 ***
X79                NA         NA      NA       NA    
X80                NA         NA      NA       NA    
X81                NA         NA      NA       NA    
X82                NA         NA      NA       NA    
X83          0.711819   0.024366  29.213  < 2e-16 ***
X84                NA         NA      NA       NA    
X85                NA         NA      NA       NA    
X86         -0.227985   0.017486 -13.038  < 2e-16 ***
X87          0.171100   0.016999  10.066  < 2e-16 ***
X88                NA         NA      NA       NA    
X89         -0.161335   0.014397 -11.207  < 2e-16 ***
X90         -0.203704   0.013172 -15.464  < 2e-16 ***
X91         -0.170657   0.014411 -11.842  < 2e-16 ***
X92                NA         NA      NA       NA    
X93         -0.006737   0.013845  -0.487 0.626567    
X94         -0.022206   0.012449  -1.784 0.074509 .  
X95         -0.093679   0.013176  -7.110 1.27e-12 ***
X96                NA         NA      NA       NA    
X97         -0.011939   0.014169  -0.843 0.399463    
X98         -0.010729   0.012791  -0.839 0.401621    
X99         -0.034843   0.013271  -2.625 0.008671 ** 
X100               NA         NA      NA       NA    
X101         0.010918   0.014195   0.769 0.441854    
X102         0.010295   0.012649   0.814 0.415741    
X103        -0.012002   0.012988  -0.924 0.355477    
X104               NA         NA      NA       NA    
X105         0.006026   0.014128   0.427 0.669748    
X106        -0.025764   0.012986  -1.984 0.047296 *  
X107        -0.011313   0.012978  -0.872 0.383406    
X108               NA         NA      NA       NA    
X109         0.026986   0.014247   1.894 0.058245 .  
X110        -0.027711   0.013317  -2.081 0.037475 *  
X111        -0.048649   0.013146  -3.701 0.000217 ***
X112               NA         NA      NA       NA    
X113         0.020154   0.014227   1.417 0.156634    
X114        -0.039197   0.013082  -2.996 0.002742 ** 
X115        -0.017760   0.013274  -1.338 0.180949    
X116               NA         NA      NA       NA    
X117         0.024326   0.013838   1.758 0.078803 .  
X118        -0.023120   0.012799  -1.806 0.070892 .  
X119        -0.017917   0.013024  -1.376 0.168956    
X120               NA         NA      NA       NA    
X121         0.007385   0.014268   0.518 0.604749    
X122        -0.025039   0.013175  -1.900 0.057415 .  
X123        -0.023914   0.013211  -1.810 0.070306 .  
X124               NA         NA      NA       NA    
X125         0.028398   0.014304   1.985 0.047146 *  
X126         0.004505   0.012956   0.348 0.728064    
X127         0.029485   0.013088   2.253 0.024302 *  
X128               NA         NA      NA       NA    
X129         0.052160   0.014011   3.723 0.000198 ***
X130         0.015183   0.012859   1.181 0.237771    
X131         0.038023   0.013169   2.887 0.003895 ** 
X132               NA         NA      NA       NA    
X133         0.034146   0.014092   2.423 0.015412 *  
X134         0.005779   0.012968   0.446 0.655864    
X135         0.029792   0.013220   2.254 0.024253 *  
X136               NA         NA      NA       NA    
X137         0.045559   0.014017   3.250 0.001158 ** 
X138         0.025854   0.012915   2.002 0.045334 *  
X139         0.050219   0.013216   3.800 0.000146 ***
X140               NA         NA      NA       NA    
X141        -0.025155   0.013883  -1.812 0.070039 .  
X142        -0.013767   0.012610  -1.092 0.274952    
X143        -0.005351   0.013029  -0.411 0.681282    
X144               NA         NA      NA       NA    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.3772 on 7436 degrees of freedom
Multiple R-squared:  0.7812,	Adjusted R-squared:  0.7783 
F-statistic: 273.7 on 97 and 7436 DF,  p-value: < 2.2e-16

> #Prediction w/ L2-regularized
> model2 <- train(affinity~., data = df, trControl = trainControl, method = "glmnet", tuneGrid = data.frame(alpha = 0, lambda = c(2^c(-15:15))))
Loading required package: glmnet
Loading required package: Matrix

Attaching package: ‘Matrix’

The following object is masked from ‘package:S4Vectors’:

    expand

Loading required package: foreach
foreach: simple, scalable parallel programming from Revolution Analytics
Use Revolution R for scalability, fault tolerance and more.
http://www.revolutionanalytics.com
Loaded glmnet 2.0-5

Warning message:
In nominalTrainWorkflow(x = x, y = y, wts = weights, info = trainInfo,  :
  There were missing values in resampled performance measures.
> model2
glmnet 

7534 samples
 144 predictor

No pre-processing
Resampling: Cross-Validated (10 fold) 
Summary of sample sizes: 6779, 6780, 6780, 6780, 6782, 6782, ... 
Resampling results across tuning parameters:

  lambda        RMSE       Rsquared 
  3.051758e-05  0.3807593  0.7751633
  6.103516e-05  0.3807593  0.7751633
  1.220703e-04  0.3807593  0.7751633
  2.441406e-04  0.3807593  0.7751633
  4.882812e-04  0.3807593  0.7751633
  9.765625e-04  0.3807593  0.7751633
  1.953125e-03  0.3807593  0.7751633
  3.906250e-03  0.3807593  0.7751633
  7.812500e-03  0.3807593  0.7751633
  1.562500e-02  0.3807593  0.7751633
  3.125000e-02  0.3809801  0.7751267
  6.250000e-02  0.3841375  0.7746287
  1.250000e-01  0.3945330  0.7729831
  2.500000e-01  0.4221444  0.7680662
  5.000000e-01  0.4770418  0.7556152
  1.000000e+00  0.5543665  0.7311902
  2.000000e+00  0.6344414  0.6950729
  4.000000e+00  0.6991928  0.6553386
  8.000000e+00  0.7433728  0.6212007
  1.600000e+01  0.7700421  0.5973059
  3.200000e+01  0.7849137  0.5828103
  6.400000e+01  0.7928229  0.5747271
  1.280000e+02  0.7968934  0.5704821
  2.560000e+02  0.7990441  0.5682868
  5.120000e+02  0.8010632        NaN
  1.024000e+03  0.8010632        NaN
  2.048000e+03  0.8010632        NaN
  4.096000e+03  0.8010632        NaN
  8.192000e+03  0.8010632        NaN
  1.638400e+04  0.8010632        NaN
  3.276800e+04  0.8010632        NaN

Tuning parameter 'alpha' was held constant at a value of 0
RMSE was used to select the optimal model using  the smallest value.
The final values used for the model were alpha = 0 and lambda = 0.015625. 
> result <- model2$results$Rsquared[1]
> result
[1] 0.7751633
