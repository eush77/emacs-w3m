;;; sb-arch-bluegate.el --- shimbun backend for arch.bluegate.org

;; Copyright (C) 2005 Tsuyoshi CHO <mfalcon_sky@emailuser.net>

;; Author: Tsuyoshi CHO <mfalcon_sky@emailuser.net>
;; Keywords: news

;; This file is a part of shimbun.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, you can either send email to this
;; program's maintainer or write to: The Free Software Foundation,
;; Inc.; 59 Temple Place, Suite 330; Boston, MA 02111-1307, USA.

;;; Code:

(require 'shimbun)
(require 'sb-mailman)

(luna-define-class shimbun-arch-bluegate (shimbun-mailman-ja) ())

(defvar shimbun-arch-bluegate-url "http://arch.bluegate.org/pipermail/")

(defvar shimbun-arch-bluegate-groups
  '("subversion-jp" "arch-jp" "mailman" "viewarch"))

(luna-define-method shimbun-index-url ((shimbun shimbun-arch-bluegate))
  (shimbun-expand-url
   (concat (shimbun-current-group-internal shimbun) "/")
   (shimbun-url-internal shimbun)))

(luna-define-method shimbun-reply-to ((shimbun shimbun-arch-bluegate))
  (concat (shimbun-current-group-internal shimbun)
	  "@m.bluegate.org"))

(provide 'sb-arch-bluegate)

;;; sb-arch-bluegate.el ends here