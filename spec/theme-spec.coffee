describe "Roomtone UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('roomtone-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe '12px'

    atom.config.set('roomtone-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('roomtone-ui.tabSizing', 'Maximum')
    expect(document.documentElement.getAttribute('theme-roomtone-ui-tabsizing')).toBe 'maximum'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('roomtone-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-roomtone-ui-tabsizing')).toBe 'minimum'

  it "allows the dock toggle buttons to be hidden via config", ->
    atom.config.set('roomtone-ui.hideDockButtons', true)
    expect(document.documentElement.getAttribute('theme-roomtone-ui-dock-buttons')).toBe 'hidden'
