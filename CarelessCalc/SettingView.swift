//
//  SettingView.swift
//  CarelessCalc
//
//  Created by Yuta on 2025/01/23.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section("設定", content: {
                        Button(action: {
                            if let url = URL(string: "https://mstdn.jp/@yuta_dev") {
                                UIApplication.shared.open(url)
                            }
                        }, label: {
                            Text("お問い合わせ")
                                .foregroundStyle(Color.accentColor)
                        })
                        NavigationLink(destination:
                                        LicenseView()) {
                            Text("ライセンス")
                                .foregroundStyle(Color.accentColor)
                        }
                        if let contact = URL(string: "https://yutahand.com/wp-content/calc/rules.html") {
                            Link("利用規約", destination: contact)
                                .foregroundStyle(Color.accentColor)
                        }
                        if let contact = URL(string: "https://yutahand.com/wp-content/calc/policy.html") {
                            Link("プライバシーポリシー", destination: contact)
                                .foregroundStyle(Color.accentColor)
                        }
                    })
                }
                .scrollDisabled(true)
                .frame(height: 400)
                Spacer()
                List {
                    HStack {
                        Text("バージョン")
                        Spacer()
                        let versionNum = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
                        Text(versionNum)
                    }
                }
                .scrollDisabled(true)
            }
        }
    }
}

