#!/usr/bin/perl

use Cwd 'getcwd';
$pwd = getcwd;

# 処理系の指定
$latex = 'uplatex %O -synctex=1 --halt-on-error --interaction=nonstopmode %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$bibtex = 'openout_any=r upbibtex %O %B';
$pdf_mode = 3;
$max_repeat = 6;

$do_cd = 1; # ソースファイルのディレクトリにcdしてから処理する
$out_dir = "$pwd/target"; # 出力ディレクトリの指定
$pdf_previewer = 'open -g -a Skim'; # ビューアの指定
