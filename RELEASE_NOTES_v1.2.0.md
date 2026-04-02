# Show And Hide v1.2.0

This release improves everyday usability, modernizes the plugin UI, and prepares the codebase for smoother QGIS 3/4 compatibility.

## Highlights

- Added a dedicated **Show And Hide** toolbar for plugin actions.
- Added a **Shortcut settings** action (gear icon) directly in the plugin toolbar.
- Introduced per-user shortcut management with persistent settings.
- Updated default shortcuts to safer combinations:
  - `Ctrl+Shift+1` for vector layers
  - `Ctrl+Shift+2` for raster layers
  - `Ctrl+Shift+3` for point cloud layers
- Added one-time migration from legacy `Alt+1/2/3` defaults.

## UX and Stability Improvements

- Refactored visibility toggle logic to store stable layer references and improve reliability.
- Improved layer restore behavior and internal handling for removed layers.
- Updated log messages to show user-friendly **layer names** instead of raw IDs.
- Added duplicate-shortcut validation in settings dialog.

## Visual Refresh

- Replaced old icon set with a new, consistent SVG icon pack:
  - plugin icon
  - vector / raster / point cloud actions
  - settings (gear) icon
- Switched icon loading to direct file-based SVG usage.

## Localization

- Updated and synchronized translation sources for:
  - Polish (`pl`)
  - German (`de`)
  - Ukrainian (`uk`)
- Fixed issues in existing translation entries.
- Added translation build script: `compile_translations.bat`.

## Documentation and Metadata

- Updated `README.md` to match the current plugin behavior.
- Added build/release note for translation compilation.
- Updated plugin metadata:
  - `version=1.2.0`
  - refreshed changelog and date
  - icon path updated to SVG

## Notes

- Please run `compile_translations.bat` before packaging/releasing to ensure `.qm` files are up to date.
