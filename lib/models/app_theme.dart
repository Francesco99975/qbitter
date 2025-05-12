import 'package:flutter/material.dart';
import 'package:json_theme/json_theme.dart';

class AppTheme {
  late ThemeData current;
  late bool isDark;

  AppTheme({required this.current, required this.isDark});

  static ThemeData dark = ThemeDecoder.decodeThemeData({
    "applyElevationOverlayColor": true,
    "brightness": "dark",
    "buttonTheme": {
      "alignedDropdown": false,
      "colorScheme": {
        "background": "#ff15130c",
        "brightness": "dark",
        "error": "#ffffb4ab",
        "errorContainer": "#ff93000a",
        "inversePrimary": "#ff685f12",
        "inverseSurface": "#ffe7e2d5",
        "onBackground": "#ffe7e2d5",
        "onError": "#ff690005",
        "onErrorContainer": "#ffffdad6",
        "onInverseSurface": "#ff323027",
        "onPrimary": "#ff363100",
        "onPrimaryContainer": "#fff1e48a",
        "onSecondary": "#ff343117",
        "onSecondaryContainer": "#ffebe3bd",
        "onSurface": "#ffe7e2d5",
        "onSurfaceVariant": "#ffcbc6b5",
        "onTertiary": "#ff103726",
        "onTertiaryContainer": "#ffc2ecd3",
        "outline": "#ff959181",
        "outlineVariant": "#ff4a473a",
        "primary": "#ffd4c871",
        "primaryContainer": "#ff4f4800",
        "scrim": "#ff000000",
        "secondary": "#ffcec7a3",
        "secondaryContainer": "#ff4b472b",
        "shadow": "#ff000000",
        "surface": "#ff15130c",
        "surfaceContainerHighest": "#ff37352c",
        "surfaceTint": "#ffd4c871",
        "tertiary": "#ffa7d0b7",
        "tertiaryContainer": "#ff294e3b"
      },
      "height": 36,
      "layoutBehavior": "padded",
      "minWidth": 88,
      "padding": {"bottom": 0, "left": 16, "right": 16, "top": 0},
      "shape": {
        "borderRadius": {
          "bottomLeft": {"type": "elliptical", "x": 2, "y": 2},
          "bottomRight": {"type": "elliptical", "x": 2, "y": 2},
          "topLeft": {"type": "elliptical", "x": 2, "y": 2},
          "topRight": {"type": "elliptical", "x": 2, "y": 2},
          "type": "only"
        },
        "side": {
          "color": "#ff000000",
          "strokeAlign": -1,
          "style": "none",
          "width": 0
        },
        "type": "rounded"
      },
      "textTheme": "normal"
    },
    "canvasColor": "#ff15130c",
    "cardColor": "#ff15130c",
    "colorScheme": {
      "background": "#ff15130c",
      "brightness": "dark",
      "error": "#ffffb4ab",
      "errorContainer": "#ff93000a",
      "inversePrimary": "#ff685f12",
      "inverseSurface": "#ffe7e2d5",
      "onBackground": "#ffe7e2d5",
      "onError": "#ff690005",
      "onErrorContainer": "#ffffdad6",
      "onInverseSurface": "#ff323027",
      "onPrimary": "#ff363100",
      "onPrimaryContainer": "#fff1e48a",
      "onSecondary": "#ff343117",
      "onSecondaryContainer": "#ffebe3bd",
      "onSurface": "#ffe7e2d5",
      "onSurfaceVariant": "#ffcbc6b5",
      "onTertiary": "#ff103726",
      "onTertiaryContainer": "#ffc2ecd3",
      "outline": "#ff959181",
      "outlineVariant": "#ff4a473a",
      "primary": "#ffd4c871",
      "primaryContainer": "#ff4f4800",
      "scrim": "#ff000000",
      "secondary": "#ffcec7a3",
      "secondaryContainer": "#ff4b472b",
      "shadow": "#ff000000",
      "surface": "#ff15130c",
      "surfaceContainerHighest": "#ff37352c",
      "surfaceTint": "#ffd4c871",
      "tertiary": "#ffa7d0b7",
      "tertiaryContainer": "#ff294e3b"
    },
    "dialogBackgroundColor": "#ff15130c",
    "disabledColor": "#62ffffff",
    "dividerColor": "#1fe7e2d5",
    "focusColor": "#1fffffff",
    "highlightColor": "#40cccccc",
    "hintColor": "#99ffffff",
    "hoverColor": "#0affffff",
    "iconTheme": {"color": "#ffffffff"},
    "indicatorColor": "#ffe7e2d5",
    "inputDecorationTheme": {
      "alignLabelWithHint": false,
      "filled": false,
      "floatingLabelAlignment": "start",
      "floatingLabelBehavior": "auto",
      "isCollapsed": false,
      "isDense": false
    },
    "materialTapTargetSize": "shrinkWrap",
    "platform": "linux",
    "primaryColor": "#ff15130c",
    "primaryColorDark": "#ff000000",
    "primaryColorLight": "#ff9e9e9e",
    "primaryIconTheme": {"color": "#ffffffff"},
    "primaryTextTheme": {
      "bodyLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 16,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.5,
        "textBaseline": "alphabetic"
      },
      "bodyMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "bodySmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 12,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.4,
        "textBaseline": "alphabetic"
      },
      "displayLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 96,
        "fontWeight": "w300",
        "inherit": false,
        "letterSpacing": -1.5,
        "textBaseline": "alphabetic"
      },
      "displayMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 60,
        "fontWeight": "w300",
        "inherit": false,
        "letterSpacing": -0.5,
        "textBaseline": "alphabetic"
      },
      "displaySmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 48,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0,
        "textBaseline": "alphabetic"
      },
      "headlineLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 40,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "headlineMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 34,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "headlineSmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 24,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0,
        "textBaseline": "alphabetic"
      },
      "labelLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 1.25,
        "textBaseline": "alphabetic"
      },
      "labelMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 11,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 1.5,
        "textBaseline": "alphabetic"
      },
      "labelSmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 10,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 1.5,
        "textBaseline": "alphabetic"
      },
      "titleLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 20,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 0.15,
        "textBaseline": "alphabetic"
      },
      "titleMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 16,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.15,
        "textBaseline": "alphabetic"
      },
      "titleSmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 0.1,
        "textBaseline": "alphabetic"
      }
    },
    "scaffoldBackgroundColor": "#ff15130c",
    "secondaryHeaderColor": "#ff616161",
    "shadowColor": "#ff000000",
    "splashColor": "#40cccccc",
    "splashFactory": "ripple",
    "textTheme": {
      "bodyLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 16,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.5,
        "textBaseline": "alphabetic"
      },
      "bodyMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "bodySmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 12,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.4,
        "textBaseline": "alphabetic"
      },
      "displayLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 96,
        "fontWeight": "w300",
        "inherit": false,
        "letterSpacing": -1.5,
        "textBaseline": "alphabetic"
      },
      "displayMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 60,
        "fontWeight": "w300",
        "inherit": false,
        "letterSpacing": -0.5,
        "textBaseline": "alphabetic"
      },
      "displaySmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 48,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0,
        "textBaseline": "alphabetic"
      },
      "headlineLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 40,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "headlineMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 34,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "headlineSmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 24,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0,
        "textBaseline": "alphabetic"
      },
      "labelLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 1.25,
        "textBaseline": "alphabetic"
      },
      "labelMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 11,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 1.5,
        "textBaseline": "alphabetic"
      },
      "labelSmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 10,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 1.5,
        "textBaseline": "alphabetic"
      },
      "titleLarge": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 20,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 0.15,
        "textBaseline": "alphabetic"
      },
      "titleMedium": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 16,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.15,
        "textBaseline": "alphabetic"
      },
      "titleSmall": {
        "color": "#ffe7e2d5",
        "decoration": "none",
        "decorationColor": "#ffe7e2d5",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 0.1,
        "textBaseline": "alphabetic"
      }
    },
    "typography": {
      "black": {
        "bodyLarge": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "bodyMedium": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "bodySmall": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displayLarge": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displayMedium": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displaySmall": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineLarge": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineMedium": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineSmall": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelLarge": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelMedium": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelSmall": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleLarge": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleMedium": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleSmall": {
          "color": "#ff15130c",
          "decoration": "none",
          "decorationColor": "#ff15130c",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        }
      },
      "dense": {
        "bodyLarge": {
          "fontSize": 16,
          "fontWeight": "w400",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "ideographic"
        },
        "bodyMedium": {
          "fontSize": 14,
          "fontWeight": "w400",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.25,
          "textBaseline": "ideographic"
        },
        "bodySmall": {
          "fontSize": 12,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.4,
          "textBaseline": "ideographic"
        },
        "displayLarge": {
          "fontSize": 57,
          "fontWeight": "w400",
          "height": 1.12,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": -0.25,
          "textBaseline": "ideographic"
        },
        "displayMedium": {
          "fontSize": 45,
          "fontWeight": "w400",
          "height": 1.16,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "displaySmall": {
          "fontSize": 36,
          "fontWeight": "w400",
          "height": 1.22,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "headlineLarge": {
          "fontSize": 32,
          "fontWeight": "w400",
          "height": 1.25,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "headlineMedium": {
          "fontSize": 28,
          "fontWeight": "w400",
          "height": 1.29,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "headlineSmall": {
          "fontSize": 24,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "labelLarge": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "ideographic"
        },
        "labelMedium": {
          "fontSize": 12,
          "fontWeight": "w500",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "ideographic"
        },
        "labelSmall": {
          "fontSize": 11,
          "fontWeight": "w500",
          "height": 1.45,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "ideographic"
        },
        "titleLarge": {
          "fontSize": 22,
          "fontWeight": "w400",
          "height": 1.27,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "titleMedium": {
          "fontSize": 16,
          "fontWeight": "w500",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.15,
          "textBaseline": "ideographic"
        },
        "titleSmall": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "ideographic"
        }
      },
      "englishLike": {
        "bodyLarge": {
          "fontSize": 16,
          "fontWeight": "w400",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "bodyMedium": {
          "fontSize": 14,
          "fontWeight": "w400",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.25,
          "textBaseline": "alphabetic"
        },
        "bodySmall": {
          "fontSize": 12,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.4,
          "textBaseline": "alphabetic"
        },
        "displayLarge": {
          "fontSize": 57,
          "fontWeight": "w400",
          "height": 1.12,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": -0.25,
          "textBaseline": "alphabetic"
        },
        "displayMedium": {
          "fontSize": 45,
          "fontWeight": "w400",
          "height": 1.16,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "displaySmall": {
          "fontSize": 36,
          "fontWeight": "w400",
          "height": 1.22,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineLarge": {
          "fontSize": 32,
          "fontWeight": "w400",
          "height": 1.25,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineMedium": {
          "fontSize": 28,
          "fontWeight": "w400",
          "height": 1.29,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineSmall": {
          "fontSize": 24,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "labelLarge": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "alphabetic"
        },
        "labelMedium": {
          "fontSize": 12,
          "fontWeight": "w500",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "labelSmall": {
          "fontSize": 11,
          "fontWeight": "w500",
          "height": 1.45,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "titleLarge": {
          "fontSize": 22,
          "fontWeight": "w400",
          "height": 1.27,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "titleMedium": {
          "fontSize": 16,
          "fontWeight": "w500",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.15,
          "textBaseline": "alphabetic"
        },
        "titleSmall": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "alphabetic"
        }
      },
      "tall": {
        "bodyLarge": {
          "fontSize": 16,
          "fontWeight": "w400",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "bodyMedium": {
          "fontSize": 14,
          "fontWeight": "w400",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.25,
          "textBaseline": "alphabetic"
        },
        "bodySmall": {
          "fontSize": 12,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.4,
          "textBaseline": "alphabetic"
        },
        "displayLarge": {
          "fontSize": 57,
          "fontWeight": "w400",
          "height": 1.12,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": -0.25,
          "textBaseline": "alphabetic"
        },
        "displayMedium": {
          "fontSize": 45,
          "fontWeight": "w400",
          "height": 1.16,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "displaySmall": {
          "fontSize": 36,
          "fontWeight": "w400",
          "height": 1.22,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineLarge": {
          "fontSize": 32,
          "fontWeight": "w400",
          "height": 1.25,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineMedium": {
          "fontSize": 28,
          "fontWeight": "w400",
          "height": 1.29,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineSmall": {
          "fontSize": 24,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "labelLarge": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "alphabetic"
        },
        "labelMedium": {
          "fontSize": 12,
          "fontWeight": "w500",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "labelSmall": {
          "fontSize": 11,
          "fontWeight": "w500",
          "height": 1.45,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "titleLarge": {
          "fontSize": 22,
          "fontWeight": "w400",
          "height": 1.27,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "titleMedium": {
          "fontSize": 16,
          "fontWeight": "w500",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.15,
          "textBaseline": "alphabetic"
        },
        "titleSmall": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "alphabetic"
        }
      },
      "white": {
        "bodyLarge": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "bodyMedium": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "bodySmall": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displayLarge": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displayMedium": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displaySmall": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineLarge": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineMedium": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineSmall": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelLarge": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelMedium": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelSmall": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleLarge": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleMedium": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleSmall": {
          "color": "#ffe7e2d5",
          "decoration": "none",
          "decorationColor": "#ffe7e2d5",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        }
      }
    },
    "unselectedWidgetColor": "#b3ffffff",
    "useMaterial3": true,
    "visualDensity": "compact"
  })!;
  static ThemeData light = ThemeDecoder.decodeThemeData({
    "applyElevationOverlayColor": false,
    "brightness": "light",
    "buttonTheme": {
      "alignedDropdown": false,
      "colorScheme": {
        "background": "#fffff9eb",
        "brightness": "light",
        "error": "#ffba1a1a",
        "errorContainer": "#ffffdad6",
        "inversePrimary": "#ffd4c871",
        "inverseSurface": "#ff323027",
        "onBackground": "#ff1d1c13",
        "onError": "#ffffffff",
        "onErrorContainer": "#ff410002",
        "onInverseSurface": "#fff6f0e3",
        "onPrimary": "#ffffffff",
        "onPrimaryContainer": "#ff201c00",
        "onSecondary": "#ffffffff",
        "onSecondaryContainer": "#ff1f1c05",
        "onSurface": "#ff1d1c13",
        "onSurfaceVariant": "#ff4a473a",
        "onTertiary": "#ffffffff",
        "onTertiaryContainer": "#ff002113",
        "outline": "#ff7b7768",
        "outlineVariant": "#ffcbc6b5",
        "primary": "#ff685f12",
        "primaryContainer": "#fff1e48a",
        "scrim": "#ff000000",
        "secondary": "#ff645f41",
        "secondaryContainer": "#ffebe3bd",
        "shadow": "#ff000000",
        "surface": "#fffff9eb",
        "surfaceContainerHighest": "#ffe7e2d5",
        "surfaceTint": "#ff685f12",
        "tertiary": "#ff406652",
        "tertiaryContainer": "#ffc2ecd3"
      },
      "height": 36,
      "layoutBehavior": "padded",
      "minWidth": 88,
      "padding": {"bottom": 0, "left": 16, "right": 16, "top": 0},
      "shape": {
        "borderRadius": {
          "bottomLeft": {"type": "elliptical", "x": 2, "y": 2},
          "bottomRight": {"type": "elliptical", "x": 2, "y": 2},
          "topLeft": {"type": "elliptical", "x": 2, "y": 2},
          "topRight": {"type": "elliptical", "x": 2, "y": 2},
          "type": "only"
        },
        "side": {
          "color": "#ff000000",
          "strokeAlign": -1,
          "style": "none",
          "width": 0
        },
        "type": "rounded"
      },
      "textTheme": "normal"
    },
    "canvasColor": "#fffff9eb",
    "cardColor": "#fffff9eb",
    "colorScheme": {
      "background": "#fffff9eb",
      "brightness": "light",
      "error": "#ffba1a1a",
      "errorContainer": "#ffffdad6",
      "inversePrimary": "#ffd4c871",
      "inverseSurface": "#ff323027",
      "onBackground": "#ff1d1c13",
      "onError": "#ffffffff",
      "onErrorContainer": "#ff410002",
      "onInverseSurface": "#fff6f0e3",
      "onPrimary": "#ffffffff",
      "onPrimaryContainer": "#ff201c00",
      "onSecondary": "#ffffffff",
      "onSecondaryContainer": "#ff1f1c05",
      "onSurface": "#ff1d1c13",
      "onSurfaceVariant": "#ff4a473a",
      "onTertiary": "#ffffffff",
      "onTertiaryContainer": "#ff002113",
      "outline": "#ff7b7768",
      "outlineVariant": "#ffcbc6b5",
      "primary": "#ff685f12",
      "primaryContainer": "#fff1e48a",
      "scrim": "#ff000000",
      "secondary": "#ff645f41",
      "secondaryContainer": "#ffebe3bd",
      "shadow": "#ff000000",
      "surface": "#fffff9eb",
      "surfaceContainerHighest": "#ffe7e2d5",
      "surfaceTint": "#ff685f12",
      "tertiary": "#ff406652",
      "tertiaryContainer": "#ffc2ecd3"
    },
    "dialogBackgroundColor": "#fffff9eb",
    "disabledColor": "#61000000",
    "dividerColor": "#1f1d1c13",
    "focusColor": "#1f000000",
    "highlightColor": "#66bcbcbc",
    "hintColor": "#99000000",
    "hoverColor": "#0a000000",
    "iconTheme": {"color": "#dd000000"},
    "indicatorColor": "#ffffffff",
    "inputDecorationTheme": {
      "alignLabelWithHint": false,
      "filled": false,
      "floatingLabelAlignment": "start",
      "floatingLabelBehavior": "auto",
      "isCollapsed": false,
      "isDense": false
    },
    "materialTapTargetSize": "shrinkWrap",
    "platform": "linux",
    "primaryColor": "#ff685f12",
    "primaryColorDark": "#ff1976d2",
    "primaryColorLight": "#ffbbdefb",
    "primaryIconTheme": {"color": "#ffffffff"},
    "primaryTextTheme": {
      "bodyLarge": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 16,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.5,
        "textBaseline": "alphabetic"
      },
      "bodyMedium": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "bodySmall": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 12,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.4,
        "textBaseline": "alphabetic"
      },
      "displayLarge": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 96,
        "fontWeight": "w300",
        "inherit": false,
        "letterSpacing": -1.5,
        "textBaseline": "alphabetic"
      },
      "displayMedium": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 60,
        "fontWeight": "w300",
        "inherit": false,
        "letterSpacing": -0.5,
        "textBaseline": "alphabetic"
      },
      "displaySmall": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 48,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0,
        "textBaseline": "alphabetic"
      },
      "headlineLarge": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 40,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "headlineMedium": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 34,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "headlineSmall": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 24,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0,
        "textBaseline": "alphabetic"
      },
      "labelLarge": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 1.25,
        "textBaseline": "alphabetic"
      },
      "labelMedium": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 11,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 1.5,
        "textBaseline": "alphabetic"
      },
      "labelSmall": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 10,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 1.5,
        "textBaseline": "alphabetic"
      },
      "titleLarge": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 20,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 0.15,
        "textBaseline": "alphabetic"
      },
      "titleMedium": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 16,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.15,
        "textBaseline": "alphabetic"
      },
      "titleSmall": {
        "color": "#fffff9eb",
        "decoration": "none",
        "decorationColor": "#fffff9eb",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 0.1,
        "textBaseline": "alphabetic"
      }
    },
    "scaffoldBackgroundColor": "#fffff9eb",
    "secondaryHeaderColor": "#ffe3f2fd",
    "shadowColor": "#ff000000",
    "splashColor": "#66c8c8c8",
    "splashFactory": "ripple",
    "textTheme": {
      "bodyLarge": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 16,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.5,
        "textBaseline": "alphabetic"
      },
      "bodyMedium": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "bodySmall": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 12,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.4,
        "textBaseline": "alphabetic"
      },
      "displayLarge": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 96,
        "fontWeight": "w300",
        "inherit": false,
        "letterSpacing": -1.5,
        "textBaseline": "alphabetic"
      },
      "displayMedium": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 60,
        "fontWeight": "w300",
        "inherit": false,
        "letterSpacing": -0.5,
        "textBaseline": "alphabetic"
      },
      "displaySmall": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 48,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0,
        "textBaseline": "alphabetic"
      },
      "headlineLarge": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 40,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "headlineMedium": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 34,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.25,
        "textBaseline": "alphabetic"
      },
      "headlineSmall": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 24,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0,
        "textBaseline": "alphabetic"
      },
      "labelLarge": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 1.25,
        "textBaseline": "alphabetic"
      },
      "labelMedium": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 11,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 1.5,
        "textBaseline": "alphabetic"
      },
      "labelSmall": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 10,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 1.5,
        "textBaseline": "alphabetic"
      },
      "titleLarge": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 20,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 0.15,
        "textBaseline": "alphabetic"
      },
      "titleMedium": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 16,
        "fontWeight": "w400",
        "inherit": false,
        "letterSpacing": 0.15,
        "textBaseline": "alphabetic"
      },
      "titleSmall": {
        "color": "#ff1d1c13",
        "decoration": "none",
        "decorationColor": "#ff1d1c13",
        "fontFamily": "Roboto",
        "fontFamilyFallback": [
          "Ubuntu",
          "Cantarell",
          "DejaVu Sans",
          "Liberation Sans",
          "Arial"
        ],
        "fontSize": 14,
        "fontWeight": "w500",
        "inherit": false,
        "letterSpacing": 0.1,
        "textBaseline": "alphabetic"
      }
    },
    "typography": {
      "black": {
        "bodyLarge": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "bodyMedium": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "bodySmall": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displayLarge": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displayMedium": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displaySmall": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineLarge": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineMedium": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineSmall": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelLarge": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelMedium": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelSmall": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleLarge": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleMedium": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleSmall": {
          "color": "#ff1d1c13",
          "decoration": "none",
          "decorationColor": "#ff1d1c13",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        }
      },
      "dense": {
        "bodyLarge": {
          "fontSize": 16,
          "fontWeight": "w400",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "ideographic"
        },
        "bodyMedium": {
          "fontSize": 14,
          "fontWeight": "w400",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.25,
          "textBaseline": "ideographic"
        },
        "bodySmall": {
          "fontSize": 12,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.4,
          "textBaseline": "ideographic"
        },
        "displayLarge": {
          "fontSize": 57,
          "fontWeight": "w400",
          "height": 1.12,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": -0.25,
          "textBaseline": "ideographic"
        },
        "displayMedium": {
          "fontSize": 45,
          "fontWeight": "w400",
          "height": 1.16,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "displaySmall": {
          "fontSize": 36,
          "fontWeight": "w400",
          "height": 1.22,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "headlineLarge": {
          "fontSize": 32,
          "fontWeight": "w400",
          "height": 1.25,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "headlineMedium": {
          "fontSize": 28,
          "fontWeight": "w400",
          "height": 1.29,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "headlineSmall": {
          "fontSize": 24,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "labelLarge": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "ideographic"
        },
        "labelMedium": {
          "fontSize": 12,
          "fontWeight": "w500",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "ideographic"
        },
        "labelSmall": {
          "fontSize": 11,
          "fontWeight": "w500",
          "height": 1.45,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "ideographic"
        },
        "titleLarge": {
          "fontSize": 22,
          "fontWeight": "w400",
          "height": 1.27,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "ideographic"
        },
        "titleMedium": {
          "fontSize": 16,
          "fontWeight": "w500",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.15,
          "textBaseline": "ideographic"
        },
        "titleSmall": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "ideographic"
        }
      },
      "englishLike": {
        "bodyLarge": {
          "fontSize": 16,
          "fontWeight": "w400",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "bodyMedium": {
          "fontSize": 14,
          "fontWeight": "w400",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.25,
          "textBaseline": "alphabetic"
        },
        "bodySmall": {
          "fontSize": 12,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.4,
          "textBaseline": "alphabetic"
        },
        "displayLarge": {
          "fontSize": 57,
          "fontWeight": "w400",
          "height": 1.12,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": -0.25,
          "textBaseline": "alphabetic"
        },
        "displayMedium": {
          "fontSize": 45,
          "fontWeight": "w400",
          "height": 1.16,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "displaySmall": {
          "fontSize": 36,
          "fontWeight": "w400",
          "height": 1.22,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineLarge": {
          "fontSize": 32,
          "fontWeight": "w400",
          "height": 1.25,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineMedium": {
          "fontSize": 28,
          "fontWeight": "w400",
          "height": 1.29,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineSmall": {
          "fontSize": 24,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "labelLarge": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "alphabetic"
        },
        "labelMedium": {
          "fontSize": 12,
          "fontWeight": "w500",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "labelSmall": {
          "fontSize": 11,
          "fontWeight": "w500",
          "height": 1.45,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "titleLarge": {
          "fontSize": 22,
          "fontWeight": "w400",
          "height": 1.27,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "titleMedium": {
          "fontSize": 16,
          "fontWeight": "w500",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.15,
          "textBaseline": "alphabetic"
        },
        "titleSmall": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "alphabetic"
        }
      },
      "tall": {
        "bodyLarge": {
          "fontSize": 16,
          "fontWeight": "w400",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "bodyMedium": {
          "fontSize": 14,
          "fontWeight": "w400",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.25,
          "textBaseline": "alphabetic"
        },
        "bodySmall": {
          "fontSize": 12,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.4,
          "textBaseline": "alphabetic"
        },
        "displayLarge": {
          "fontSize": 57,
          "fontWeight": "w400",
          "height": 1.12,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": -0.25,
          "textBaseline": "alphabetic"
        },
        "displayMedium": {
          "fontSize": 45,
          "fontWeight": "w400",
          "height": 1.16,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "displaySmall": {
          "fontSize": 36,
          "fontWeight": "w400",
          "height": 1.22,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineLarge": {
          "fontSize": 32,
          "fontWeight": "w400",
          "height": 1.25,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineMedium": {
          "fontSize": 28,
          "fontWeight": "w400",
          "height": 1.29,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "headlineSmall": {
          "fontSize": 24,
          "fontWeight": "w400",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "labelLarge": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "alphabetic"
        },
        "labelMedium": {
          "fontSize": 12,
          "fontWeight": "w500",
          "height": 1.33,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "labelSmall": {
          "fontSize": 11,
          "fontWeight": "w500",
          "height": 1.45,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.5,
          "textBaseline": "alphabetic"
        },
        "titleLarge": {
          "fontSize": 22,
          "fontWeight": "w400",
          "height": 1.27,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0,
          "textBaseline": "alphabetic"
        },
        "titleMedium": {
          "fontSize": 16,
          "fontWeight": "w500",
          "height": 1.5,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.15,
          "textBaseline": "alphabetic"
        },
        "titleSmall": {
          "fontSize": 14,
          "fontWeight": "w500",
          "height": 1.43,
          "inherit": false,
          "leadingDistribution": "even",
          "letterSpacing": 0.1,
          "textBaseline": "alphabetic"
        }
      },
      "white": {
        "bodyLarge": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "bodyMedium": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "bodySmall": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displayLarge": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displayMedium": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "displaySmall": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineLarge": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineMedium": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "headlineSmall": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelLarge": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelMedium": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "labelSmall": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleLarge": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleMedium": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        },
        "titleSmall": {
          "color": "#fffff9eb",
          "decoration": "none",
          "decorationColor": "#fffff9eb",
          "fontFamily": "Roboto",
          "fontFamilyFallback": [
            "Ubuntu",
            "Cantarell",
            "DejaVu Sans",
            "Liberation Sans",
            "Arial"
          ],
          "inherit": true
        }
      }
    },
    "unselectedWidgetColor": "#8a000000",
    "useMaterial3": true,
    "visualDensity": "compact"
  })!;
}
