## Roomtone UI

A UI theme that adapts to most syntax themes. Based on [One Light UI](https://github.com/atom/one-light-ui).

![roomtone-ui](https://user-images.githubusercontent.com/3765/28441691-f4e7a51c-6d60-11e7-81e4-09a6dfc1ae9c.png)

> The font used in the screenshot is [Hasklig](https://github.com/i-tu/Hasklig).

There is also a matching [syntax theme](https://github.com/samuelam/roomtone-light-syntax).

### Install

```shell
git clone https://github.com/samuelam/roomtone-ui.git ~/.atom/packages/roomtone-ui
```


### Settings

In the theme settings you can:

- Change the __Font Size__ to scale the whole UI up or down.
- Choose between 3 __Tab Sizing__ modes.
- Hide the  __dock buttons__.

To make changes, go to `Settings > Themes > Roomtone UI > Settings` or the cog icon next to the theme picker.


### Customize

It's also possible to resize only certain areas by adding the following to your `styles.less` (Use DevTools to find the right selectors):

```css
.theme-roomtone-ui {
  .tab-bar { font-size: 18px; }
  .tree-view { font-size: 14px; }
  .status-bar { font-size: 12px; }
}
```


### FAQ

__Why do the colors change when I switch Syntax themes.__
This UI theme uses the same background color as the chosen syntax theme. If that syntax theme has a dark background color, it only uses its hue, but otherwise stays light. This lets you use light-dark combos.
