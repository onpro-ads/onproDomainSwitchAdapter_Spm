# Smartdigimkt Domain Switch Adapter

An optional iOS domain switch adapter distributed through Swift Package Manager.
The adapter package depends on the `SmartdigimktSDK` product from
`onproSDK_Spm`, supporting SDK versions from `6.5.99`
through `999.0.0` (inclusive).

## Requirements

- iOS 10.0 or later
- Xcode 15.0 or later

## Installation

### Xcode

1. Choose **File > Add Package Dependencies...**.
2. Enter:

   ```text
   https://github.com/onpro-ads/onproDomainSwitchAdapter_Spm.git
   ```

3. Select the exact version `6.5.99`.
4. Add the `SmartdigimktDomainSwitchAdapter` product to the app target.
5. Add `-ObjC` to the app target's **Other Linker Flags**.

The package resolves `onproSDK_Spm` within `"6.5.99"..."999.0.0"`
and uses its `SmartdigimktSDK` product as the adapter dependency.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/onpro-ads/onproDomainSwitchAdapter_Spm.git",
        exact: "6.5.99"
    )
]
```

Add the `SmartdigimktDomainSwitchAdapter` product to the application target.

## Package structure

The public product contains the domain switch adapter binary and a support
target. The support target connects the binary target to the
`SmartdigimktSDK` product supplied by the SDK package.

```text
SmartdigimktDomainSwitchAdapter
├── SmartdigimktDomainSwitchAdapter.xcframework
└── SmartdigimktSDK
    └── SmartdigimktSDK.xcframework
```

## Release checklist

Before tagging version `6.5.99`:

1. Upload `SmartdigimktDomainSwitchAdapter.zip` to the URL configured in `Package.swift`.
2. Calculate its checksum:

   ```bash
   swift package compute-checksum SmartdigimktDomainSwitchAdapter.zip
   ```

3. Set the calculated checksum in the binary target declaration in `Package.swift`.

The zip must contain the `SmartdigimktDomainSwitchAdapter.xcframework` binary
used by the `SmartdigimktDomainSwitchAdapter` binary target.
