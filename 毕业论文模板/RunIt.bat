@rem =============================================
@rem ʹ��pdflatex����ʾ���ĵ�main.pdf
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
@rem ִ�н���
@rem =============================================
