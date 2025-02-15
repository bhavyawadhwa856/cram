;;;
;;; Copyright (c) 2017, Gayane Kazhoyan <kazhoyan@cs.uni-bremen.de>
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
;;;     * Neither the name of the Institute for Artificial Intelligence/
;;;       Universitaet Bremen nor the names of its contributors may be used to
;;;       endorse or promote products derived from this software without
;;;       specific prior written permission.
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

(defsystem cram-manipulation-interfaces
  :author "Gayane Kazhoyan"
  :license "BSD"
  :description "Object interfaces"

  :depends-on (cram-prolog
               cram-utilities ; for lazy lists in manipulation.lisp
               cram-designators
               cram-tf
               cl-transforms-stamped
               cram-robot-interfaces ; for gripper transform calculations
               cram-plan-occasions-events ; for robot-free-arm
               cram-designator-specification ; for location desig resolution
               )
  :components
  ((:module "src"
    :components
    ((:file "package")

     (:file "object-designator-interfaces" :depends-on ("package"))
     (:file "manipulation-interfaces" :depends-on ("package"))
     (:file "prolog" :depends-on ("package"
                                  "object-designator-interfaces"
                                  "manipulation-interfaces"))
     (:file "object-hierarchy" :depends-on ("package" "prolog"))

     (:file "gripper" :depends-on ("package"
                                   "manipulation-interfaces"
                                   "object-hierarchy"))
     (:file "carry" :depends-on ("package"
                                 "manipulation-interfaces"
                                 "object-hierarchy"))
     (:file "likely-locations" :depends-on ("package"
                                            "manipulation-interfaces"
                                            "object-hierarchy"))
     (:file "grasps" :depends-on ("package" "manipulation-interfaces"))
     (:file "trajectories" :depends-on ("package"
                                        "prolog"
                                        "manipulation-interfaces"
                                        "object-hierarchy"
                                        ;; for get-object-transform
                                        "object-designator-interfaces"))

     (:file "standard-grasps" :depends-on ("package"))
     (:file "standard-rotations" :depends-on ("package"))

     (:file "utils" :depends-on ("package"))))))
