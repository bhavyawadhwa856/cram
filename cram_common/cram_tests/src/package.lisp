;;;
;;; Copyright (c) 2022, Arthur Niedzwiecki <aniedz@cs.uni-bremen.de>
;;;
;;; All rights reserved.
;;;
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions are met:
;;;
;;;     * Redistributions of source code must retain the above copyright
;;;       notice, this list of conditions and the following disclaimer.
;;;     * Redistributions in binary form must reproduce the above copyright
;;;       notice, this list of conditions and the following disclaimer in the
;;;       documentation and/or other materials provided with the distribution.
;;;     * Neither the name of the Intelligent Autonomous Systems Group/
;;;       Technische Universitaet Muenchen nor the names of its contributors
;;;       may be used to endorse or promote products derived from this software
;;;       without specific prior written permission.
;;;
;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;;; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
;;; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;;; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;;; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;;; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;;; POSSIBILITY OF SUCH DAMAGE.

(in-package :cl-user)

(defpackage cram-tests
  (:use #:common-lisp
        #:lisp-unit
        ;; #:bullet-visualization-test
        ;; #:cram-btr-spatial-relations-costmap-tests
        ;; #:cram-beginner-tutorial-tests
        ;; #:cram-manipulation-interfaces-tests
        ;; #:cram-common-failures-tests
        ;; #:cram-task-tree-export-tests
        ;; #:cram-utilities-tests
        ;; #:cram-prolog-tests
        ;; #:cram-projection-tests
        ;; #:cram-fetch-deliver-plans-tests
        ;; #:cram-bullet-reasoning-tests
        ;; #:cram-pr2-pick-place-demo-tests
        ;; #:cram-designators-tests
        ;; #:cram-bullet-reasoning-belief-state-tests
        ;; #:cram-urdf-environment-manipulation-tests
        )
  (:export ))
