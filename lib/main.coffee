root = document.documentElement

module.exports =
  activate: (state) ->
    atom.config.observe 'roomtone-ui.fontSize', (value) ->
      setFontSize(value)

    atom.config.observe 'roomtone-ui.tabSizing', (value) ->
      setTabSizing(value)

    atom.config.observe 'roomtone-ui.hideDockButtons', (value) ->
      setHideDockButtons(value)

    # DEPRECATED: This can be removed at some point (added in Atom 1.17/1.18ish)
    # It removes `layoutMode`
    if atom.config.get('roomtone-ui.layoutMode')
      atom.config.unset('roomtone-ui.layoutMode')

  deactivate: ->
    unsetFontSize()
    unsetTabSizing()
    unsetHideDockButtons()


# Font Size -----------------------

setFontSize = (currentFontSize) ->
  root.style.fontSize = "#{currentFontSize}px"

unsetFontSize = ->
  root.style.fontSize = ''


# Tab Sizing -----------------------

setTabSizing = (tabSizing) ->
  root.setAttribute('theme-roomtone-ui-tabsizing', tabSizing.toLowerCase())

unsetTabSizing = ->
  root.removeAttribute('theme-roomtone-ui-tabsizing')


# Dock Buttons -----------------------

setHideDockButtons = (hideDockButtons) ->
  if hideDockButtons
    root.setAttribute('theme-roomtone-ui-dock-buttons', 'hidden')
  else
    unsetHideDockButtons()

unsetHideDockButtons = ->
  root.removeAttribute('theme-roomtone-ui-dock-buttons')
