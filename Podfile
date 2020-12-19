platform :ios, '11.0'
use_frameworks!

## workspace文件名
workspace 'SLModuleProject.xcworkspace'

pod 'SLSupportLibrary'
pod 'IQKeyboardManagerSwift'
pod 'SVProgressHUD'
pod 'SwiftDate'
pod 'Kingfisher'
pod 'SwiftyJSON'
pod 'R.swift'
pod 'YYCache'
pod 'JXSegmentedView'
pod 'JXPagingView'
pod 'FSPagerView'
pod 'TagListView'
pod 'HXPhotoPicker'
pod 'SLEmptyPage'
pod 'FSTextView'
pod 'ESTabBarController-swift'
pod 'SwiftLint'
pod 'CTMediator'
pod 'NewPopMenu'
pod 'Moya'
pod 'Starscream'

## 主工程
target 'SLModuleProjectMain' do
project 'SLModuleProjectMain/SLModuleProjectMain.xcodeproj'

end

## 通用模块
target 'SLProjectModuleComm' do
project 'SLProjectModuleComm/SLProjectModuleComm.xcodeproj'

  #友盟
  pod 'UMCCommon'
  pod 'UMCCommonLog' #开发阶段进行调试SDK及相关功能使用，可在发布 App 前移除
  pod 'UMCShare/UI' #分享
  pod 'UMCShare/Social/WeChat'
  pod 'UMCPush' #推送
  #Bugly
  pod 'Bugly'

end


## 主页模块
target 'SLModuleProjectModuleHome' do
project 'SLModuleProjectModuleHome/SLModuleProjectModuleHome.xcodeproj'

end


## 登录模块
target 'SLModuleProjectModuleLogin' do
project 'SLModuleProjectModuleLogin/SLModuleProjectModuleLogin.xcodeproj'

end
