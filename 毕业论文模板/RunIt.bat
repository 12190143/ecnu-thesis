@rem =============================================
@rem 使用pdflatex生成示例文档main.pdf
@rem =============================================

@echo off
call pdflatex thesis.tex
call bibtex thesis
call pdflatex thesis
call gbk2uni *.out
call pdflatex thesis

:end
@echo on
@rem =============================================
@rem 执行结束
@rem =============================================
