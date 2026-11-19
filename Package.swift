// swift-tools-version:5.3
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
            url: "https://github.com/onpro-ads/onproSDK_Spm.git", "6.5.86"..."999.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktDomainSwitchAdapter",
            url: "https://sz-kuying-sdk.oss-accelerate.aliyuncs.com/pkgs/SDK/iOS/DomainSwitch/v6.5.86/SmartdigimktDomainSwitchAdapter.zip",
            checksum: "e434722b58d2e6d1016746d8a6547f1ebcea85cfb8dba51def5fa33234df87f5"
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
