" Vim syntax file
" Language:  newsboat config file
" Maintainer: sarmong https://github.com/sarmong
" Last Change: 2022-11-20

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "nbconfig"

setlocal commentstring=#\ %s

syn match    nbComment        '#.*$'

syn match    nbString         "'.*'"
syn match    nbString         '".*"'

syn keyword  nbKeys
    \ BACKSPACE ENTER LEFT RIGHT UP DOWN PPAGE NPAGE HOME END ESC TAB 
    \ F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12
syn match    nbKeys             "\<[a-zA-Z]\>"

syn keyword  nbDialog
    \ all feedlist filebrowser help articlelist article tagselection filterselection urlview podboat dirbrowser searchresultslist

syn keyword  nbColors black red green yellow blue magenta cyan white default
syn match    nbColors "\vcolor\d+"

syn keyword  nbAttributes standout underline reverse blink dim bold protect invis

syn keyword  nbElements
    \ background listnormal listfocus listnormal_unread listfocus_unread title info hint-key hint-keys-delimiter hint-separator hint-description article end-of-text-marker

syn keyword  nbCommands
    \ always-display-description always-download article-sort-order articlelist-format articlelist-title-format auto-reload
    \ bind-key bookmark-autopilot bookmark-cmd bookmark-interactive browser
    \ cache-file cleanup-on-quit color confirm-delete-all-articles confirm-exit confirm-mark-all-feeds-read confirm-mark-feed-read cookie-cache
    \ datetime-format define-filter delete-read-articles-on-quit dialogs-title-format dirbrowser-title-format display-article-progress download-full-page download-retries download-timeout
    \ error-log external-url-viewer
    \ feed-sort-order feedhq-flag-share feedhq-flag-star feedhq-login feedhq-min-items feedhq-password feedhq-passwordeval feedhq-passwordfile feedhq-show-special-feeds feedhq-url feedlist-format feedlist-title-format filebrowser-title-format freshrss-flag-star freshrss-login freshrss-min-items freshrss-password freshrss-passwordeval freshrss-passwordfile freshrss-show-special-feeds freshrss-url
    \ goto-first-unread goto-next-feed
    \ help-title-format highlight highlight-article highlight-feed history-limit html-renderer http-auth-method
    \ ignore-article ignore-mode include inoreader-app-id inoreader-app-key inoreader-flag-share inoreader-flag-star inoreader-login inoreader-min-items inoreader-password inoreader-passwordeval inoreader-passwordfile inoreader-show-special-feeds itemview-title-format
    \ keep-articles-days
    \ macro mark-as-read-on-hover max-browser-tabs max-download-speed max-items miniflux-login miniflux-min-items miniflux-password miniflux-passwordeval miniflux-passwordfile miniflux-url
    \ newsblur-login newsblur-min-items newsblur-password newsblur-passwordeval newsblur-passwordfile newsblur-url notify-always notify-beep notify-format notify-program notify-screen notify-xterm
    \ ocnews-flag-star ocnews-login ocnews-password ocnews-passwordeval ocnews-passwordfile ocnews-url oldreader-flag-share oldreader-flag-star oldreader-login oldreader-min-items oldreader-password oldreader-passwordeval oldreader-passwordfile oldreader-show-special-feeds openbrowser-and-mark-jumps-to-next-unread opml-url
    \ pager podcast-auto-enqueue prepopulate-query-feeds proxy proxy-auth proxy-auth-method proxy-type
    \ refresh-on-startup reload-only-visible-feeds reload-threads reload-time reset-unread-on-update restrict-filename run-on-startup
    \ save-path scrolloff search-highlight-colors searchresult-title-format selectfilter-title-format selecttag-format selecttag-title-format show-keymap-hint show-read-articles show-read-feeds show-title-bar ssl-verifyhost ssl-verifypeer suppress-first-reload swap-title-and-hints
    \ text-width toggleitemread-jumps-to-next-unread ttrss-flag-publish ttrss-flag-star ttrss-login ttrss-mode ttrss-password ttrss-passwordeval ttrss-passwordfile ttrss-url
    \ unbind-key urls-source urlview-title-format use-proxy user-agent
    \ wrap-scroll

syn keyword  nbOperations
    \ open quit hard-quit reload reload-all set
    \ mark-feed-read mark-all-feeds-read mark-all-above-as-read
    \ save save-all
    \ next-unread prev-unread next prev random-unread
    \ open-in-browser open-in-browser-noninteractively open-in-browser-and-mark-read open-all-unread-in-browser open-all-unread-in-browser-and-mark-read
    \ help
    \ toggle-source-view toggle-article-read toggle-show-read-feeds
    \ show-urls
    \ clear-tag set-tag select-tag
    \ open-search goto-url
    \ one two three four five six seven eight nine zero
    \ enqueue
    \ edit-urls reload-urls
    \ redraw
    \ cmdline
    \ set-filter select-filter clear-filter
    \ bookmark
    \ edit-flags
    \ next-unread-feed prev-unread-feed next-feed prev-feed
    \ delete-article delete-all-articles purge-deleted
    \ view-dialogs close-dialog next-dialog prev-dialog
    \ pipe-to
    \ sort rev-sort
    \ up down pageup pagedown home end
    \ macro-prefix
    \ switch-focus
    \ goto-title


hi def link  nbComment        Comment
hi def link  nbString         String
hi def link  nbKeys           Constant
hi def link  nbElements       Constant
hi def link  nbColors         Special
hi def link  nbDialog         String
hi def link  nbAttributes     Identifier
hi def link  nbCommands       Keyword
hi def link  nbOperations     Function
