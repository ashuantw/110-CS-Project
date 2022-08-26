# 110-CS-Project

## T1047 Windows Management Instrumentation(WMI)
[MITRE ATT&CK-WMI](https://attack.mitre.org/techniques/T1047/)
- Adversaries may abuse Windows Management Instrumentation (WMI) to achieve execution.
- An adversary can use WMI to interact with local and remote systems and use it as a means to perform many tactic functions.


### WMI 是什麼?
- Windows管理技術
- 訪問、配置、管理和監視Windows資源
- 設定一個在特定日期和時間運行的進程，遠程啟動電腦，獲得本地或遠程電腦的已安裝程式列表
- WMI工具 : WMIC.exe / WBEMTest.exe / WMI Administrative Tools
- 在本地電腦上執行的WMI操作也可以在遠程電腦上執行(系統Administrator)

### [WMI 架構](https://docs.microsoft.com/zh-tw/windows/win32/wmisdk/wmi-architecture)
- WMI資料提供者(Provider)
- CIM物件管理者(Object Manager)
- WMI 基礎結構(Infrastructure)
- WMI取用者(Consumer)
![](https://docs.microsoft.com/zh-tw/windows/win32/wmisdk/images/wmi-architecture.png)

### WMI 入侵
- 掃描port 135(主要用來使用Remote Procedure Call，遠程過程調用)
- 開啟終端服務

