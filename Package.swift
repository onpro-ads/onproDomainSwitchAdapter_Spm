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
            url: "https://github.com/onpro-ads/onproSDK_Spm.git", "6.0.0"..."999.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktDomainSwitchAdapter",
            url: "https://sz-kuying-sdk.oss-accelerate.aliyuncs.com/pkgs/SDK/iOS/DomainSwitch/v6.0.0/SmartdigimktDomainSwitchAdapter.zip",
            checksum: "7791d24ff0960b320877570bbb59f40eec0a86123cdbc8d5ce6ffa754a123e0e"
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
