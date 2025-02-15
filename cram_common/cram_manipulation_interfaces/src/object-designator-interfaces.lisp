;;;
;;; Copyright (c) 2016, Gayane Kazhoyan <kazhoyan@cs.uni-bremen.de>
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

(in-package :cram-manipulation-interfaces)

(defmacro getassoc (key alist)
  `(cdr (assoc ,key ,alist :test #'equal)))

(defun get-object-transform (object-designator)
  (car (getassoc :transform (desig:desig-prop-value object-designator :pose))))

(defun get-object-pose (object-designator)
  (car (getassoc :pose (desig:desig-prop-value object-designator :pose))))

(defun get-object-transform-in-map (object-designator)
  (car (getassoc :transform-in-map (desig:desig-prop-value object-designator :pose))))

(defun get-object-pose-in-map (object-designator)
  (car (getassoc :pose-in-map (desig:desig-prop-value object-designator :pose))))

(defun get-object-old-transform (object-designator)
  (car (getassoc :transform (desig:desig-prop-value object-designator :old-pose))))

(defun get-object-old-pose (object-designator)
  (car (getassoc :pose (desig:desig-prop-value object-designator :old-pose))))


#+a-hack-in-case-we-dont-want-to-use-perception
(defun get-object-transform (object-designator)
  (let* ((object-type
           (desig:desig-prop-value object-designator :type))
         (object-frame
           (concatenate
            'string
            (remove #\- (string-capitalize (symbol-name object-type)))
            "1")))
    (cl-transforms-stamped:lookup-transform
     cram-tf:*transformer*
     cram-tf:*robot-base-frame*
     object-frame
     :time 0.0
     :timeout cram-tf:*tf-default-timeout*)))

(defun get-object-old-transform-in-map (object-designator)
  (car (getassoc :transform-in-map (desig:desig-prop-value object-designator :old-pose))))

(defun get-object-old-pose-in-map (object-designator)
  (car (getassoc :pose-in-map (desig:desig-prop-value object-designator :old-pose))))
