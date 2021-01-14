\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{SDAURScourse}[2021/1/04 v1.0 Standard LaTeX documentclass]
\LoadClass[a4paper,UTF8]{ctexart}
\RequirePackage{ifxetex}

\ifxetex 
\else
\ClassError{SDAURscourse}{You must have to use the 'xelatex' \MessageBreak Please choose `xelatex'}{%
	Only choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi


%设置基础的宏包
\RequirePackage[a4paper,top=3cm,left=2.45cm,bottom=2cm,right=2.45cm,inner=1cm]{geometry}
\RequirePackage{blindtext}
\RequirePackage{amsmath}
\RequirePackage{abstract}
\RequirePackage{cite}
\RequirePackage[sort&compress]{gbt7714}
\bibliographystyle{gbt7714-numerical}
\RequirePackage{xeCJK}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{array}
\setmainfont{Times New Roman}


\newtoks\name              %姓名
\newtoks\studentnumber       %学号
\newtoks\Chtitle           %中文题目
\newtoks\Entitle 			%英文标题
\newtoks\fdate               %第一个日期
\newtoks\ldate               %第二个日期
\newtoks\class               %班级
\newtoks\session          	%届数
\newtoks\scorea           	%分数1
\newtoks\scoreb				%分数2
\newtoks\scorec				%分数3
\newtoks\scored				%分数4
\newtoks\major				%专业

 
%页眉页脚设置
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[c]{\thepage}
\fancyhead[CO]{\xk 山东农业大学遥感科学研究课程论文 }
\renewcommand{\headrulewidth}{0.4pt}%改为0pt即可去掉页眉下面的横线
\setCJKfamilyfont{hwxk}{华文行楷}
\newcommand*{\xk}{\CJKfamily{hwxk}} 
%段落和计数器
\setlength \parindent{2em}
\setcounter{section}{-1}
%控制表格拉伸
%设置章节格式
%\renewcommand{\abstractname}{}
\ctexset{
	section/format += \raggedright \heiti  \zihao{-4},
	subsection/format = \raggedright \zihao{5} \songti \bfseries \hspace{2em},
	subsubsection/format = \raggedright \zihao{5} \kaishu  \hspace{2em},
}

\newcommand{\makecover}{%makrfirpage
\begin{titlepage}
	\vskip 2cm
	\begin{center}
		{\zihao{-1}\xk{山东农业大学}} \\
	\end{center}
	
	\begin{center}
		{\songti \zihao{-1}遥感科学研究专题课程考核材料} \\[1em]
		{\zihao{-2} \the\fdate}
	\end{center} 
	
	\vskip 2cm
	%题目表格
	{\renewcommand\arraystretch{1.5}
		\begin{center}
			\begin{tabular}{l@{:~}c}
				\zihao{4} 课程论文题目 & \zihao{4} \the\Chtitle \\
				\cline{2-2}
				\zihao{4} 翻译论文题目 & \zihao{4} \the\Entitle  \\
				\cline{2-2}
			\end{tabular}
		\end{center} 
	}
	
	\vskip 1cm
	%信息表格
\begin{center}
		\renewcommand\arraystretch{1.2}
		\setlength\tabcolsep{0pt}
	\zihao{4}\begin{tabular}{p{0.13\textwidth}p{0.18\textwidth}<{\centering}p{0.15\textwidth}<{
				\centering}p{0.183\textwidth}<{\centering}}
			姓\hspace{2em}名：&\the\name & 学\hspace{2em} 号：&\the\studentnumber 
			\\\cline{2-2}\cline{4-4}
\end{tabular}
		
\begin{tabular}{p{0.13\textwidth}p{0.06\textwidth}<{\centering}p{0.05\textwidth}<{\centering}p
		{0.21\textwidth}<{\centering}p{0.1\textwidth}<{\centering}p{0.06\textwidth}<{\centering}p{
			0.04\textwidth}<{\centering}}
			专业班级：& \the\session & 级 &\the\major & 专业& 
			\the\class&班\\\cline{2-2}\cline{4-4}\cline{6-6}
		\end{tabular}
	\end{center}

\vskip 2cm
%成绩评价表格
{\renewcommand\arraystretch{2}
\begin{center}
\begin{tabular}{|p{8em}<{\centering}|p{8em}<{\centering}|p{8em}<{\centering}|p{8em}
		<{\centering}|}
		\hline \multicolumn{4}{|c|}{\zihao{4}成绩评定}\\
		\hline \zihao{4}课程论文& \zihao{4}论文翻译&   \zihao{4} 考勤&   \zihao{4}总成绩 \\		
		\hline    \large{\the\scorea}           &   \large{\the\scoreb}           &    \large{\the\scorec}    & 	
		\large{\the\scored}	\\
		\hline
	\end{tabular}
\end{center}
}
     
\vskip 2.5cm
\begin{center}
	\zihao{-3}  信息科学与工程学院  \\
	\the\ldate
\end{center}

\end{titlepage}


}