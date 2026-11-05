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
            url: "https://github.com/onpro-ads/onproSDK_Spm.git", "6.0.1"..."999.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktDomainSwitchAdapter",
            url: "https://sz-kuying-sdk.oss-accelerate.aliyuncs.com/pkgs/SDK/iOS/DomainSwitch/v6.0.1/SmartdigimktDomainSwitchAdapter.zip",
            checksum: "da78b78f6592fc728ceccad0bf59034522a293363997f0e5c2b509fe27904217"
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
