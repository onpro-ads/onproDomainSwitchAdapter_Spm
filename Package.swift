// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SmartdigimktDomainSwitchAdapter",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "SmartdigimktDomainSwitchAdapter",
            targets: [
                "SmartdigimktDomainSwitchAdapter",
                "SmartdigimktDomainSwitchAdapterSupport"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/onpro-ads/onproSDK_Spm.git", "6.5.99"..."999.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktDomainSwitchAdapter",
            url: "https://sz-kuying-sdk.oss-accelerate.aliyuncs.com/pkgs/SDK/iOS/DomainSwitch/v6.5.99/SmartdigimktDomainSwitchAdapter.zip",
            checksum: "01f70bad840fd4f5b724a4101c441f48648f2c538da84c27d5340017c00e5cfa"
        ),
        // 包装 target：同时依赖 Adapter 的 binary 和 SDK 的 product
        .target(
            name: "SmartdigimktDomainSwitchAdapterSupport",
            dependencies: [
                "SmartdigimktDomainSwitchAdapter",
                .product(
                    name: "SmartdigimktSDK",
                    package: "onproSDK_Spm"
                )
            ]
        )
    ]
)
