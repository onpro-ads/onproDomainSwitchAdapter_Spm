# Onpro Smartdigimkt Domain Switch Adapter

An optional iOS domain switch adapter distributed through Swift Package Manager.
The adapter package depends on the `SmartdigimktSDK` product from
`onproSDK_Spm`, supporting SDK versions from `6.5.86`
through `999.0.0` (inclusive).

## Requirements

- iOS 10.0 or later
- Xcode 16.0 or later

## Installation

### Xcode

1. Choose **File > Add Package Dependencies...**.
2. Enter:

   ```text
   https://github.com/onpro-ads/onproDomainSwitchAdapter_Spm.git
   ```

3. Select the exact version `6.5.86`.
4. Add the `SmartdigimktDomainSwitchAdapter` product to the app target.

The package resolves `onproSDK_Spm` within `"6.5.86"..."999.0.0"`
and uses its `SmartdigimktSDK` product as the adapter dependency.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/onpro-ads/onproDomainSwitchAdapter_Spm.git",
        exact: "6.5.86"
    )
]
```

Add the `SmartdigimktDomainSwitchAdapter` product to the application target.