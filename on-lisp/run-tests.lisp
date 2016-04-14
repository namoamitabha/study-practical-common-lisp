#! /usr/bin/sbcl --script

(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp"
				       (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))

(load "lisp-unit")

(use-package :lisp-unit)

(setq *print-summary* t)
(setq *print-failures* t)
(setq *print-errors* t)

(load "util.lisp")
(load "chapter-05.lisp")
(load "chapter-05.tests.lisp")

(in-package :on-lisp.ch05.tests)

(run-tests)
