" spss.vim -- Vim syntax file for SPSS command files (.sps).
" Language:	SPSS command syntax
" Maintainer:	Karel Asselberghs <k.asselberghs@gmail.com>
" Latest Revision:	22 March 2015
" Version:	1.0.0
" Description:	This file highlights SPSS commands (including some common command abbreviations), subcommands, comments, and strings, based upon SPSS version 22.
" TODO:
" - Recognize blank line as command terminator after a comment when there is no period as command terminator.
" - Highlight commands preceded by "-" or "+" in column 1 (used to indent commands in batch mode)


if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syntax case ignore

" # SPSS Commands

syntax match spssCommand /^\s*\<2SLS\>/
syntax match spssCommand /^\s*\<ACF\>/
syntax match spssCommand /^\s*\<ADD DOCUMENT\>/
syntax match spssCommand /^\s*\<ADD FILES\>/
syntax match spssCommand /^\s*\<ADD VALUE LABELS\>/
syntax match spssCommand /^\s*\<ADP\>/
syntax match spssCommand /^\s*\<AGGREGATE\>/
syntax match spssCommand /^\s*\<AIM\>/
syntax match spssCommand /^\s*\<ALSCAL\>/
syntax match spssCommand /^\s*\<ALTER TYPE\>/
syntax match spssCommand /^\s*\<ANACOR\>/
syntax match spssCommand /^\s*\<ANOVA\>/
syntax match spssCommand /^\s*\<APPLY DICTIONARY\>/
syntax match spssCommand /^\s*\<AREG\>/
syntax match spssCommand /^\s*\<ARIMA\>/
syntax match spssCommand /^\s*\<AUTORECODE\>/
syntax match spssCommand /^\s*\<BEGIN DATA\>/
syntax match spssCommand /^\s*\<BEGIN GPL\>/
syntax match spssCommand /^\s*\<BEGIN PROGRAM\>/
syntax match spssCommand /^\s*\<BOOTSTRAP\>/
syntax match spssCommand /^\s*\<BREAK\>/
syntax match spssCommand /^\s*\<CACHE\>/
syntax match spssCommand /^\s*\<CASEPLOT\>/
syntax match spssCommand /^\s*\<CASESTOVARS\>/
syntax match spssCommand /^\s*\<CATPCA\>/
syntax match spssCommand /^\s*\<CATREG\>/
syntax match spssCommand /^\s*\<CCF\>/
syntax match spssCommand /^\s*\<CD\>/
syntax match spssCommand /^\s*\<CLEAR TIME PROGRAM\>/
syntax match spssCommand /^\s*\<CLEAR TRANSFORMATIONS\>/
syntax match spssCommand /^\s*\<CLUSTER\>/
syntax match spssCommand /^\s*\<CNLR\>/
syntax match spssCommand /^\s*\<CODEBOOK\>/
syntax match spssCommand /^\s*\<COMMENT\>/
syntax match spssCommand /^\s*\<COMPARE DATASETS\>/
syntax match spssCommand /^\s*\<COMPUTE\>/
syntax match spssCommand /^\s*\<CONJOINT\>/
syntax match spssCommand /^\s*\<CORRELATIONS\>/
syntax match spssCommand /^\s*\<CORRESPONDENCE\>/
syntax match spssCommand /^\s*\<COUNT\>/
syntax match spssCommand /^\s*\<COXREG\>/
syntax match spssCommand /^\s*\<CREATE\>/
syntax match spssCommand /^\s*\<CROSSTABS\>/
syntax match spssCommand /^\s*\<CSCOXREG\>/
syntax match spssCommand /^\s*\<CSDESCRIPTIVES\>/
syntax match spssCommand /^\s*\<CSGLM\>/
syntax match spssCommand /^\s*\<CSLOGISTIC\>/
syntax match spssCommand /^\s*\<CSORDINAL\>/
syntax match spssCommand /^\s*\<CSPLAN ANALYSIS\>/
syntax match spssCommand /^\s*\<CSPLAN SAMPLE\>/
syntax match spssCommand /^\s*\<CSPLAN VIEW\>/
syntax match spssCommand /^\s*\<CSSELECT\>/
syntax match spssCommand /^\s*\<CSTABULATE\>/
syntax match spssCommand /^\s*\<CTABLES\>/
syntax match spssCommand /^\s*\<CURVEFIT\>/
syntax match spssCommand /^\s*\<DATA LIST\>/
syntax match spssCommand /^\s*\<DATAFILE ATTRIBUTE\>/
syntax match spssCommand /^\s*\<DATASET ACTIVATE\>/
syntax match spssCommand /^\s*\<DATASET CLOSE\>/
syntax match spssCommand /^\s*\<DATASET COPY\>/
syntax match spssCommand /^\s*\<DATASET DECLARE\>/
syntax match spssCommand /^\s*\<DATASET DISPLAY\>/
syntax match spssCommand /^\s*\<DATASET NAME\>/
syntax match spssCommand /^\s*\<DATE\>/
syntax match spssCommand /^\s*\<DEFINE\>/
syntax match spssCommand /^\s*\<DELETE VARIABLES\>/
syntax match spssCommand /^\s*\<DERIVATIVES\>/
syntax match spssCommand /^\s*\<DESCRIPTIVES\>/
syntax match spssCommand /^\s*\<DETECTANOMALY\>/
syntax match spssCommand /^\s*\<DISCRIMINANT\>/
syntax match spssCommand /^\s*\<DISPLAY\>/
syntax match spssCommand /^\s*\<DMCLUSTER\>/
syntax match spssCommand /^\s*\<DMLOGISTIC\>/
syntax match spssCommand /^\s*\<DMROC\>/
syntax match spssCommand /^\s*\<DMTABLES\>/
syntax match spssCommand /^\s*\<DMTREE\>/
syntax match spssCommand /^\s*\<DO IF\>/
syntax match spssCommand /^\s*\<DO REPEAT\>/
syntax match spssCommand /^\s*\<DOCUMENT\>/
syntax match spssCommand /^\s*\<DROP DOCUMENTS\>/
syntax match spssCommand /^\s*\<ECHO\>/
syntax match spssCommand /^\s*\<ELSE IF\>/
syntax match spssCommand /^\s*\<ELSE\>/
syntax match spssCommand /^\s*\<END CASE\>/
syntax match spssCommand /^\s*\<END FILE TYPE\>/
syntax match spssCommand /^\s*\<END FILE\>/
syntax match spssCommand /^\s*\<END IF\>/
syntax match spssCommand /^\s*\<END INPUT PROGRAM\>/
syntax match spssCommand /^\s*\<END LOOP\>/
syntax match spssCommand /^\s*\<END MATRIX\>/
syntax match spssCommand /^\s*\<END PROGRAM\>/
syntax match spssCommand /^\s*\<END REPEAT\>/
syntax match spssCommand /^\s*\<ERASE\>/
syntax match spssCommand /^\s*\<EXAMINE\>/
syntax match spssCommand /^\s*\<EXECUTE\>/
syntax match spssCommand /^\s*\<EXPORT\>/
syntax match spssCommand /^\s*\<EXSMOOTH\>/
syntax match spssCommand /^\s*\<EXTENSION\>/
syntax match spssCommand /^\s*\<FACTOR\>/
syntax match spssCommand /^\s*\<FILE HANDLE\>/
syntax match spssCommand /^\s*\<FILE LABEL\>/
syntax match spssCommand /^\s*\<FILE TYPE\>/
syntax match spssCommand /^\s*\<FILTER\>/
syntax match spssCommand /^\s*\<FINISH\>/
syntax match spssCommand /^\s*\<FIT\>/
syntax match spssCommand /^\s*\<FLIP\>/
syntax match spssCommand /^\s*\<FORMATS\>/
syntax match spssCommand /^\s*\<FREQUENCIES\>/
syntax match spssCommand /^\s*\<GENLINMIXED\>/
syntax match spssCommand /^\s*\<GENLIN\>/
syntax match spssCommand /^\s*\<GENLOG\>/
syntax match spssCommand /^\s*\<GET\>/
syntax match spssCommand /^\s*\<GET\_s\s*CAPTURE\>/
syntax match spssCommand /^\s*\<GET\_s\s*DATA\>/
syntax match spssCommand /^\s*\<GET\_s\s*FILE\>/
syntax match spssCommand /^\s*\<GET\_s\s*SAS\>/
syntax match spssCommand /^\s*\<GET\_s\s*STATA\>/
syntax match spssCommand /^\s*\<GET\_s\s*TRANSLATE\>/
syntax match spssCommand /^\s*\<GETCOGNOS\>/
syntax match spssCommand /^\s*\<GGRAPH\>/
syntax match spssCommand /^\s*\<GLM\>/
syntax match spssCommand /^\s*\<GRAPH\>/
syntax match spssCommand /^\s*\<HILOGLINEAR\>/
syntax match spssCommand /^\s*\<HOMALS\>/
syntax match spssCommand /^\s*\<HOST\>/
syntax match spssCommand /^\s*\<IF\>/
syntax match spssCommand /^\s*\<IGRAPH\>/
syntax match spssCommand /^\s*\<IMPORT\>/
syntax match spssCommand /^\s*\<INCLUDE\>/
syntax match spssCommand /^\s*\<INPUT PROGRAM\>/
syntax match spssCommand /^\s*\<INSERT\>/
syntax match spssCommand /^\s*\<KEYED DATA LIST\>/
syntax match spssCommand /^\s*\<KM\>/
syntax match spssCommand /^\s*\<KNN\>/
syntax match spssCommand /^\s*\<LEAVE\>/
syntax match spssCommand /^\s*\<LINEAR\>/
syntax match spssCommand /^\s*\<LIST\>/
syntax match spssCommand /^\s*\<LOGISTIC REGRESSION\>/
syntax match spssCommand /^\s*\<LOGLINEAR\>/
syntax match spssCommand /^\s*\<LOOP\>/
syntax match spssCommand /^\s*\<MANOVA\>/
syntax match spssCommand /^\s*\<MATCH FILES\>/
syntax match spssCommand /^\s*\<MATRIX DATA\>/
syntax match spssCommand /^\s*\<MATRIX\>/
syntax match spssCommand /^\s*\<MCONVERT\>/
syntax match spssCommand /^\s*\<MEANS\>/
syntax match spssCommand /^\s*\<MISSING VALUES\>/
syntax match spssCommand /^\s*\<MIXED\>/
syntax match spssCommand /^\s*\<MLP\>/
syntax match spssCommand /^\s*\<MODEL CLOSE\>/
syntax match spssCommand /^\s*\<MODEL HANDLE\>/
syntax match spssCommand /^\s*\<MODEL LIST\>/
syntax match spssCommand /^\s*\<MODEL NAME\>/
syntax match spssCommand /^\s*\<MODEL PROGRAM\>/
syntax match spssCommand /^\s*\<MRSETS\>/
syntax match spssCommand /^\s*\<MULT RESPONSE\>/
syntax match spssCommand /^\s*\<MULTIPLE CORRESPONDENCE\>/
syntax match spssCommand /^\s*\<MULTIPLE IMPUTATION\>/
syntax match spssCommand /^\s*\<MVA\>/
syntax match spssCommand /^\s*\<N OF CASES\>/
syntax match spssCommand /^\s*\<NAIVEBAYES\>/
syntax match spssCommand /^\s*\<NEW FILE\>/
syntax match spssCommand /^\s*\<NLR\>/
syntax match spssCommand /^\s*\<NOMREG\>/
syntax match spssCommand /^\s*\<NONPAR CORR\>/
syntax match spssCommand /^\s*\<NPAR TESTS\>/
syntax match spssCommand /^\s*\<NPTESTS\>/
syntax match spssCommand /^\s*\<NUMERIC\>/
syntax match spssCommand /^\s*\<OLAP CUBES\>/
syntax match spssCommand /^\s*\<OMSEND\>/
syntax match spssCommand /^\s*\<OMSINFO\>/
syntax match spssCommand /^\s*\<OMSLOG\>/
syntax match spssCommand /^\s*\<OMS\>/
syntax match spssCommand /^\s*\<ONEWAY\>/
syntax match spssCommand /^\s*\<OPTIMAL BINNING\>/
syntax match spssCommand /^\s*\<ORTHOPLAN\>/
syntax match spssCommand /^\s*\<OUTPUT ACTIVATE\>/
syntax match spssCommand /^\s*\<OUTPUT CLOSE\>/
syntax match spssCommand /^\s*\<OUTPUT DISPLAY\>/
syntax match spssCommand /^\s*\<OUTPUT EXPORT\>/
syntax match spssCommand /^\s*\<OUTPUT MODIFY\>/
syntax match spssCommand /^\s*\<OUTPUT NAME\>/
syntax match spssCommand /^\s*\<OUTPUT NEW\>/
syntax match spssCommand /^\s*\<OUTPUT OPEN\>/
syntax match spssCommand /^\s*\<OUTPUT SAVE\>/
syntax match spssCommand /^\s*\<OVERALS\>/
syntax match spssCommand /^\s*\<PACF\>/
syntax match spssCommand /^\s*\<PARTIAL CORR\>/
syntax match spssCommand /^\s*\<PERMISSIONS\>/
syntax match spssCommand /^\s*\<PLANCARDS\>/
syntax match spssCommand /^\s*\<PLS\>/
syntax match spssCommand /^\s*\<PLUM\>/
syntax match spssCommand /^\s*\<POINT\>/
syntax match spssCommand /^\s*\<PPLOT\>/
syntax match spssCommand /^\s*\<PREDICT\>/
syntax match spssCommand /^\s*\<PREFSCAL\>/
syntax match spssCommand /^\s*\<PRESERVE\>/
syntax match spssCommand /^\s*\<PRINCALS\>/
syntax match spssCommand /^\s*\<PRINT EJECT\>/
syntax match spssCommand /^\s*\<PRINT FORMATS\>/
syntax match spssCommand /^\s*\<PRINT SPACE\>/
syntax match spssCommand /^\s*\<PRINT\>/
syntax match spssCommand /^\s*\<PROBIT\>/
syntax match spssCommand /^\s*\<PROCEDURE OUTPUT\>/
syntax match spssCommand /^\s*\<PROXIMITIES\>/
syntax match spssCommand /^\s*\<PROXSCAL\>/
syntax match spssCommand /^\s*\<QUICK CLUSTER\>/
syntax match spssCommand /^\s*\<RANK\>/
syntax match spssCommand /^\s*\<RATIO STATISTICS\>/
syntax match spssCommand /^\s*\<RBF\>/
syntax match spssCommand /^\s*\<READ MODEL\>/
syntax match spssCommand /^\s*\<RECODE\>/
syntax match spssCommand /^\s*\<RECORD TYPE\>/
syntax match spssCommand /^\s*\<REGRESSION\>/
syntax match spssCommand /^\s*\<RELIABILITY\>/
syntax match spssCommand /^\s*\<RENAME VARIABLES\>/
syntax match spssCommand /^\s*\<REPEATING DATA\>/
syntax match spssCommand /^\s*\<REPORT\>/
syntax match spssCommand /^\s*\<REPOSITORY ATTRIBUTES\>/
syntax match spssCommand /^\s*\<REPOSITORY CONNECT\>/
syntax match spssCommand /^\s*\<REPOSITORY COPY\>/
syntax match spssCommand /^\s*\<REREAD\>/
syntax match spssCommand /^\s*\<RESPONSE RATE\>/
syntax match spssCommand /^\s*\<RESTORE\>/
syntax match spssCommand /^\s*\<RMV\>/
syntax match spssCommand /^\s*\<ROC\>/
syntax match spssCommand /^\s*\<SAMPLE\>/
syntax match spssCommand /^\s*\<SAVE DATA COLLECTION\>/
syntax match spssCommand /^\s*\<SAVE MODEL\>/
syntax match spssCommand /^\s*\<SAVE TRANSLATE\>/
syntax match spssCommand /^\s*\<SAVE\>/
syntax match spssCommand /^\s*\<SCRIPT\>/
syntax match spssCommand /^\s*\<SEASON\>/
syntax match spssCommand /^\s*\<SELECT IF\>/
syntax match spssCommand /^\s*\<SELECTPRED\>/
syntax match spssCommand /^\s*\<SET\>/
syntax match spssCommand /^\s*\<SHIFT VALUES\>/
syntax match spssCommand /^\s*\<SHOW\>/
syntax match spssCommand /^\s*\<SIMPLAN CREATE\>/
syntax match spssCommand /^\s*\<SIMPLAN VIEW\>/
syntax match spssCommand /^\s*\<SIMPREP BEGIN\>/
syntax match spssCommand /^\s*\<SIMPREP END\>/
syntax match spssCommand /^\s*\<SIMRUN\>/
syntax match spssCommand /^\s*\<SORT CASES\>/
syntax match spssCommand /^\s*\<SORT VARIABLES\>/
syntax match spssCommand /^\s*\<SPCHART\>/
syntax match spssCommand /^\s*\<SPECTRA\>/
syntax match spssCommand /^\s*\<SPLIT FILE\>/
syntax match spssCommand /^\s*\<STAR JOIN\>/
syntax match spssCommand /^\s*\<STRING\>/
syntax match spssCommand /^\s*\<SUBTITLE\>/
syntax match spssCommand /^\s*\<SUMMARIZE\>/
syntax match spssCommand /^\s*\<SURVIVAL\>/
syntax match spssCommand /^\s*\<SYSFILE INFO\>/
syntax match spssCommand /^\s*\<T-TEST\>/
syntax match spssCommand /^\s*\<TABLES\>/
syntax match spssCommand /^\s*\<TDISPLAY\>/
syntax match spssCommand /^\s*\<TEMPORARY\>/
syntax match spssCommand /^\s*\<TIME PROGRAM\>/
syntax match spssCommand /^\s*\<TITLE\>/
syntax match spssCommand /^\s*\<TMS BEGIN\>/
syntax match spssCommand /^\s*\<TMS END\>/
syntax match spssCommand /^\s*\<TMS IMPORT\>/
syntax match spssCommand /^\s*\<TMS MERGE\>/
syntax match spssCommand /^\s*\<TREE\>/
syntax match spssCommand /^\s*\<TSAPPLY\>/
syntax match spssCommand /^\s*\<TSET\>/
syntax match spssCommand /^\s*\<TSHOW\>/
syntax match spssCommand /^\s*\<TSMODEL\>/
syntax match spssCommand /^\s*\<TSPLOT\>/
syntax match spssCommand /^\s*\<TWOSTEP CLUSTER\>/
syntax match spssCommand /^\s*\<UNIANOVA\>/
syntax match spssCommand /^\s*\<UPDATE\>/
syntax match spssCommand /^\s*\<USE\>/
syntax match spssCommand /^\s*\<VALIDATEDATA\>/
syntax match spssCommand /^\s*\<VALUE LABELS\>/
syntax match spssCommand /^\s*\<VARCOMP\>/
syntax match spssCommand /^\s*\<VARIABLE ALIGNMENT\>/
syntax match spssCommand /^\s*\<VARIABLE ATTRIBUTE\>/
syntax match spssCommand /^\s*\<VARIABLE LABELS\>/
syntax match spssCommand /^\s*\<VARIABLE LEVEL\>/
syntax match spssCommand /^\s*\<VARIABLE ROLE\>/
syntax match spssCommand /^\s*\<VARIABLE WIDTH\>/
syntax match spssCommand /^\s*\<VARSTOCASES\>/
syntax match spssCommand /^\s*\<VECTOR\>/
syntax match spssCommand /^\s*\<VERIFY\>/
syntax match spssCommand /^\s*\<WEIGHT\>/
syntax match spssCommand /^\s*\<WLS\>/
syntax match spssCommand /^\s*\<WRITE\>/
syntax match spssCommand /^\s*\<XGRAPH\>/
syntax match spssCommand /^\s*\<XSAVE\>/


" Some common command abbreviations (add your own):

syntax match spssCommand /^\s*\<VARIABLE LABEL\>/     " variable labels
syntax match spssCommand /^\s*\<VAR LABELS\>/         " variable labels
syntax match spssCommand /^\s*\<VAR LAB\>/            " variable labels
syntax match spssCommand /^\s*\<VALUE LABEL\>/        " value labels
syntax match spssCommand /^\s*\<VAL LAB\>/            " value labels
syntax match spssCommand /^\s*\<ADD VARIABLE LABEL\>/ " add variable labels
syntax match spssCommand /^\s*\<ADD VAR LABELS\>/     " add variable labels
syntax match spssCommand /^\s*\<ADD VAR LAB\>/        " add variable labels
syntax match spssCommand /^\s*\<ADD VALUE LABEL\>/    " add value labels
syntax match spssCommand /^\s*\<ADD VAL LAB\>/        " add value labels
syntax match spssCommand /^\s*\<RENAME VAR\>/         " rename variables
syntax match spssCommand /^\s*\<FORMAT\>/             " formats
syntax match spssCommand /^\s*\<TEMP\>/               " temporary
syntax match spssCommand /^\s*\<FREQ\>/               " frequencies
syntax match spssCommand /^\s*\<FRE\>/                " frequencies


" # SPSS SubCommands

syntax match spssSubCommand /\/\<$VARS\>/hs=s+1
syntax match spssSubCommand /\/\<1\>/hs=s+1
syntax match spssSubCommand /\/\<2\>/hs=s+1
syntax match spssSubCommand /\/\<ACCELERATION\>/hs=s+1
syntax match spssSubCommand /\/\<ACFSE\>/hs=s+1
syntax match spssSubCommand /\/\<ADJUSTLEVEL\>/hs=s+1
syntax match spssSubCommand /\/\<ALL\>/hs=s+1
syntax match spssSubCommand /\/\<ALPHA\>/hs=s+1
syntax match spssSubCommand /\/\<ANALYSIS\>/hs=s+1
syntax match spssSubCommand /\/\<ANALYSISWEIGHT\>/hs=s+1
syntax match spssSubCommand /\/\<APPEND\>/hs=s+1
syntax match spssSubCommand /\/\<APPLY\>/hs=s+1
syntax match spssSubCommand /\/\<AR\>/hs=s+1
syntax match spssSubCommand /\/\<ARCHITECTURE\>/hs=s+1
syntax match spssSubCommand /\/\<AREA\>/hs=s+1
syntax match spssSubCommand /\/\<ARIMA\>/hs=s+1
syntax match spssSubCommand /\/\<ARRANGEMENT\>/hs=s+1
syntax match spssSubCommand /\/\<ASSUMEDSTRWIDTH\>/hs=s+1
syntax match spssSubCommand /\/\<AUTOFIT\>/hs=s+1
syntax match spssSubCommand /\/\<AUTOFIX\>/hs=s+1
syntax match spssSubCommand /\/\<AUTOLABEL\>/hs=s+1
syntax match spssSubCommand /\/\<AUTOOUTLIER\>/hs=s+1
syntax match spssSubCommand /\/\<AUXILIARY\>/hs=s+1
syntax match spssSubCommand /\/\<BAR\>/hs=s+1
syntax match spssSubCommand /\/\<BARCHART\>/hs=s+1
syntax match spssSubCommand /\/\<BASE\>/hs=s+1
syntax match spssSubCommand /\/\<BASETEXTDIRECTION\>/hs=s+1
syntax match spssSubCommand /\/\<BIN\>/hs=s+1
syntax match spssSubCommand /\/\<BINOMIAL\>/hs=s+1
syntax match spssSubCommand /\/\<BLANK\>/hs=s+1
syntax match spssSubCommand /\/\<BLANKS\>/hs=s+1
syntax match spssSubCommand /\/\<BLOCK\>/hs=s+1
syntax match spssSubCommand /\/\<BMP\>/hs=s+1
syntax match spssSubCommand /\/\<BOOTSTRAP\>/hs=s+1
syntax match spssSubCommand /\/\<BOTH\>/hs=s+1
syntax match spssSubCommand /\/\<BOUNDS\>/hs=s+1
syntax match spssSubCommand /\/\<BOX\>/hs=s+1
syntax match spssSubCommand /\/\<BOXPLOT\>/hs=s+1
syntax match spssSubCommand /\/\<BREAK\>/hs=s+1
syntax match spssSubCommand /\/\<BUILD_OPTIONS\>/hs=s+1
syntax match spssSubCommand /\/\<BY\>/hs=s+1
syntax match spssSubCommand /\/\<C\>/hs=s+1
syntax match spssSubCommand /\/\<CACHE\>/hs=s+1
syntax match spssSubCommand /\/\<CALCULATE\>/hs=s+1
syntax match spssSubCommand /\/\<CAPSIGMA\>/hs=s+1
syntax match spssSubCommand /\/\<CAPTION\>/hs=s+1
syntax match spssSubCommand /\/\<CASECHECKS\>/hs=s+1
syntax match spssSubCommand /\/\<CASEID\>/hs=s+1
syntax match spssSubCommand /\/\<CASELABEL\>/hs=s+1
syntax match spssSubCommand /\/\<CASELABELS\>/hs=s+1
syntax match spssSubCommand /\/\<CASEREPORT\>/hs=s+1
syntax match spssSubCommand /\/\<CASES\>/hs=s+1
syntax match spssSubCommand /\/\<CASEWISE\>/hs=s+1
syntax match spssSubCommand /\/\<CATEGORICAL\>/hs=s+1
syntax match spssSubCommand /\/\<CATEGORIES\>/hs=s+1
syntax match spssSubCommand /\/\<CATORDER\>/hs=s+1
syntax match spssSubCommand /\/\<CC\>/hs=s+1
syntax match spssSubCommand /\/\<CCA\>/hs=s+1
syntax match spssSubCommand /\/\<CCB\>/hs=s+1
syntax match spssSubCommand /\/\<CCC\>/hs=s+1
syntax match spssSubCommand /\/\<CCD\>/hs=s+1
syntax match spssSubCommand /\/\<CCE\>/hs=s+1
syntax match spssSubCommand /\/\<CELLRANGE\>/hs=s+1
syntax match spssSubCommand /\/\<CELLS\>/hs=s+1
syntax match spssSubCommand /\/\<CELLSBREAK\>/hs=s+1
syntax match spssSubCommand /\/\<CENTER\>/hs=s+1
syntax match spssSubCommand /\/\<CHAID\>/hs=s+1
syntax match spssSubCommand /\/\<CHARTLOOK\>/hs=s+1
syntax match spssSubCommand /\/\<CHISQUARE\>/hs=s+1
syntax match spssSubCommand /\/\<CIN\>/hs=s+1
syntax match spssSubCommand /\/\<CINPCT\>/hs=s+1
syntax match spssSubCommand /\/\<CINTERVAL\>/hs=s+1
syntax match spssSubCommand /\/\<CLABELS\>/hs=s+1
syntax match spssSubCommand /\/\<CLASSIFY\>/hs=s+1
syntax match spssSubCommand /\/\<CLASSMISSING\>/hs=s+1
syntax match spssSubCommand /\/\<CLASSPLOT\>/hs=s+1
syntax match spssSubCommand /\/\<CLUSTER\>/hs=s+1
syntax match spssSubCommand /\/\<CMPTRANS\>/hs=s+1
syntax match spssSubCommand /\/\<CNVERGE\>/hs=s+1
syntax match spssSubCommand /\/\<COCHRAN\>/hs=s+1
syntax match spssSubCommand /\/\<COLOR\>/hs=s+1
syntax match spssSubCommand /\/\<COLUMNS\>/hs=s+1
syntax match spssSubCommand /\/\<COMPARE\>/hs=s+1
syntax match spssSubCommand /\/\<COMPARETEST\>/hs=s+1
syntax match spssSubCommand /\/\<COMPDATASET\>/hs=s+1
syntax match spssSubCommand /\/\<COMPRESSED\>/hs=s+1
syntax match spssSubCommand /\/\<CON\>/hs=s+1
syntax match spssSubCommand /\/\<CONDITION\>/hs=s+1
syntax match spssSubCommand /\/\<CONFIGURATION\>/hs=s+1
syntax match spssSubCommand /\/\<CONFORM\>/hs=s+1
syntax match spssSubCommand /\/\<CONNECT\>/hs=s+1
syntax match spssSubCommand /\/\<CONNECTION\>/hs=s+1
syntax match spssSubCommand /\/\<CONSTANT\>/hs=s+1
syntax match spssSubCommand /\/\<CONSTRAINTS\>/hs=s+1
syntax match spssSubCommand /\/\<CONTENTS\>/hs=s+1
syntax match spssSubCommand /\/\<CONTINGENCY\>/hs=s+1
syntax match spssSubCommand /\/\<CONTINUED\>/hs=s+1
syntax match spssSubCommand /\/\<CONTINUOUS\>/hs=s+1
syntax match spssSubCommand /\/\<CONTRAST\>/hs=s+1
syntax match spssSubCommand /\/\<CONVERGENCE\>/hs=s+1
syntax match spssSubCommand /\/\<COORDINATE\>/hs=s+1
syntax match spssSubCommand /\/\<CORNER\>/hs=s+1
syntax match spssSubCommand /\/\<CORRELATIONS\>/hs=s+1
syntax match spssSubCommand /\/\<COSTS\>/hs=s+1
syntax match spssSubCommand /\/\<COUNT\>/hs=s+1
syntax match spssSubCommand /\/\<COVARIATES\>/hs=s+1
syntax match spssSubCommand /\/\<CPCHART\>/hs=s+1
syntax match spssSubCommand /\/\<CREATE\>/hs=s+1
syntax match spssSubCommand /\/\<CRITERIA\>/hs=s+1
syntax match spssSubCommand /\/\<CRITITER\>/hs=s+1
syntax match spssSubCommand /\/\<CROSS\>/hs=s+1
syntax match spssSubCommand /\/\<CROSSTAB\>/hs=s+1
syntax match spssSubCommand /\/\<CROSSVALIDATION\>/hs=s+1
syntax match spssSubCommand /\/\<CRT\>/hs=s+1
syntax match spssSubCommand /\/\<CSTRUCTURE\>/hs=s+1
syntax match spssSubCommand /\/\<CTEMPLATE\>/hs=s+1
syntax match spssSubCommand /\/\<CUSTOM\>/hs=s+1
syntax match spssSubCommand /\/\<CWEIGHT\>/hs=s+1
syntax match spssSubCommand /\/\<D\>/hs=s+1
syntax match spssSubCommand /\/\<DATA\>/hs=s+1
syntax match spssSubCommand /\/\<DATA_STRUCTURE\>/hs=s+1
syntax match spssSubCommand /\/\<DATABASE\>/hs=s+1
syntax match spssSubCommand /\/\<DECIMAL\>/hs=s+1
syntax match spssSubCommand /\/\<DEFAULT\>/hs=s+1
syntax match spssSubCommand /\/\<DEFOLANG\>/hs=s+1
syntax match spssSubCommand /\/\<DELCASE\>/hs=s+1
syntax match spssSubCommand /\/\<DELETE\>/hs=s+1
syntax match spssSubCommand /\/\<DELETEOBJECT\>/hs=s+1
syntax match spssSubCommand /\/\<DELIMITERS\>/hs=s+1
syntax match spssSubCommand /\/\<DELTA\>/hs=s+1
syntax match spssSubCommand /\/\<DEPCATEGORIES\>/hs=s+1
syntax match spssSubCommand /\/\<DEPENDENT\>/hs=s+1
syntax match spssSubCommand /\/\<DESCENDING\>/hs=s+1
syntax match spssSubCommand /\/\<DESCRIPTIVES\>/hs=s+1
syntax match spssSubCommand /\/\<DESIGN\>/hs=s+1
syntax match spssSubCommand /\/\<DESTINATION\>/hs=s+1
syntax match spssSubCommand /\/\<DFE\>/hs=s+1
syntax match spssSubCommand /\/\<DFH\>/hs=s+1
syntax match spssSubCommand /\/\<DIAGONAL\>/hs=s+1
syntax match spssSubCommand /\/\<DIFF\>/hs=s+1
syntax match spssSubCommand /\/\<DIGITGROUPING\>/hs=s+1
syntax match spssSubCommand /\/\<DIGITS\>/hs=s+1
syntax match spssSubCommand /\/\<DIMENSION\>/hs=s+1
syntax match spssSubCommand /\/\<DIMENSIONS\>/hs=s+1
syntax match spssSubCommand /\/\<DIRECTORY\>/hs=s+1
syntax match spssSubCommand /\/\<DISCRETIZATION\>/hs=s+1
syntax match spssSubCommand /\/\<DISCRIM\>/hs=s+1
syntax match spssSubCommand /\/\<DISPLAY\>/hs=s+1
syntax match spssSubCommand /\/\<DISTANCE\>/hs=s+1
syntax match spssSubCommand /\/\<DISTRIBUTION\>/hs=s+1
syntax match spssSubCommand /\/\<DOC\>/hs=s+1
syntax match spssSubCommand /\/\<DOCUMENT\>/hs=s+1
syntax match spssSubCommand /\/\<DOMAIN\>/hs=s+1
syntax match spssSubCommand /\/\<DPATTERN\>/hs=s+1
syntax match spssSubCommand /\/\<DROP\>/hs=s+1
syntax match spssSubCommand /\/\<EDITION\>/hs=s+1
syntax match spssSubCommand /\/\<EEMEANS\>/hs=s+1
syntax match spssSubCommand /\/\<EFFECT\>/hs=s+1
syntax match spssSubCommand /\/\<EM\>/hs=s+1
syntax match spssSubCommand /\/\<EMF\>/hs=s+1
syntax match spssSubCommand /\/\<EMMEANS\>/hs=s+1
syntax match spssSubCommand /\/\<EMMEANS_OPTIONS\>/hs=s+1
syntax match spssSubCommand /\/\<ENCODING\>/hs=s+1
syntax match spssSubCommand /\/\<ENCRYPTED\>/hs=s+1
syntax match spssSubCommand /\/\<ENDOGENOUS\>/hs=s+1
syntax match spssSubCommand /\/\<ENSEMBLES\>/hs=s+1
syntax match spssSubCommand /\/\<ENVIRONMENT\>/hs=s+1
syntax match spssSubCommand /\/\<EPOCH\>/hs=s+1
syntax match spssSubCommand /\/\<EPS\>/hs=s+1
syntax match spssSubCommand /\/\<EQUAL\>/hs=s+1
syntax match spssSubCommand /\/\<EQUATION\>/hs=s+1
syntax match spssSubCommand /\/\<ERROR\>/hs=s+1
syntax match spssSubCommand /\/\<ERRORBAR\>/hs=s+1
syntax match spssSubCommand /\/\<ERRORS\>/hs=s+1
syntax match spssSubCommand /\/\<ESTIMATOR\>/hs=s+1
syntax match spssSubCommand /\/\<EXCEPT\>/hs=s+1
syntax match spssSubCommand /\/\<EXCEPTIF\>/hs=s+1
syntax match spssSubCommand /\/\<EXPECTED\>/hs=s+1
syntax match spssSubCommand /\/\<EXPERTMODELER\>/hs=s+1
syntax match spssSubCommand /\/\<EXSMOOTH\>/hs=s+1
syntax match spssSubCommand /\/\<EXTERNAL\>/hs=s+1
syntax match spssSubCommand /\/\<EXTPATHS\>/hs=s+1
syntax match spssSubCommand /\/\<EXTRACTION\>/hs=s+1
syntax match spssSubCommand /\/\<FACTORS\>/hs=s+1
syntax match spssSubCommand /\/\<FIELDNAMES\>/hs=s+1
syntax match spssSubCommand /\/\<FIELDS\>/hs=s+1
syntax match spssSubCommand /\/\<FILE\>/hs=s+1
syntax match spssSubCommand /\/\<FILEINFO\>/hs=s+1
syntax match spssSubCommand /\/\<FILTER\>/hs=s+1
syntax match spssSubCommand /\/\<FIN\>/hs=s+1
syntax match spssSubCommand /\/\<FIRST\>/hs=s+1
syntax match spssSubCommand /\/\<FIRSTCASE\>/hs=s+1
syntax match spssSubCommand /\/\<FITLINE\>/hs=s+1
syntax match spssSubCommand /\/\<FIXCASE\>/hs=s+1
syntax match spssSubCommand /\/\<FIXED\>/hs=s+1
syntax match spssSubCommand /\/\<FIXEDINPUT\>/hs=s+1
syntax match spssSubCommand /\/\<FOCALCASES\>/hs=s+1
syntax match spssSubCommand /\/\<FOOTER\>/hs=s+1
syntax match spssSubCommand /\/\<FOOTNOTE\>/hs=s+1
syntax match spssSubCommand /\/\<FORCE\>/hs=s+1
syntax match spssSubCommand /\/\<FORECAST\>/hs=s+1
syntax match spssSubCommand /\/\<FORMAT\>/hs=s+1
syntax match spssSubCommand /\/\<FORMATS\>/hs=s+1
syntax match spssSubCommand /\/\<FOUT\>/hs=s+1
syntax match spssSubCommand /\/\<FRACTION\>/hs=s+1
syntax match spssSubCommand /\/\<FREQUENCIES\>/hs=s+1
syntax match spssSubCommand /\/\<FRIEDMAN\>/hs=s+1
syntax match spssSubCommand /\/\<FROM\>/hs=s+1
syntax match spssSubCommand /\/\<FTOTAL\>/hs=s+1
syntax match spssSubCommand /\/\<FULLFACTORIAL\>/hs=s+1
syntax match spssSubCommand /\/\<FUNCTIONS\>/hs=s+1
syntax match spssSubCommand /\/\<FUZZBITS\>/hs=s+1
syntax match spssSubCommand /\/\<GAIN\>/hs=s+1
syntax match spssSubCommand /\/\<GAMMA\>/hs=s+1
syntax match spssSubCommand /\/\<GBASE\>/hs=s+1
syntax match spssSubCommand /\/\<GLOR\>/hs=s+1
syntax match spssSubCommand /\/\<GOLBAL_PARAMS\>/hs=s+1
syntax match spssSubCommand /\/\<GRAPHDATASET\>/hs=s+1
syntax match spssSubCommand /\/\<GRAPHS\>/hs=s+1
syntax match spssSubCommand /\/\<GRAPHSPEC\>/hs=s+1
syntax match spssSubCommand /\/\<GRESID\>/hs=s+1
syntax match spssSubCommand /\/\<GROUP\>/hs=s+1
syntax match spssSubCommand /\/\<GROUPBY\>/hs=s+1
syntax match spssSubCommand /\/\<GROUPED\>/hs=s+1
syntax match spssSubCommand /\/\<GROUPS\>/hs=s+1
syntax match spssSubCommand /\/\<GROWTHLIMIT\>/hs=s+1
syntax match spssSubCommand /\/\<HANDLEMISSING\>/hs=s+1
syntax match spssSubCommand /\/\<HANDLENOISE\>/hs=s+1
syntax match spssSubCommand /\/\<HANDLES\>/hs=s+1
syntax match spssSubCommand /\/\<HEADER\>/hs=s+1
syntax match spssSubCommand /\/\<HIDESMALLCOUNTS\>/hs=s+1
syntax match spssSubCommand /\/\<HILO\>/hs=s+1
syntax match spssSubCommand /\/\<HISTOGRAM\>/hs=s+1
syntax match spssSubCommand /\/\<HISTORY\>/hs=s+1
syntax match spssSubCommand /\/\<HOLDOUT\>/hs=s+1
syntax match spssSubCommand /\/\<HTML\>/hs=s+1
syntax match spssSubCommand /\/\<I\>/hs=s+1
syntax match spssSubCommand /\/\<ICC\>/hs=s+1
syntax match spssSubCommand /\/\<ID\>/hs=s+1
syntax match spssSubCommand /\/\<IDCHECKS\>/hs=s+1
syntax match spssSubCommand /\/\<IF\>/hs=s+1
syntax match spssSubCommand /\/\<IMPORT\>/hs=s+1
syntax match spssSubCommand /\/\<IMPORTCASE\>/hs=s+1
syntax match spssSubCommand /\/\<IMPUTATIONSUMMARIES\>/hs=s+1
syntax match spssSubCommand /\/\<IMPUTE\>/hs=s+1
syntax match spssSubCommand /\/\<IN\>/hs=s+1
syntax match spssSubCommand /\/\<INCLPROB\>/hs=s+1
syntax match spssSubCommand /\/\<INDEPENDENT\>/hs=s+1
syntax match spssSubCommand /\/\<INDEX\>/hs=s+1
syntax match spssSubCommand /\/\<INDEXING\>/hs=s+1
syntax match spssSubCommand /\/\<INFILE\>/hs=s+1
syntax match spssSubCommand /\/\<INFLUENCE\>/hs=s+1
syntax match spssSubCommand /\/\<INITIAL\>/hs=s+1
syntax match spssSubCommand /\/\<INPUT\>/hs=s+1
syntax match spssSubCommand /\/\<INSTRUMENTS\>/hs=s+1
syntax match spssSubCommand /\/\<INTERCEPT\>/hs=s+1
syntax match spssSubCommand /\/\<INTERVAL\>/hs=s+1
syntax match spssSubCommand /\/\<INTO\>/hs=s+1
syntax match spssSubCommand /\/\<IR\>/hs=s+1
syntax match spssSubCommand /\/\<JOIN\>/hs=s+1
syntax match spssSubCommand /\/\<JOINTPROB\>/hs=s+1
syntax match spssSubCommand /\/\<JPG\>/hs=s+1
syntax match spssSubCommand /\/\<J-T\>/hs=s+1
syntax match spssSubCommand /\/\<KEEP\>/hs=s+1
syntax match spssSubCommand /\/\<KENDALL\>/hs=s+1
syntax match spssSubCommand /\/\<KMATRIX\>/hs=s+1
syntax match spssSubCommand /\/\<K-S\>/hs=s+1
syntax match spssSubCommand /\/\<K-W\>/hs=s+1
syntax match spssSubCommand /\/\<LAST\>/hs=s+1
syntax match spssSubCommand /\/\<LENGTH\>/hs=s+1
syntax match spssSubCommand /\/\<LEVEL\>/hs=s+1
syntax match spssSubCommand /\/\<LICENSE\>/hs=s+1
syntax match spssSubCommand /\/\<LINE\>/hs=s+1
syntax match spssSubCommand /\/\<LINK\>/hs=s+1
syntax match spssSubCommand /\/\<LISTWISE\>/hs=s+1
syntax match spssSubCommand /\/\<LMATRIX\>/hs=s+1
syntax match spssSubCommand /\/\<LN\>/hs=s+1
syntax match spssSubCommand /\/\<LOCALE\>/hs=s+1
syntax match spssSubCommand /\/\<LOCATION\>/hs=s+1
syntax match spssSubCommand /\/\<LOCK\>/hs=s+1
syntax match spssSubCommand /\/\<LOG\>/hs=s+1
syntax match spssSubCommand /\/\<LOGIN\>/hs=s+1
syntax match spssSubCommand /\/\<LOSS\>/hs=s+1
syntax match spssSubCommand /\/\<LRECL\>/hs=s+1
syntax match spssSubCommand /\/\<LSL\>/hs=s+1
syntax match spssSubCommand /\/\<MA\>/hs=s+1
syntax match spssSubCommand /\/\<MAKE\>/hs=s+1
syntax match spssSubCommand /\/\<MAP\>/hs=s+1
syntax match spssSubCommand /\/\<MARK\>/hs=s+1
syntax match spssSubCommand /\/\<MATRIX\>/hs=s+1
syntax match spssSubCommand /\/\<MAXCAT\>/hs=s+1
syntax match spssSubCommand /\/\<MAXCOUNT\>/hs=s+1
syntax match spssSubCommand /\/\<MAXITER\>/hs=s+1
syntax match spssSubCommand /\/\<MAXORDER\>/hs=s+1
syntax match spssSubCommand /\/\<MAXORDERS\>/hs=s+1
syntax match spssSubCommand /\/\<MAXSTEPS\>/hs=s+1
syntax match spssSubCommand /\/\<MCACHE\>/hs=s+1
syntax match spssSubCommand /\/\<MCGROUP\>/hs=s+1
syntax match spssSubCommand /\/\<MCNEMAR\>/hs=s+1
syntax match spssSubCommand /\/\<MDGROUP\>/hs=s+1
syntax match spssSubCommand /\/\<MEAN\>/hs=s+1
syntax match spssSubCommand /\/\<MEASURE\>/hs=s+1
syntax match spssSubCommand /\/\<MEDIAN\>/hs=s+1
syntax match spssSubCommand /\/\<MEMALLOCATE\>/hs=s+1
syntax match spssSubCommand /\/\<MESSAGES\>/hs=s+1
syntax match spssSubCommand /\/\<MESTIMATORS\>/hs=s+1
syntax match spssSubCommand /\/\<METADATA\>/hs=s+1
syntax match spssSubCommand /\/\<METHOD\>/hs=s+1
syntax match spssSubCommand /\/\<MEXPAND\>/hs=s+1
syntax match spssSubCommand /\/\<MH\>/hs=s+1
syntax match spssSubCommand /\/\<MINIMUM\>/hs=s+1
syntax match spssSubCommand /\/\<MINRATE\>/hs=s+1
syntax match spssSubCommand /\/\<MINSAMPLE\>/hs=s+1
syntax match spssSubCommand /\/\<MIOUTPUT\>/hs=s+1
syntax match spssSubCommand /\/\<MISMATCH\>/hs=s+1
syntax match spssSubCommand /\/\<MISSING\>/hs=s+1
syntax match spssSubCommand /\/\<MISSINGSUMMARIES\>/hs=s+1
syntax match spssSubCommand /\/\<MITERATE\>/hs=s+1
syntax match spssSubCommand /\/\<MIXHOLD\>/hs=s+1
syntax match spssSubCommand /\/\<MMATRIX\>/hs=s+1
syntax match spssSubCommand /\/\<MNEST\>/hs=s+1
syntax match spssSubCommand /\/\<MODE\>/hs=s+1
syntax match spssSubCommand /\/\<MODEL\>/hs=s+1
syntax match spssSubCommand /\/\<MODELDETAILS\>/hs=s+1
syntax match spssSubCommand /\/\<MODELSTATISTICS\>/hs=s+1
syntax match spssSubCommand /\/\<MODELSUMMARY\>/hs=s+1
syntax match spssSubCommand /\/\<MOS\>/hs=s+1
syntax match spssSubCommand /\/\<MOSES\>/hs=s+1
syntax match spssSubCommand /\/\<MPATTERN\>/hs=s+1
syntax match spssSubCommand /\/\<MPRINT\>/hs=s+1
syntax match spssSubCommand /\/\<MRSETS\>/hs=s+1
syntax match spssSubCommand /\/\<MTINDEX\>/hs=s+1
syntax match spssSubCommand /\/\<M-W\>/hs=s+1
syntax match spssSubCommand /\/\<MXAUTO\>/hs=s+1
syntax match spssSubCommand /\/\<MXCELLS\>/hs=s+1
syntax match spssSubCommand /\/\<MXCROSS\>/hs=s+1
syntax match spssSubCommand /\/\<MXERRS\>/hs=s+1
syntax match spssSubCommand /\/\<MXITER\>/hs=s+1
syntax match spssSubCommand /\/\<MXLAMB\>/hs=s+1
syntax match spssSubCommand /\/\<MXLOOPS\>/hs=s+1
syntax match spssSubCommand /\/\<MXNEWVARS\>/hs=s+1
syntax match spssSubCommand /\/\<MXPREDICT\>/hs=s+1
syntax match spssSubCommand /\/\<MXWARNS\>/hs=s+1
syntax match spssSubCommand /\/\<N\>/hs=s+1
syntax match spssSubCommand /\/\<NAME\>/hs=s+1
syntax match spssSubCommand /\/\<NAMES\>/hs=s+1
syntax match spssSubCommand /\/\<NATRES\>/hs=s+1
syntax match spssSubCommand /\/\<NEWNAMES\>/hs=s+1
syntax match spssSubCommand /\/\<NEWVAR\>/hs=s+1
syntax match spssSubCommand /\/\<NEWVARS\>/hs=s+1
syntax match spssSubCommand /\/\<NOBSERVATIONS\>/hs=s+1
syntax match spssSubCommand /\/\<NOCONSTANT\>/hs=s+1
syntax match spssSubCommand /\/\<NOLOG\>/hs=s+1
syntax match spssSubCommand /\/\<NONCONFORM\>/hs=s+1
syntax match spssSubCommand /\/\<NONE\>/hs=s+1
syntax match spssSubCommand /\/\<NONPARALLEL\>/hs=s+1
syntax match spssSubCommand /\/\<NOORIGIN\>/hs=s+1
syntax match spssSubCommand /\/\<NOPRINT\>/hs=s+1
syntax match spssSubCommand /\/\<NORMAL\>/hs=s+1
syntax match spssSubCommand /\/\<NORMALIZATION\>/hs=s+1
syntax match spssSubCommand /\/\<NORMALIZE\>/hs=s+1
syntax match spssSubCommand /\/\<NOSTANDARDIZE\>/hs=s+1
syntax match spssSubCommand /\/\<NOTABLE\>/hs=s+1
syntax match spssSubCommand /\/\<NOTOTAL\>/hs=s+1
syntax match spssSubCommand /\/\<NOUNIVARIATE\>/hs=s+1
syntax match spssSubCommand /\/\<NOWARN\>/hs=s+1
syntax match spssSubCommand /\/\<NP\>/hs=s+1
syntax match spssSubCommand /\/\<NTILES\>/hs=s+1
syntax match spssSubCommand /\/\<NULL\>/hs=s+1
syntax match spssSubCommand /\/\<NUMCLUSTERS\>/hs=s+1
syntax match spssSubCommand /\/\<OATTRS\>/hs=s+1
syntax match spssSubCommand /\/\<OBJECTPROPERTIES\>/hs=s+1
syntax match spssSubCommand /\/\<OBS\>/hs=s+1
syntax match spssSubCommand /\/\<OBSERVATION\>/hs=s+1
syntax match spssSubCommand /\/\<OCCURS\>/hs=s+1
syntax match spssSubCommand /\/\<ODDSRATIOS\>/hs=s+1
syntax match spssSubCommand /\/\<ODISPLAY\>/hs=s+1
syntax match spssSubCommand /\/\<OLANG\>/hs=s+1
syntax match spssSubCommand /\/\<OMEANS\>/hs=s+1
syntax match spssSubCommand /\/\<ONESAMPLE TEST\>/hs=s+1
syntax match spssSubCommand /\/\<ONUMBERS\>/hs=s+1
syntax match spssSubCommand /\/\<OPTIONS\>/hs=s+1
syntax match spssSubCommand /\/\<ORDER\>/hs=s+1
syntax match spssSubCommand /\/\<ORIGIN\>/hs=s+1
syntax match spssSubCommand /\/\<OUTDATASET\>/hs=s+1
syntax match spssSubCommand /\/\<OUTFILE\>/hs=s+1
syntax match spssSubCommand /\/\<OUTLIER\>/hs=s+1
syntax match spssSubCommand /\/\<OUTLIERHANDLING\>/hs=s+1
syntax match spssSubCommand /\/\<OUTPUT\>/hs=s+1
syntax match spssSubCommand /\/\<OUTPUTFILTER\>/hs=s+1
syntax match spssSubCommand /\/\<OVARS\>/hs=s+1
syntax match spssSubCommand /\/\<P\>/hs=s+1
syntax match spssSubCommand /\/\<PACF\>/hs=s+1
syntax match spssSubCommand /\/\<PAIRWISE\>/hs=s+1
syntax match spssSubCommand /\/\<PANEL\>/hs=s+1
syntax match spssSubCommand /\/\<PARAMETERS\>/hs=s+1
syntax match spssSubCommand /\/\<PAREPS\>/hs=s+1
syntax match spssSubCommand /\/\<PARETO\>/hs=s+1
syntax match spssSubCommand /\/\<PARTIALPLOT\>/hs=s+1
syntax match spssSubCommand /\/\<PARTITION\>/hs=s+1
syntax match spssSubCommand /\/\<PASSPROTECT\>/hs=s+1
syntax match spssSubCommand /\/\<PASSWORD\>/hs=s+1
syntax match spssSubCommand /\/\<PATTERN\>/hs=s+1
syntax match spssSubCommand /\/\<PCOMPS\>/hs=s+1
syntax match spssSubCommand /\/\<PCOMPUTE\>/hs=s+1
syntax match spssSubCommand /\/\<PDF\>/hs=s+1
syntax match spssSubCommand /\/\<PENALTY\>/hs=s+1
syntax match spssSubCommand /\/\<PERCENT\>/hs=s+1
syntax match spssSubCommand /\/\<PERCENTILES\>/hs=s+1
syntax match spssSubCommand /\/\<PERIOD\>/hs=s+1
syntax match spssSubCommand /\/\<PERMISSIONS\>/hs=s+1
syntax match spssSubCommand /\/\<PHI\>/hs=s+1
syntax match spssSubCommand /\/\<PIE\>/hs=s+1
syntax match spssSubCommand /\/\<PIECHART\>/hs=s+1
syntax match spssSubCommand /\/\<PIN\>/hs=s+1
syntax match spssSubCommand /\/\<PLAN\>/hs=s+1
syntax match spssSubCommand /\/\<PLANVARS\>/hs=s+1
syntax match spssSubCommand /\/\<PLATFORM\>/hs=s+1
syntax match spssSubCommand /\/\<PLOT\>/hs=s+1
syntax match spssSubCommand /\/\<PLOT MEANS\>/hs=s+1
syntax match spssSubCommand /\/\<PLOTS\>/hs=s+1
syntax match spssSubCommand /\/\<PLUGINS\>/hs=s+1
syntax match spssSubCommand /\/\<PMEANS\>/hs=s+1
syntax match spssSubCommand /\/\<PNG\>/hs=s+1
syntax match spssSubCommand /\/\<POINTLABEL\>/hs=s+1
syntax match spssSubCommand /\/\<POLYNOMIAL\>/hs=s+1
syntax match spssSubCommand /\/\<POPSIZE\>/hs=s+1
syntax match spssSubCommand /\/\<POSTHOC\>/hs=s+1
syntax match spssSubCommand /\/\<POUT\>/hs=s+1
syntax match spssSubCommand /\/\<POWER\>/hs=s+1
syntax match spssSubCommand /\/\<PPROPERTIES\>/hs=s+1
syntax match spssSubCommand /\/\<PPT\>/hs=s+1
syntax match spssSubCommand /\/\<PRED\>/hs=s+1
syntax match spssSubCommand /\/\<PREPDATETIME\>/hs=s+1
syntax match spssSubCommand /\/\<PRESORTED\>/hs=s+1
syntax match spssSubCommand /\/\<PRINT\>/hs=s+1
syntax match spssSubCommand /\/\<PRINTBACK\>/hs=s+1
syntax match spssSubCommand /\/\<PRIORS\>/hs=s+1
syntax match spssSubCommand /\/\<PROFITS\>/hs=s+1
syntax match spssSubCommand /\/\<PROPORTION\>/hs=s+1
syntax match spssSubCommand /\/\<PROXIMITIES\>/hs=s+1
syntax match spssSubCommand /\/\<PTOTAL\>/hs=s+1
syntax match spssSubCommand /\/\<Q\>/hs=s+1
syntax match spssSubCommand /\/\<QUALIFIER\>/hs=s+1
syntax match spssSubCommand /\/\<QUEST\>/hs=s+1
syntax match spssSubCommand /\/\<RANDOM\>/hs=s+1
syntax match spssSubCommand /\/\<RANGE\>/hs=s+1
syntax match spssSubCommand /\/\<RANGES\>/hs=s+1
syntax match spssSubCommand /\/\<RANK\>/hs=s+1
syntax match spssSubCommand /\/\<RATE\>/hs=s+1
syntax match spssSubCommand /\/\<RATIO\>/hs=s+1
syntax match spssSubCommand /\/\<READNAMES\>/hs=s+1
syntax match spssSubCommand /\/\<RECFORM\>/hs=s+1
syntax match spssSubCommand /\/\<REFERENCE\>/hs=s+1
syntax match spssSubCommand /\/\<REFLINE\>/hs=s+1
syntax match spssSubCommand /\/\<REG\>/hs=s+1
syntax match spssSubCommand /\/\<REGRESSION\>/hs=s+1
syntax match spssSubCommand /\/\<REGULARIZATION\>/hs=s+1
syntax match spssSubCommand /\/\<REGWGT\>/hs=s+1
syntax match spssSubCommand /\/\<RELATED TEST\>/hs=s+1
syntax match spssSubCommand /\/\<RENAME\>/hs=s+1
syntax match spssSubCommand /\/\<REORDERNOMINAL\>/hs=s+1
syntax match spssSubCommand /\/\<REPDEFER\>/hs=s+1
syntax match spssSubCommand /\/\<REPEATED\>/hs=s+1
syntax match spssSubCommand /\/\<REPLACE\>/hs=s+1
syntax match spssSubCommand /\/\<REPLACEMISSING\>/hs=s+1
syntax match spssSubCommand /\/\<REPORT\>/hs=s+1
syntax match spssSubCommand /\/\<RESAMPLE\>/hs=s+1
syntax match spssSubCommand /\/\<RESCALE\>/hs=s+1
syntax match spssSubCommand /\/\<RESIDUALS\>/hs=s+1
syntax match spssSubCommand /\/\<RESTRICTIONS\>/hs=s+1
syntax match spssSubCommand /\/\<RESULTS\>/hs=s+1
syntax match spssSubCommand /\/\<RFRACTION\>/hs=s+1
syntax match spssSubCommand /\/\<RHO\>/hs=s+1
syntax match spssSubCommand /\/\<RNG\>/hs=s+1
syntax match spssSubCommand /\/\<ROTATE\>/hs=s+1
syntax match spssSubCommand /\/\<ROTATION\>/hs=s+1
syntax match spssSubCommand /\/\<ROWSBREAK\>/hs=s+1
syntax match spssSubCommand /\/\<RULES\>/hs=s+1
syntax match spssSubCommand /\/\<RULESUMMARIES\>/hs=s+1
syntax match spssSubCommand /\/\<RUNS\>/hs=s+1
syntax match spssSubCommand /\/\<SAMPLE\>/hs=s+1
syntax match spssSubCommand /\/\<SAMPLEFILE\>/hs=s+1
syntax match spssSubCommand /\/\<SAMPLING\>/hs=s+1
syntax match spssSubCommand /\/\<SAR\>/hs=s+1
syntax match spssSubCommand /\/\<SAVAGE\>/hs=s+1
syntax match spssSubCommand /\/\<SAVE\>/hs=s+1
syntax match spssSubCommand /\/\<SCALE\>/hs=s+1
syntax match spssSubCommand /\/\<SCALEMIN\>/hs=s+1
syntax match spssSubCommand /\/\<SCATTER\>/hs=s+1
syntax match spssSubCommand /\/\<SCATTERPLOT\>/hs=s+1
syntax match spssSubCommand /\/\<SCOMPRESSION\>/hs=s+1
syntax match spssSubCommand /\/\<SCORE\>/hs=s+1
syntax match spssSubCommand /\/\<SCORES\>/hs=s+1
syntax match spssSubCommand /\/\<SCREENING\>/hs=s+1
syntax match spssSubCommand /\/\<SD\>/hs=s+1
syntax match spssSubCommand /\/\<SDIFF\>/hs=s+1
syntax match spssSubCommand /\/\<SEASFACT\>/hs=s+1
syntax match spssSubCommand /\/\<SEASONAL\>/hs=s+1
syntax match spssSubCommand /\/\<SECURITY\>/hs=s+1
syntax match spssSubCommand /\/\<SEED\>/hs=s+1
syntax match spssSubCommand /\/\<SELECT\>/hs=s+1
syntax match spssSubCommand /\/\<SELECTRULE\>/hs=s+1
syntax match spssSubCommand /\/\<SEPARATOR\>/hs=s+1
syntax match spssSubCommand /\/\<SEQUENCE\>/hs=s+1
syntax match spssSubCommand /\/\<SERIESPLOT\>/hs=s+1
syntax match spssSubCommand /\/\<SERROR\>/hs=s+1
syntax match spssSubCommand /\/\<SERVER\>/hs=s+1
syntax match spssSubCommand /\/\<SETS\>/hs=s+1
syntax match spssSubCommand /\/\<SHAPE\>/hs=s+1
syntax match spssSubCommand /\/\<SHEET\>/hs=s+1
syntax match spssSubCommand /\/\<SHOWDIM\>/hs=s+1
syntax match spssSubCommand /\/\<SIGMAS\>/hs=s+1
syntax match spssSubCommand /\/\<SIGN\>/hs=s+1
syntax match spssSubCommand /\/\<SIGNIFICANCE\>/hs=s+1
syntax match spssSubCommand /\/\<SIGTEST\>/hs=s+1
syntax match spssSubCommand /\/\<SIMINPUT\>/hs=s+1
syntax match spssSubCommand /\/\<SIZE\>/hs=s+1
syntax match spssSubCommand /\/\<SLABELS\>/hs=s+1
syntax match spssSubCommand /\/\<SMA\>/hs=s+1
syntax match spssSubCommand /\/\<SMALL\>/hs=s+1
syntax match spssSubCommand /\/\<SMISSING\>/hs=s+1
syntax match spssSubCommand /\/\<SORT\>/hs=s+1
syntax match spssSubCommand /\/\<SOURCE\>/hs=s+1
syntax match spssSubCommand /\/\<SOURCE VARIABLES\>/hs=s+1
syntax match spssSubCommand /\/\<SP\>/hs=s+1
syntax match spssSubCommand /\/\<SPAN\>/hs=s+1
syntax match spssSubCommand /\/\<SPEC_PARAMS\>/hs=s+1
syntax match spssSubCommand /\/\<SPECIFICATION\>/hs=s+1
syntax match spssSubCommand /\/\<SPIKE\>/hs=s+1
syntax match spssSubCommand /\/\<SPLIT\>/hs=s+1
syntax match spssSubCommand /\/\<SQ\>/hs=s+1
syntax match spssSubCommand /\/\<SQL\>/hs=s+1
syntax match spssSubCommand /\/\<SRSESTIMATOR\>/hs=s+1
syntax match spssSubCommand /\/\<SSQPCT\>/hs=s+1
syntax match spssSubCommand /\/\<STACK\>/hs=s+1
syntax match spssSubCommand /\/\<STAGEVARS\>/hs=s+1
syntax match spssSubCommand /\/\<STANDARDIZE\>/hs=s+1
syntax match spssSubCommand /\/\<STARTS\>/hs=s+1
syntax match spssSubCommand /\/\<STATISTICS\>/hs=s+1
syntax match spssSubCommand /\/\<STATUS\>/hs=s+1
syntax match spssSubCommand /\/\<STEPWISE\>/hs=s+1
syntax match spssSubCommand /\/\<STOPCRITERIA\>/hs=s+1
syntax match spssSubCommand /\/\<STOPPINGRULES\>/hs=s+1
syntax match spssSubCommand /\/\<STRATA\>/hs=s+1
syntax match spssSubCommand /\/\<STRING\>/hs=s+1
syntax match spssSubCommand /\/\<STYLE\>/hs=s+1
syntax match spssSubCommand /\/\<SUBJECT\>/hs=s+1
syntax match spssSubCommand /\/\<SUBPOP\>/hs=s+1
syntax match spssSubCommand /\/\<SUBSET\>/hs=s+1
syntax match spssSubCommand /\/\<SUBTITLE\>/hs=s+1
syntax match spssSubCommand /\/\<SUM\>/hs=s+1
syntax match spssSubCommand /\/\<SUMMARY\>/hs=s+1
syntax match spssSubCommand /\/\<SUMMARYVAR\>/hs=s+1
syntax match spssSubCommand /\/\<SUPPLEMENTARY\>/hs=s+1
syntax match spssSubCommand /\/\<SURVIVALMETHOD\>/hs=s+1
syntax match spssSubCommand /\/\<SYSMIS\>/hs=s+1
syntax match spssSubCommand /\/\<TABLE\>/hs=s+1
syntax match spssSubCommand /\/\<TABLECELLS\>/hs=s+1
syntax match spssSubCommand /\/\<TABLERENDER\>/hs=s+1
syntax match spssSubCommand /\/\<TABLES\>/hs=s+1
syntax match spssSubCommand /\/\<TAG\>/hs=s+1
syntax match spssSubCommand /\/\<TARGET\>/hs=s+1
syntax match spssSubCommand /\/\<TARGET VARIABLES\>/hs=s+1
syntax match spssSubCommand /\/\<TARGET_OPTIONS\>/hs=s+1
syntax match spssSubCommand /\/\<TARGETOPTS\>/hs=s+1
syntax match spssSubCommand /\/\<TARGETRESPONSE\>/hs=s+1
syntax match spssSubCommand /\/\<TEMPLATE\>/hs=s+1
syntax match spssSubCommand /\/\<TEST\>/hs=s+1
syntax match spssSubCommand /\/\<TESTASSUMPTIONS\>/hs=s+1
syntax match spssSubCommand /\/\<TESTVAL\>/hs=s+1
syntax match spssSubCommand /\/\<TEXT\>/hs=s+1
syntax match spssSubCommand /\/\<TEXTOPTIONS\>/hs=s+1
syntax match spssSubCommand /\/\<TEXTS\>/hs=s+1
syntax match spssSubCommand /\/\<TFIT\>/hs=s+1
syntax match spssSubCommand /\/\<THREADS\>/hs=s+1
syntax match spssSubCommand /\/\<TIES\>/hs=s+1
syntax match spssSubCommand /\/\<TIF\>/hs=s+1
syntax match spssSubCommand /\/\<TITLE\>/hs=s+1
syntax match spssSubCommand /\/\<TITLES\>/hs=s+1
syntax match spssSubCommand /\/\<TLOOK\>/hs=s+1
syntax match spssSubCommand /\/\<TMSRECORDING\>/hs=s+1
syntax match spssSubCommand /\/\<TNUMBERS\>/hs=s+1
syntax match spssSubCommand /\/\<TOLER\>/hs=s+1
syntax match spssSubCommand /\/\<TOLERANCE\>/hs=s+1
syntax match spssSubCommand /\/\<TORNADO\>/hs=s+1
syntax match spssSubCommand /\/\<TOTAL\>/hs=s+1
syntax match spssSubCommand /\/\<TPATTERN\>/hs=s+1
syntax match spssSubCommand /\/\<TRAININGSAMPLE\>/hs=s+1
syntax match spssSubCommand /\/\<TRANSFERFUNCTION\>/hs=s+1
syntax match spssSubCommand /\/\<TRANSFORM\>/hs=s+1
syntax match spssSubCommand /\/\<TRANSFORMATION\>/hs=s+1
syntax match spssSubCommand /\/\<TRANSFORMATIONS\>/hs=s+1
syntax match spssSubCommand /\/\<TREE\>/hs=s+1
syntax match spssSubCommand /\/\<TREND\>/hs=s+1
syntax match spssSubCommand /\/\<TSET\>/hs=s+1
syntax match spssSubCommand /\/\<TTEST\>/hs=s+1
syntax match spssSubCommand /\/\<TVARS\>/hs=s+1
syntax match spssSubCommand /\/\<TYPE\>/hs=s+1
syntax match spssSubCommand /\/\<U\>/hs=s+1
syntax match spssSubCommand /\/\<UNCOMPRESSED\>/hs=s+1
syntax match spssSubCommand /\/\<UNDEFINED\>/hs=s+1
syntax match spssSubCommand /\/\<UNENCRYPTED\>/hs=s+1
syntax match spssSubCommand /\/\<UNICODE\>/hs=s+1
syntax match spssSubCommand /\/\<UNSELECTED\>/hs=s+1
syntax match spssSubCommand /\/\<UPPERBOUND\>/hs=s+1
syntax match spssSubCommand /\/\<USL\>/hs=s+1
syntax match spssSubCommand /\/\<UTILITY\>/hs=s+1
syntax match spssSubCommand /\/\<VALFILE\>/hs=s+1
syntax match spssSubCommand /\/\<VALIDATION\>/hs=s+1
syntax match spssSubCommand /\/\<VALUELABELS\>/hs=s+1
syntax match spssSubCommand /\/\<VARCHECKS\>/hs=s+1
syntax match spssSubCommand /\/\<VARIABLE\>/hs=s+1
syntax match spssSubCommand /\/\<VARIABLES\>/hs=s+1
syntax match spssSubCommand /\/\<VARIANCES\>/hs=s+1
syntax match spssSubCommand /\/\<VARINFO\>/hs=s+1
syntax match spssSubCommand /\/\<VERSION\>/hs=s+1
syntax match spssSubCommand /\/\<VIEW\>/hs=s+1
syntax match spssSubCommand /\/\<VIEWMODEL\>/hs=s+1
syntax match spssSubCommand /\/\<VIEWNAME\>/hs=s+1
syntax match spssSubCommand /\/\<VIN\>/hs=s+1
syntax match spssSubCommand /\/\<VIND\>/hs=s+1
syntax match spssSubCommand /\/\<VLABELS\>/hs=s+1
syntax match spssSubCommand /\/\<WEIGHT\>/hs=s+1
syntax match spssSubCommand /\/\<WEIGHTS\>/hs=s+1
syntax match spssSubCommand /\/\<WIDTH\>/hs=s+1
syntax match spssSubCommand /\/\<WILCOXON\>/hs=s+1
syntax match spssSubCommand /\/\<WINDOW\>/hs=s+1
syntax match spssSubCommand /\/\<WORKSPACE\>/hs=s+1
syntax match spssSubCommand /\/\<WRITE\>/hs=s+1
syntax match spssSubCommand /\/\<WSDESIGN\>/hs=s+1
syntax match spssSubCommand /\/\<WSFACTOR\>/hs=s+1
syntax match spssSubCommand /\/\<WSFACTORS\>/hs=s+1
syntax match spssSubCommand /\/\<W-W\>/hs=s+1
syntax match spssSubCommand /\/\<X1\>/hs=s+1
syntax match spssSubCommand /\/\<X1LENGTH\>/hs=s+1
syntax match spssSubCommand /\/\<X2\>/hs=s+1
syntax match spssSubCommand /\/\<XLS\>/hs=s+1
syntax match spssSubCommand /\/\<XLSM\>/hs=s+1
syntax match spssSubCommand /\/\<XLSX\>/hs=s+1
syntax match spssSubCommand /\/\<XR\>/hs=s+1
syntax match spssSubCommand /\/\<XS\>/hs=s+1
syntax match spssSubCommand /\/\<XVERSION\>/hs=s+1
syntax match spssSubCommand /\/\<Y\>/hs=s+1
syntax match spssSubCommand /\/\<YLENGTH\>/hs=s+1
syntax match spssSubCommand /\/\<ZCOMPRESSED\>/hs=s+1
syntax match spssSubCommand /\/\<ZCOMPRESSION\>/hs=s+1


" # SPSS Comments

" /* */
syntax region spssComment  start="/\*"  end=/$/  oneline contains=NONE
syntax region spssComment  start="/\*"  end="\*/" oneline contains=NONE


" * or COMMENT, ended by empty line  (PM ending with a period should take precedence)
"syntax region spssComment  start="^\*"      end=/^\s*$/  contains=NONE
syntax region spssComment  start="^\*"      end="\.\s*$"  contains=NONE
"syntax region spssComment  start="^COMMENT" end=/^\s*$/  contains=NONE
syntax region spssComment  start="^COMMENT" end="\.\s*$"  contains=NONE


" # SPSS Strings

syntax region spssString  matchgroup=Nothing start=/"/ end=/"/   oneline
syntax region spssString  matchgroup=Nothing start=/'/ end=/'/   oneline


" # highlight groups

hi def link spssCommand    Statement
hi def link spssSubCommand Identifier
hi def link spssComment    Comment
hi def link spssString     Constant


" # group colours

"hi Comment guifg=green


let b:current_syntax = "spss"

