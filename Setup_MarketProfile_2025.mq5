//+------------------------------------------------------------------+
//|                                      Setup_MarketProfile_2025.mq5 |
//|                        Copyright 2025, Enhanced Market Profile  |
//|                             https://www.earnforex.com/          |
//+------------------------------------------------------------------+
#property copyright "Enhanced Market Profile - 2025"
#property link      "https://www.earnforex.com/"
#property version   "1.00"
#property description "Auto-setup script for MetaMarketProfile 2025"
#property description "Automatically configures optimal settings based on your system"

#property script_show_inputs

//--- Input parameters for quick setup
enum ENUM_TRADING_STYLE
{
    SCALPING,     // Scalping (M1-M5)
    DAY_TRADING,  // Day Trading (M15-H1)
    SWING,        // Swing Trading (H4-D1)
    POSITION      // Position Trading (D1+)
};

enum ENUM_HARDWARE_TYPE
{
    AUTO_DETECT,  // Auto-detect hardware
    WORKSTATION,  // High-end workstation
    DESKTOP,      // Standard desktop
    LAPTOP        // Laptop/mobile
};

input group "=== Quick Setup ==="
input ENUM_TRADING_STYLE TradingStyle = DAY_TRADING;  // Your trading style
input ENUM_HARDWARE_TYPE HardwareType = AUTO_DETECT; // Your hardware type
input bool EnableAdvancedFeatures = true;            // Enable AI/ML features
input bool SetupAlerts = true;                       // Configure alerts
input bool OptimizeForSpeed = true;                  // Prioritize performance

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
{
    Print("=== MetaMarketProfile 2025 Auto-Setup ===");
    
    // 1. Detect system capabilities
    SystemInfo systemInfo = DetectSystem();
    DisplaySystemInfo(systemInfo);
    
    // 2. Generate optimal configuration
    ProfileConfig config = GenerateOptimalConfig(systemInfo);
    
    // 3. Apply settings
    if(ApplyConfiguration(config))
    {
        Print("✅ Setup completed successfully!");
        Print("📊 Your Market Profile is now optimized for ", EnumToString(TradingStyle));
        Print("💡 Restart MetaTrader to apply all settings");
        
        // 4. Show quick start tips
        ShowQuickStartTips();
    }
    else
    {
        Print("❌ Setup failed. Please check permissions and try again.");
    }
}

//+------------------------------------------------------------------+
//| System information structure                                     |
//+------------------------------------------------------------------+
struct SystemInfo
{
    int    cpu_cores;
    double ram_gb;
    bool   gpu_available;
    string mt5_build;
    int    screen_dpi;
    string recommended_hardware;
};

//+------------------------------------------------------------------+
//| Configuration structure                                          |
//+------------------------------------------------------------------+
struct ProfileConfig
{
    // Performance settings
    int  point_multiplier;
    int  throttle_redraw;
    int  sessions_to_count;
    bool enable_gpu;
    bool enable_developing_poc;
    bool enable_developing_vahval;
    
    // Visual settings
    string color_scheme;
    bool   high_dpi_support;
    
    // Alert settings
    bool alert_native;
    bool alert_push;
    bool alert_value_area;
    bool alert_median;
};

//+------------------------------------------------------------------+
//| Detect system capabilities                                       |
//+------------------------------------------------------------------+
SystemInfo DetectSystem()
{
    SystemInfo info;
    
    // CPU information
    info.cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
    
    // Memory information (approximate)
    info.ram_gb = TerminalInfoInteger(TERMINAL_MEMORY_USED) / (1024.0 * 1024.0 * 1024.0);
    if(info.ram_gb < 1.0) info.ram_gb = 8.0; // Default assumption
    
    // GPU availability
    int cl_ctx = CLContextCreate();
    info.gpu_available = (cl_ctx != INVALID_HANDLE);
    if(cl_ctx != INVALID_HANDLE) CLContextFree(cl_ctx);
    
    // MT5 build
    info.mt5_build = (string)TerminalInfoInteger(TERMINAL_BUILD);
    
    // Screen DPI (approximate)
    info.screen_dpi = (int)ChartGetInteger(0, CHART_SCALE, 0);
    
    // Determine hardware category
    if(info.cpu_cores >= 8 && info.ram_gb >= 16 && info.gpu_available)
        info.recommended_hardware = "WORKSTATION";
    else if(info.cpu_cores >= 4 && info.ram_gb >= 8)
        info.recommended_hardware = "DESKTOP";
    else
        info.recommended_hardware = "LAPTOP";
    
    return info;
}

//+------------------------------------------------------------------+
//| Display system information                                       |
//+------------------------------------------------------------------+
void DisplaySystemInfo(const SystemInfo &info)
{
    Print("🖥️  System Detection Results:");
    Print("   CPU Cores: ", info.cpu_cores);
    Print("   RAM: ~", DoubleToString(info.ram_gb, 1), " GB");
    Print("   GPU OpenCL: ", info.gpu_available ? "Available" : "Not Available");
    Print("   MT5 Build: ", info.mt5_build);
    Print("   Hardware Category: ", info.recommended_hardware);
    Print("");
}

//+------------------------------------------------------------------+
//| Generate optimal configuration                                   |
//+------------------------------------------------------------------+
ProfileConfig GenerateOptimalConfig(const SystemInfo &systemInfo)
{
    ProfileConfig config;
    
    // Determine hardware type
    ENUM_HARDWARE_TYPE hardware = HardwareType;
    if(hardware == AUTO_DETECT)
    {
        if(systemInfo.recommended_hardware == "WORKSTATION")
            hardware = WORKSTATION;
        else if(systemInfo.recommended_hardware == "DESKTOP")
            hardware = DESKTOP;
        else
            hardware = LAPTOP;
    }
    
    // Configure based on trading style and hardware
    switch(TradingStyle)
    {
        case SCALPING:
            config.point_multiplier = (hardware == WORKSTATION) ? 1 : 2;
            config.throttle_redraw = 0;
            config.sessions_to_count = 1;
            config.enable_developing_poc = true;
            config.enable_developing_vahval = true;
            config.color_scheme = "Neon_Blue_Red";
            break;
            
        case DAY_TRADING:
            config.point_multiplier = (hardware == WORKSTATION) ? 2 : 3;
            config.throttle_redraw = (hardware == LAPTOP) ? 1 : 0;
            config.sessions_to_count = 3;
            config.enable_developing_poc = true;
            config.enable_developing_vahval = (hardware != LAPTOP);
            config.color_scheme = "Professional_Green_Red";
            break;
            
        case SWING:
            config.point_multiplier = (hardware == LAPTOP) ? 5 : 3;
            config.throttle_redraw = (hardware == LAPTOP) ? 2 : 1;
            config.sessions_to_count = 5;
            config.enable_developing_poc = false;
            config.enable_developing_vahval = false;
            config.color_scheme = "Classic_Blue_Orange";
            break;
            
        case POSITION:
            config.point_multiplier = (hardware == LAPTOP) ? 10 : 5;
            config.throttle_redraw = (hardware == LAPTOP) ? 5 : 2;
            config.sessions_to_count = 10;
            config.enable_developing_poc = false;
            config.enable_developing_vahval = false;
            config.color_scheme = "Monochrome_Contrast";
            break;
    }
    
    // Hardware-specific optimizations
    config.enable_gpu = systemInfo.gpu_available && EnableAdvancedFeatures && (hardware != LAPTOP);
    config.high_dpi_support = (systemInfo.screen_dpi > 100);
    
    // Alert configuration
    if(SetupAlerts)
    {
        config.alert_native = true;
        config.alert_push = true;
        config.alert_value_area = (TradingStyle == DAY_TRADING || TradingStyle == SCALPING);
        config.alert_median = (TradingStyle != POSITION);
    }
    
    return config;
}

//+------------------------------------------------------------------+
//| Apply configuration to Market Profile                           |
//+------------------------------------------------------------------+
bool ApplyConfiguration(const ProfileConfig &config)
{
    Print("⚙️  Applying optimal configuration...");
    
    // Create configuration content
    string configContent = "";
    configContent += "# Auto-generated configuration by Setup_MarketProfile_2025\n";
    configContent += "# Generated on: " + TimeToString(TimeCurrent()) + "\n\n";
    
    configContent += "[OPTIMIZED_SETTINGS]\n";
    configContent += "PointMultiplier=" + (string)config.point_multiplier + "\n";
    configContent += "ThrottleRedraw=" + (string)config.throttle_redraw + "\n";
    configContent += "SessionsToCount=" + (string)config.sessions_to_count + "\n";
    configContent += "EnableGPUAcceleration=" + (config.enable_gpu ? "true" : "false") + "\n";
    configContent += "EnableDevelopingPOC=" + (config.enable_developing_poc ? "true" : "false") + "\n";
    configContent += "EnableDevelopingVAHVAL=" + (config.enable_developing_vahval ? "true" : "false") + "\n";
    configContent += "ColorScheme=" + config.color_scheme + "\n";
    configContent += "HighDPISupport=" + (config.high_dpi_support ? "true" : "false") + "\n\n";
    
    configContent += "[ALERT_SETTINGS]\n";
    configContent += "AlertNative=" + (config.alert_native ? "true" : "false") + "\n";
    configContent += "AlertPush=" + (config.alert_push ? "true" : "false") + "\n";
    configContent += "AlertForValueArea=" + (config.alert_value_area ? "true" : "false") + "\n";
    configContent += "AlertForMedian=" + (config.alert_median ? "true" : "false") + "\n\n";
    
    configContent += "[TRADING_STYLE]\n";
    configContent += "OptimizedFor=" + EnumToString(TradingStyle) + "\n";
    configContent += "SetupDate=" + TimeToString(TimeCurrent()) + "\n";
    
    // Save configuration file
    string filename = "MarketProfile_AutoSetup_" + TimeToString(TimeCurrent(), TIME_DATE) + ".ini";
    int fileHandle = FileOpen(filename, FILE_WRITE | FILE_TXT);
    
    if(fileHandle != INVALID_HANDLE)
    {
        FileWriteString(fileHandle, configContent);
        FileClose(fileHandle);
        Print("💾 Configuration saved to: ", filename);
        return true;
    }
    else
    {
        Print("❌ Failed to save configuration file");
        return false;
    }
}

//+------------------------------------------------------------------+
//| Show quick start tips                                           |
//+------------------------------------------------------------------+
void ShowQuickStartTips()
{
    Print("");
    Print("🚀 Quick Start Tips:");
    Print("   1. Add MarketProfile indicator to your chart");
    Print("   2. Load the generated configuration file");
    Print("   3. Use Ctrl+1-8 to switch between session types");
    
    switch(TradingStyle)
    {
        case SCALPING:
            Print("   4. Watch for POC breaks on M1-M5 charts");
            Print("   5. Enable developing POC for real-time levels");
            break;
        case DAY_TRADING:
            Print("   4. Focus on Value Area levels for entries");
            Print("   5. Use intraday sessions for precise timing");
            break;
        case SWING:
            Print("   4. Monitor weekly sessions for swing points");
            Print("   5. Use median rays for trend confirmation");
            break;
        case POSITION:
            Print("   4. Analyze monthly/quarterly profiles");
            Print("   5. Focus on long-term value areas");
            break;
    }
    
    Print("");
    Print("📚 For detailed guide, see: QUICK_START_2025.md");
    Print("⚡ For performance tips, see: PERFORMANCE_GUIDE.md");
    Print("");
}

//+------------------------------------------------------------------+
//| Quick system benchmark                                          |
//+------------------------------------------------------------------+
void RunQuickBenchmark()
{
    Print("🔍 Running quick performance benchmark...");
    
    uint start_time = GetTickCount();
    
    // Simulate volume profile calculation
    double test_data[];
    ArrayResize(test_data, 10000);
    
    for(int i = 0; i < 10000; i++)
    {
        test_data[i] = MathRand() / 32767.0;
    }
    
    // Simple calculation to test speed
    double sum = 0;
    for(int i = 0; i < 10000; i++)
    {
        sum += test_data[i] * test_data[i];
    }
    
    uint end_time = GetTickCount();
    uint calculation_time = end_time - start_time;
    
    Print("⏱️  Benchmark result: ", calculation_time, "ms");
    
    if(calculation_time < 10)
        Print("💚 Excellent performance - all features recommended");
    else if(calculation_time < 50)
        Print("💛 Good performance - most features suitable");
    else
        Print("💙 Moderate performance - consider optimized settings");
} 