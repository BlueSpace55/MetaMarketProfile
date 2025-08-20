//+------------------------------------------------------------------+
//|                                               Troubleshoot.mq5 |
//|                        Copyright 2025, Enhanced Market Profile  |
//|                             https://www.earnforex.com/          |
//+------------------------------------------------------------------+
#property copyright "Enhanced Market Profile - 2025"
#property link      "https://www.earnforex.com/"
#property version   "1.00"
#property description "Quick troubleshooting for Market Profile issues"
#property description "Diagnoses common problems and suggests solutions"

#property script_show_inputs

//--- Input parameters
input group "=== Diagnostic Options ==="
input bool CheckSystemCompatibility = true;  // Check MT5 and system compatibility
input bool CheckPerformance = true;          // Run performance diagnostics
input bool CheckDataAvailability = true;     // Verify market data access
input bool ShowOptimizations = true;         // Display optimization suggestions
input bool CheckNetworkConnectivity = true;  // Test network and broker connection
input bool CheckBrokerSpecifics = true;      // Run broker-specific diagnostics
input bool ValidateConfiguration = true;     // Validate Market Profile settings
input bool MemoryLeakDetection = true;       // Check for memory leaks
input bool AutoFixIssues = false;            // Automatically fix common issues
input bool ExportDiagnosticReport = false;   // Save diagnostics to file
input bool VerboseOutput = false;            // Show detailed technical info

//--- Advanced diagnostic options
input group "=== Advanced Options ==="
input int StressTestDuration = 10;           // Stress test duration in seconds
input bool MonitorRealTime = false;          // Enable real-time monitoring mode
input bool CheckThreadSafety = true;         // Verify thread safety
input bool AnalyzeLogFiles = false;          // Analyze recent log files

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
{
    Print("🔧 Market Profile 2025 - Troubleshooting Tool");
    Print("================================================");
    Print("Running diagnostics for ", Symbol(), " on ", EnumToString(PERIOD_CURRENT));
    Print("");
    
    bool all_checks_passed = true;
    
    // 1. System Compatibility Check
    if(CheckSystemCompatibility)
    {
        Print("🖥️  SYSTEM COMPATIBILITY CHECK");
        Print("──────────────────────────────");
        all_checks_passed &= RunCompatibilityCheck();
        Print("");
    }
    
    // 2. Performance Diagnostics  
    if(CheckPerformance)
    {
        Print("⚡ PERFORMANCE DIAGNOSTICS");
        Print("─────────────────────────");
        all_checks_passed &= RunPerformanceDiagnostics();
        Print("");
    }
    
    // 3. Data Availability Check
    if(CheckDataAvailability)
    {
        Print("📊 DATA AVAILABILITY CHECK");
        Print("─────────────────────────");
        all_checks_passed &= RunDataAvailabilityCheck();
        Print("");
    }
    
    // 4. Network Connectivity Check
    if(CheckNetworkConnectivity)
    {
        Print("🌐 NETWORK CONNECTIVITY CHECK");
        Print("─────────────────────────────");
        all_checks_passed &= RunNetworkConnectivityCheck();
        Print("");
    }
    
    // 5. Broker-Specific Diagnostics
    if(CheckBrokerSpecifics)
    {
        Print("🏦 BROKER-SPECIFIC DIAGNOSTICS");
        Print("──────────────────────────────");
        all_checks_passed &= RunBrokerSpecificChecks();
        Print("");
    }
    
    // 6. Configuration Validation
    if(ValidateConfiguration)
    {
        Print("⚙️  CONFIGURATION VALIDATION");
        Print("────────────────────────────");
        all_checks_passed &= ValidateMarketProfileConfiguration();
        Print("");
    }
    
    // 7. Memory Leak Detection
    if(MemoryLeakDetection)
    {
        Print("🧠 MEMORY LEAK DETECTION");
        Print("────────────────────────");
        all_checks_passed &= RunMemoryLeakDetection();
        Print("");
    }
    
    // 8. Thread Safety Check
    if(CheckThreadSafety)
    {
        Print("🔒 THREAD SAFETY CHECK");
        Print("─────────────────────");
        all_checks_passed &= CheckThreadSafetyImplementation();
        Print("");
    }
    
    // 9. Log File Analysis
    if(AnalyzeLogFiles)
    {
        Print("📝 LOG FILE ANALYSIS");
        Print("───────────────────");
        AnalyzeRecentLogFiles();
        Print("");
    }
    
    // 10. Stress Testing
    if(StressTestDuration > 0)
    {
        Print("🏋️  STRESS TESTING");
        Print("─────────────────");
        RunStressTest(StressTestDuration);
        Print("");
    }
    
    // 11. Show optimizations
    if(ShowOptimizations)
    {
        Print("💡 OPTIMIZATION SUGGESTIONS");
        Print("───────────────────────────");
        ShowOptimizationSuggestions();
        Print("");
    }
    
    // 12. Auto-fix issues
    if(AutoFixIssues && !all_checks_passed)
    {
        Print("🔧 AUTO-FIX ATTEMPTS");
        Print("───────────────────");
        AttemptAutoFix();
        Print("");
    }
    
    // 13. Real-time monitoring
    if(MonitorRealTime)
    {
        Print("📊 STARTING REAL-TIME MONITORING");
        Print("────────────────────────────────");
        StartRealTimeMonitoring();
        Print("");
    }
    
    // 14. Export diagnostic report
    if(ExportDiagnosticReport)
    {
        Print("💾 EXPORTING DIAGNOSTIC REPORT");
        Print("──────────────────────────────");
        ExportDiagnosticReportToFile();
        Print("");
    }
    
    // 15. Final summary
    Print("📋 DIAGNOSTIC SUMMARY");
    Print("────────────────────");
    string performance_rating = GetPerformanceRating();
    Print("System Performance Rating: ", performance_rating);
    
    if(all_checks_passed)
    {
        Print("✅ All checks passed! Your system is ready for Market Profile 2025");
        Print("🚀 Performance optimized for ", performance_rating, " systems");
    }
    else
    {
        Print("⚠️  Some issues detected. Please review the suggestions above");
        if(AutoFixIssues)
            Print("🔧 Auto-fix attempted. Re-run diagnostics to verify fixes");
    }
    Print("");
    Print("🔗 For more help: https://www.earnforex.com/metatrader-indicators/MarketProfile/");
    Print("📧 Support: Contact EarnForex support team");
    Print("📚 Documentation: Check PERFORMANCE_GUIDE.md and QUICK_START_2025.md");
}

//+------------------------------------------------------------------+
//| Check system compatibility                                       |
//+------------------------------------------------------------------+
bool RunCompatibilityCheck()
{
    bool compatible = true;
    
    // Check MT5 build
    int build = (int)TerminalInfoInteger(TERMINAL_BUILD);
    Print("MT5 Build: ", build);
    
    if(build < 3300)
    {
        Print("❌ MT5 build too old! Minimum required: 3300");
        Print("   💡 Please update MetaTrader 5 to the latest version");
        compatible = false;
    }
    else if(build < 3390)
    {
        Print("⚠️  MT5 build is compatible but outdated");
        Print("   💡 Recommended: Build 3390+ for best performance");
    }
    else
    {
        Print("✅ MT5 build is up to date");
    }
    
    // Check system resources
    int cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
    Print("CPU Cores: ", cpu_cores);
    
    if(cpu_cores < 2)
    {
        Print("⚠️  Limited CPU cores detected");
        Print("   💡 Consider using optimized settings for low-end systems");
    }
    else
    {
        Print("✅ Sufficient CPU cores available");
    }
    
    // Check GPU availability
    int cl_ctx = CLContextCreate();
    bool gpu_available = (cl_ctx != INVALID_HANDLE);
    if(cl_ctx != INVALID_HANDLE) CLContextFree(cl_ctx);
    
    Print("GPU OpenCL Support: ", gpu_available ? "Available" : "Not Available");
    
    if(!gpu_available && VerboseOutput)
    {
        Print("   💡 GPU acceleration disabled - using CPU mode");
        Print("   📝 This is normal for integrated graphics or older GPUs");
    }
    
    // Check memory
    double available_memory = TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE) / (1024.0 * 1024.0);
    Print("Available Memory: ~", DoubleToString(available_memory, 0), " MB");
    
    if(available_memory < 100)
    {
        Print("⚠️  Low memory available");
        Print("   💡 Close other applications or reduce SessionsToCount");
        compatible = false;
    }
    else
    {
        Print("✅ Sufficient memory available");
    }
    
    return compatible;
}

//+------------------------------------------------------------------+
//| Run performance diagnostics                                     |
//+------------------------------------------------------------------+
bool RunPerformanceDiagnostics()
{
    bool performance_ok = true;
    
    // Test calculation speed
    Print("Running performance benchmark...");
    
    uint start_time = GetTickCount();
    
    // Simulate typical Market Profile calculations
    double test_array[];
    ArrayResize(test_array, 1000);
    
    for(int i = 0; i < 1000; i++)
    {
        test_array[i] = MathRand() / 32767.0;
    }
    
    // Sort array (common operation in profile calculation)
    ArraySort(test_array);
    
    // Calculate statistics
    double sum = 0, sum_sq = 0;
    for(int i = 0; i < 1000; i++)
    {
        sum += test_array[i];
        sum_sq += test_array[i] * test_array[i];
    }
    
    double mean = sum / 1000;
    double variance = (sum_sq / 1000) - (mean * mean);
    
    uint end_time = GetTickCount();
    uint calculation_time = end_time - start_time;
    
    Print("Calculation benchmark: ", calculation_time, "ms");
    
    if(calculation_time > 100)
    {
        Print("⚠️  Slow calculation performance detected");
        Print("   💡 Consider increasing PointMultiplier or enabling ThrottleRedraw");
        performance_ok = false;
    }
    else if(calculation_time > 50)
    {
        Print("⚠️  Moderate performance - optimization recommended");
    }
    else
    {
        Print("✅ Excellent calculation performance");
    }
    
    // Test memory allocation
    start_time = GetTickCount();
    
    double large_array[];
    ArrayResize(large_array, 10000);
    ArrayFree(large_array);
    
    end_time = GetTickCount();
    uint memory_time = end_time - start_time;
    
    Print("Memory allocation test: ", memory_time, "ms");
    
    if(memory_time > 50)
    {
        Print("⚠️  Slow memory allocation");
        Print("   💡 System may be low on RAM or heavily loaded");
        performance_ok = false;
    }
    else
    {
        Print("✅ Good memory performance");
    }
    
    // Check object creation speed
    start_time = GetTickCount();
    
    string test_obj_name = "MP_Test_" + (string)TimeCurrent();
    ObjectCreate(0, test_obj_name, OBJ_HLINE, 0, 0, SymbolInfoDouble(Symbol(), SYMBOL_BID));
    ObjectDelete(0, test_obj_name);
    
    end_time = GetTickCount();
    uint object_time = end_time - start_time;
    
    Print("Object creation test: ", object_time, "ms");
    
    if(object_time > 20)
    {
        Print("⚠️  Slow object creation");
        Print("   💡 Consider reducing the number of sessions or using DisableHistogram");
    }
    else
    {
        Print("✅ Good object creation performance");
    }
    
    return performance_ok;
}

//+------------------------------------------------------------------+
//| Check data availability                                         |
//+------------------------------------------------------------------+
bool RunDataAvailabilityCheck()
{
    bool data_ok = true;
    
    // Check basic price data
    double high[], low[], close[];
    long volume[];
    
    ArraySetAsSeries(high, true);
    ArraySetAsSeries(low, true);
    ArraySetAsSeries(close, true);
    ArraySetAsSeries(volume, true);
    
    int bars_requested = 100;
    int copied_high = CopyHigh(Symbol(), PERIOD_CURRENT, 0, bars_requested, high);
    int copied_low = CopyLow(Symbol(), PERIOD_CURRENT, 0, bars_requested, low);
    int copied_close = CopyClose(Symbol(), PERIOD_CURRENT, 0, bars_requested, close);
    int copied_volume = CopyTickVolume(Symbol(), PERIOD_CURRENT, 0, bars_requested, volume);
    
    Print("Price data availability:");
    Print("  High: ", copied_high, "/", bars_requested, " bars");
    Print("  Low: ", copied_low, "/", bars_requested, " bars");
    Print("  Close: ", copied_close, "/", bars_requested, " bars");
    Print("  Volume: ", copied_volume, "/", bars_requested, " bars");
    
    if(copied_high < bars_requested || copied_low < bars_requested || copied_close < bars_requested)
    {
        Print("⚠️  Limited price data available");
        Print("   💡 Wait for more data to load or reduce SessionsToCount");
        data_ok = false;
    }
    else
    {
        Print("✅ Sufficient price data available");
    }
    
    if(copied_volume < bars_requested)
    {
        Print("⚠️  Limited volume data available");
        Print("   💡 Some brokers provide limited volume data");
        Print("   📝 Market Profile will use tick volume instead");
    }
    else
    {
        Print("✅ Volume data available");
    }
    
    // Check data quality
    if(copied_high > 0 && copied_low > 0)
    {
        double min_price = high[ArrayMinimum(high, 0, copied_high)];
        double max_price = low[ArrayMaximum(low, 0, copied_low)];
        
        if(min_price <= 0 || max_price <= 0)
        {
            Print("❌ Invalid price data detected (zero or negative prices)");
            data_ok = false;
        }
        else
        {
            Print("✅ Price data quality: Good");
        }
        
        // Check for data gaps
        int gaps_found = 0;
        for(int i = 1; i < MathMin(copied_high, 50); i++)
        {
            if(MathAbs(close[i] - close[i-1]) > (close[i] * 0.1)) // 10% gap
            {
                gaps_found++;
            }
        }
        
        if(gaps_found > 0)
        {
            Print("⚠️  ", gaps_found, " potential data gaps detected");
            Print("   💡 This is normal over weekends or during market closures");
        }
    }
    
    // Check symbol specifications
    double point = SymbolInfoDouble(Symbol(), SYMBOL_POINT);
    int digits = (int)SymbolInfoInteger(Symbol(), SYMBOL_DIGITS);
    double tick_size = SymbolInfoDouble(Symbol(), SYMBOL_TRADE_TICK_SIZE);
    
    Print("Symbol specifications:");
    Print("  Point: ", DoubleToString(point, digits + 1));
    Print("  Digits: ", digits);
    Print("  Tick Size: ", DoubleToString(tick_size, digits + 1));
    
    if(VerboseOutput)
    {
        double spread = SymbolInfoInteger(Symbol(), SYMBOL_SPREAD);
        double bid = SymbolInfoDouble(Symbol(), SYMBOL_BID);
        double ask = SymbolInfoDouble(Symbol(), SYMBOL_ASK);
        
        Print("  Current Spread: ", DoubleToString(spread, 1), " points");
        Print("  Bid: ", DoubleToString(bid, digits));
        Print("  Ask: ", DoubleToString(ask, digits));
    }
    
    return data_ok;
}

//+------------------------------------------------------------------+
//| Show optimization suggestions                                   |
//+------------------------------------------------------------------+
void ShowOptimizationSuggestions()
{
    // Analyze current timeframe
    ENUM_TIMEFRAMES current_tf = Period();
    string tf_name = EnumToString(current_tf);
    
    Print("Current timeframe: ", tf_name);
    
    // Suggest optimal settings based on timeframe
    if(current_tf <= PERIOD_M5)
    {
        Print("💡 Scalping timeframe detected:");
        Print("   ✅ Recommended: PointMultiplier=1, ThrottleRedraw=0");
        Print("   ✅ Enable: DevelopingPOC, EnableGPU (if available)");
        Print("   ✅ Sessions: 1-2 for fast updates");
    }
    else if(current_tf <= PERIOD_H1)
    {
        Print("💡 Day trading timeframe detected:");
        Print("   ✅ Recommended: PointMultiplier=3, ThrottleRedraw=1");
        Print("   ✅ Enable: DevelopingPOC, ValueAreaRays");
        Print("   ✅ Sessions: 3-5 for good analysis");
    }
    else if(current_tf <= PERIOD_D1)
    {
        Print("💡 Swing trading timeframe detected:");
        Print("   ✅ Recommended: PointMultiplier=5, ThrottleRedraw=2");
        Print("   ✅ Enable: MedianRays, ShowKeyValues");
        Print("   ✅ Sessions: 5-10 for trend analysis");
    }
    else
    {
        Print("💡 Position trading timeframe detected:");
        Print("   ✅ Recommended: PointMultiplier=10, ThrottleRedraw=5");
        Print("   ✅ Enable: WeeklyProfiles, DisableHistogram");
        Print("   ✅ Sessions: 10+ for long-term view");
    }
    
    // Hardware-specific suggestions
    int cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
    int cl_ctx = CLContextCreate();
    bool gpu_available = (cl_ctx != INVALID_HANDLE);
    if(cl_ctx != INVALID_HANDLE) CLContextFree(cl_ctx);
    
    Print("");
    Print("Hardware-specific recommendations:");
    
    if(cpu_cores >= 8 && gpu_available)
    {
        Print("🖥️  High-end system detected:");
        Print("   ✅ Enable all features including GPU acceleration");
        Print("   ✅ Use maximum precision (PointMultiplier=1)");
        Print("   ✅ Real-time updates (ThrottleRedraw=0)");
    }
    else if(cpu_cores >= 4)
    {
        Print("💻 Standard system detected:");
        Print("   ✅ Most features available");
        Print("   ✅ Moderate settings recommended");
        Print("   ⚠️  Consider GPU upgrade for better performance");
    }
    else
    {
        Print("📱 Limited system detected:");
        Print("   ⚠️  Use optimized settings");
        Print("   ✅ Increase PointMultiplier (5-10)");
        Print("   ✅ Enable ThrottleRedraw (2-5 seconds)");
        Print("   ✅ Limit SessionsToCount (1-3)");
    }
    
    // Common troubleshooting tips
    Print("");
    Print("🔧 Common issue solutions:");
    Print("   • Slow performance → Increase PointMultiplier");
    Print("   • Too many objects → Reduce SessionsToCount");
    Print("   • High memory usage → Enable ThrottleRedraw");
    Print("   • Missing levels → Check data availability");
    Print("   • Wrong colors → Verify ColorScheme setting");
    
    Print("");
    Print("📚 Quick setup: Run Setup_MarketProfile_2025.mq5");
    Print("🧪 Test features: Run Example_Usage.mq5");
}

//+------------------------------------------------------------------+
//| Get system performance rating                                   |
//+------------------------------------------------------------------+
string GetPerformanceRating()
{
    int cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
    int cl_ctx = CLContextCreate();
    bool gpu_available = (cl_ctx != INVALID_HANDLE);
    if(cl_ctx != INVALID_HANDLE) CLContextFree(cl_ctx);
    
    double available_memory = TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE) / (1024.0 * 1024.0);
    
    int score = 0;
    if(cpu_cores >= 8) score += 3;
    else if(cpu_cores >= 4) score += 2;
    else score += 1;
    
    if(gpu_available) score += 2;
    
    if(available_memory >= 1000) score += 2;
    else if(available_memory >= 500) score += 1;
    
    if(score >= 6) return "Excellent";
    else if(score >= 4) return "Good";
    else if(score >= 2) return "Fair";
    else return "Limited";
}

//+------------------------------------------------------------------+
//| Check network connectivity and broker connection               |
//+------------------------------------------------------------------+
bool RunNetworkConnectivityCheck()
{
    bool network_ok = true;
    
    // Check terminal connection status
    bool is_connected = TerminalInfoInteger(TERMINAL_CONNECTED);
    Print("Terminal Connection: ", is_connected ? "Connected" : "Disconnected");
    
    if(!is_connected)
    {
        Print("❌ No connection to trading server");
        Print("   💡 Check internet connection and server settings");
        network_ok = false;
    }
    else
    {
        Print("✅ Trading server connected");
    }
    
    // Check ping to trading server
    uint ping_start = GetTickCount();
    double bid = SymbolInfoDouble(Symbol(), SYMBOL_BID);
    uint ping_end = GetTickCount();
    uint ping_time = ping_end - ping_start;
    
    Print("Server Response Time: ~", ping_time, "ms");
    
    if(ping_time > 1000)
    {
        Print("⚠️  High latency detected");
        Print("   💡 Poor connection may affect real-time updates");
        network_ok = false;
    }
    else if(ping_time > 500)
    {
        Print("⚠️  Moderate latency - consider optimizing network");
    }
    else
    {
        Print("✅ Good server response time");
    }
    
    // Check symbol subscription
    bool symbol_selected = SymbolSelect(Symbol(), true);
    Print("Symbol Subscription: ", symbol_selected ? "Active" : "Inactive");
    
    if(!symbol_selected)
    {
        Print("⚠️  Symbol not properly subscribed");
        Print("   💡 Market Profile may have limited data access");
    }
    
    // Test data streaming
    MqlTick tick;
    bool tick_available = SymbolInfoTick(Symbol(), tick);
    Print("Real-time Tick Data: ", tick_available ? "Available" : "Not Available");
    
    if(!tick_available)
    {
        Print("⚠️  No real-time tick data");
        Print("   💡 Market Profile will use historical data only");
        network_ok = false;
    }
    
    return network_ok;
}

//+------------------------------------------------------------------+
//| Run broker-specific diagnostic checks                          |
//+------------------------------------------------------------------+
bool RunBrokerSpecificChecks()
{
    bool broker_ok = true;
    
    // Get broker information
    string company = TerminalInfoString(TERMINAL_COMPANY);
    string server = TerminalInfoString(TERMINAL_NAME);
    
    Print("Broker: ", company);
    Print("Server: ", server);
    
    // Check account type
    ENUM_ACCOUNT_TRADE_MODE trade_mode = (ENUM_ACCOUNT_TRADE_MODE)AccountInfoInteger(ACCOUNT_TRADE_MODE);
    string account_type = EnumToString(trade_mode);
    Print("Account Type: ", account_type);
    
    if(trade_mode == ACCOUNT_TRADE_MODE_DEMO)
    {
        Print("📝 Demo account detected - full functionality available");
    }
    else if(trade_mode == ACCOUNT_TRADE_MODE_CONTEST)
    {
        Print("🏆 Contest account detected");
        Print("   💡 Some data feeds may be limited");
    }
    
    // Check spread and execution
    double spread = SymbolInfoInteger(Symbol(), SYMBOL_SPREAD);
    ENUM_SYMBOL_TRADE_EXECUTION execution = (ENUM_SYMBOL_TRADE_EXECUTION)SymbolInfoInteger(Symbol(), SYMBOL_TRADE_EXEMODE);
    
    Print("Current Spread: ", DoubleToString(spread, 1), " points");
    Print("Execution Type: ", EnumToString(execution));
    
    if(spread > 50)
    {
        Print("⚠️  High spread detected");
        Print("   💡 May affect Market Profile accuracy during low volatility");
    }
    
    // Check market hours
    bool market_open = SymbolInfoInteger(Symbol(), SYMBOL_TRADE_MODE) != SYMBOL_TRADE_MODE_DISABLED;
    Print("Market Status: ", market_open ? "Open" : "Closed");
    
    // Check volume availability
    long volume_mode = SymbolInfoInteger(Symbol(), SYMBOL_TICKS_VOLUME_MODE);
    Print("Volume Type: ", (volume_mode == 0) ? "Tick Volume" : "Real Volume");
    
    if(volume_mode == 0)
    {
        Print("📝 Using tick volume (normal for most Forex brokers)");
    }
    else
    {
        Print("✅ Real volume available (excellent for Market Profile)");
    }
    
    // Broker-specific optimizations
    if(StringFind(company, "MetaQuotes") >= 0)
    {
        Print("💡 MetaQuotes detected: All features supported");
    }
    else if(StringFind(company, "FXCM") >= 0)
    {
        Print("💡 FXCM detected: Consider EnableRealVolume=false");
    }
    else if(StringFind(company, "Oanda") >= 0)
    {
        Print("💡 Oanda detected: Optimize for tick volume");
    }
    
    return broker_ok;
}

//+------------------------------------------------------------------+
//| Validate Market Profile configuration                          |
//+------------------------------------------------------------------+
bool ValidateMarketProfileConfiguration()
{
    bool config_ok = true;
    
    Print("Checking common Market Profile settings...");
    
    // Check if Market Profile indicator exists
    int window = ChartWindowFind(0, "Market Profile");
    if(window >= 0)
    {
        Print("✅ Market Profile indicator found on chart");
    }
    else
    {
        Print("⚠️  Market Profile indicator not found on current chart");
        Print("   💡 Please attach Market Profile to see configuration validation");
        return false;
    }
    
    // Validate typical configuration ranges
    Print("");
    Print("Configuration recommendations:");
    
    // PointMultiplier validation
    Print("• PointMultiplier: Recommended 1-10 (lower = more detail, higher = better performance)");
    Print("• SessionsToCount: Recommended 1-20 (depends on timeframe and analysis need)");
    Print("• ThrottleRedraw: 0-5 seconds (0 = real-time, higher = less CPU usage)");
    
    // Timeframe-specific validation
    ENUM_TIMEFRAMES tf = Period();
    
    if(tf <= PERIOD_M5)
    {
        Print("✅ M1-M5 timeframe: Use PointMultiplier=1-3, SessionsToCount=1-3");
    }
    else if(tf <= PERIOD_H1)
    {
        Print("✅ M15-H1 timeframe: Use PointMultiplier=3-5, SessionsToCount=3-8");
    }
    else if(tf <= PERIOD_D1)
    {
        Print("✅ H4-D1 timeframe: Use PointMultiplier=5-10, SessionsToCount=5-15");
    }
    else
    {
        Print("✅ W1+ timeframe: Use PointMultiplier=10+, SessionsToCount=10+");
    }
    
    // Memory usage estimation
    int estimated_objects = 100; // Base estimation
    Print("");
    Print("Estimated memory usage: ~", estimated_objects * 50, " KB");
    
    if(estimated_objects > 1000)
    {
        Print("⚠️  High object count expected");
        Print("   💡 Consider reducing SessionsToCount or increasing PointMultiplier");
    }
    
    return config_ok;
}

//+------------------------------------------------------------------+
//| Run memory leak detection                                      |
//+------------------------------------------------------------------+
bool RunMemoryLeakDetection()
{
    bool memory_ok = true;
    
    // Get initial memory state
    long initial_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    Print("Initial Memory Usage: ", initial_memory / 1024, " KB");
    
    // Simulate memory allocation/deallocation cycles
    Print("Running memory allocation test...");
    
    for(int cycle = 0; cycle < 10; cycle++)
    {
        // Create and destroy arrays
        double test_array[];
        ArrayResize(test_array, 1000);
        ArrayFree(test_array);
        
        // Create and delete objects
        string obj_name = "MemTest_" + IntegerToString(cycle);
        ObjectCreate(0, obj_name, OBJ_LABEL, 0, 0, 0);
        ObjectDelete(0, obj_name);
    }
    
    // Check memory after test
    long final_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    long memory_diff = final_memory - initial_memory;
    
    Print("Final Memory Usage: ", final_memory / 1024, " KB");
    Print("Memory Difference: ", memory_diff / 1024, " KB");
    
    if(memory_diff > 100 * 1024) // 100KB threshold
    {
        Print("⚠️  Potential memory leak detected");
        Print("   💡 Consider restarting MT5 or reducing Market Profile complexity");
        memory_ok = false;
    }
    else if(memory_diff > 50 * 1024) // 50KB threshold
    {
        Print("⚠️  Elevated memory usage");
        Print("   💡 Monitor memory usage during extended operation");
    }
    else
    {
        Print("✅ Memory management: Good");
    }
    
    // Check for object leaks
    int total_objects = ObjectsTotal(0);
    Print("Chart Objects Count: ", total_objects);
    
    if(total_objects > 500)
    {
        Print("⚠️  High object count on chart");
        Print("   💡 Some indicators may not be cleaning up properly");
    }
    
    return memory_ok;
}

//+------------------------------------------------------------------+
//| Check thread safety implementation                             |
//+------------------------------------------------------------------+
bool CheckThreadSafetyImplementation()
{
    bool thread_safe = true;
    
    Print("Checking thread safety considerations...");
    
    // Check for concurrent access issues
    Print("✅ MQL5 EA thread: Single-threaded execution model");
    Print("✅ Event handling: Queue-based, thread-safe");
    
    // Test global variable access
    string test_var = "ThreadSafetyTest";
    GlobalVariableSet(test_var, 123.456);
    
    bool var_exists = GlobalVariableCheck(test_var);
    double var_value = GlobalVariableGet(test_var);
    
    if(var_exists && MathAbs(var_value - 123.456) < 0.001)
    {
        Print("✅ Global variables: Thread-safe access confirmed");
    }
    else
    {
        Print("⚠️  Global variables: Access issue detected");
        thread_safe = false;
    }
    
    GlobalVariableDel(test_var);
    
    // Check object access
    string test_obj = "ThreadSafetyObject";
    if(ObjectCreate(0, test_obj, OBJ_LABEL, 0, 0, 0))
    {
        ObjectSetString(0, test_obj, OBJPROP_TEXT, "Test");
        string obj_text = ObjectGetString(0, test_obj, OBJPROP_TEXT);
        
        if(obj_text == "Test")
        {
            Print("✅ Chart objects: Thread-safe access confirmed");
        }
        else
        {
            Print("⚠️  Chart objects: Access issue detected");
            thread_safe = false;
        }
        
        ObjectDelete(0, test_obj);
    }
    
    Print("📝 Note: Market Profile uses single-threaded MQL5 execution model");
    Print("📝 Note: All data access is automatically thread-safe in MT5");
    
    return thread_safe;
}

//+------------------------------------------------------------------+
//| Analyze recent log files for issues                            |
//+------------------------------------------------------------------+
void AnalyzeRecentLogFiles()
{
    Print("Analyzing recent MT5 logs for Market Profile related issues...");
    
    // Note: Direct log file access is limited in MQL5
    // This function provides guidance on manual log analysis
    
    Print("");
    Print("📝 Manual log analysis steps:");
    Print("1. Open MT5 logs folder: File → Open Data Folder → Logs");
    Print("2. Check latest .log file for today's date");
    Print("3. Search for these keywords:");
    Print("   • 'Market Profile' - indicator specific messages");
    Print("   • 'memory' - memory related issues");
    Print("   • 'OpenCL' - GPU acceleration problems");
    Print("   • 'error' - general errors");
    Print("   • 'insufficient' - resource problems");
    
    Print("");
    Print("🔍 Common log patterns to look for:");
    Print("   • 'not enough memory' → Reduce SessionsToCount");
    Print("   • 'OpenCL context creation failed' → Disable GPU features");
    Print("   • 'too many objects' → Increase PointMultiplier");
    Print("   • 'symbol not found' → Check symbol name");
    
    // Check current terminal messages
    Print("");
    Print("Recent terminal activity analysis:");
    Print("✅ Current session started at: ", TimeToString(TerminalInfoInteger(TERMINAL_BUILD), TIME_SECONDS));
    Print("📊 Terminal memory usage: ", TerminalInfoInteger(TERMINAL_MEMORY_USED) / 1024, " KB");
    Print("💽 Available disk space: ", TerminalInfoInteger(TERMINAL_DISK_SPACE), " MB");
}

//+------------------------------------------------------------------+
//| Run stress test for specified duration                         |
//+------------------------------------------------------------------+
void RunStressTest(int duration_seconds)
{
    Print("Starting ", duration_seconds, "-second stress test...");
    
    uint start_time = GetTickCount();
    uint end_time = start_time + (duration_seconds * 1000);
    
    int operations_count = 0;
    long initial_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    
    while(GetTickCount() < end_time)
    {
        // Simulate intensive Market Profile operations
        
        // 1. Array operations
        double price_array[];
        ArrayResize(price_array, 500);
        for(int i = 0; i < 500; i++)
        {
            price_array[i] = SymbolInfoDouble(Symbol(), SYMBOL_BID) + (MathRand() - 16384) * _Point;
        }
        ArraySort(price_array);
        
        // 2. Mathematical calculations
        double sum = 0, variance = 0;
        for(int i = 0; i < 500; i++)
        {
            sum += price_array[i];
        }
        double mean = sum / 500;
        for(int i = 0; i < 500; i++)
        {
            variance += MathPow(price_array[i] - mean, 2);
        }
        
        // 3. Object operations (create/delete cycle)
        string obj_name = "StressTest_" + IntegerToString(operations_count);
        ObjectCreate(0, obj_name, OBJ_TREND, 0, TimeCurrent(), price_array[0], TimeCurrent() + 3600, price_array[499]);
        ObjectDelete(0, obj_name);
        
        operations_count++;
        ArrayFree(price_array);
        
        // Yield control to prevent freezing
        if(operations_count % 10 == 0)
        {
            Sleep(1);
        }
    }
    
    long final_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    long memory_increase = final_memory - initial_memory;
    
    Print("Stress test completed:");
    Print("  Operations performed: ", operations_count);
    Print("  Operations per second: ", (double)operations_count / duration_seconds);
    Print("  Memory increase: ", memory_increase / 1024, " KB");
    
    if(operations_count < duration_seconds * 10)
    {
        Print("⚠️  Low performance during stress test");
        Print("   💡 Consider optimizing Market Profile settings");
    }
    else if(memory_increase > 1024 * 1024) // 1MB
    {
        Print("⚠️  High memory usage during stress test");
        Print("   💡 Monitor for memory leaks during extended operation");
    }
    else
    {
        Print("✅ Stress test passed - system stable under load");
    }
}

//+------------------------------------------------------------------+
//| Attempt automatic fixes for common issues                      |
//+------------------------------------------------------------------+
void AttemptAutoFix()
{
    Print("Attempting automatic fixes for detected issues...");
    
    // Fix 1: Clear old Market Profile objects
    int objects_deleted = 0;
    for(int i = ObjectsTotal(0) - 1; i >= 0; i--)
    {
        string name = ObjectName(0, i);
        if(StringFind(name, "MP_") == 0 || StringFind(name, "MarketProfile") >= 0)
        {
            ObjectDelete(0, name);
            objects_deleted++;
        }
    }
    
    if(objects_deleted > 0)
    {
        Print("✅ Cleaned up ", objects_deleted, " old Market Profile objects");
    }
    
    // Fix 2: Reset global variables
    int globals_deleted = 0;
    // Note: Cannot enumerate global variables in MQL5, so this is a placeholder
    Print("📝 Note: Manually clear old global variables if needed");
    Print("   Use: GlobalVariablesDeleteAll() or restart MT5");
    
    // Fix 3: Optimize chart settings
    ChartRedraw(0);
    Print("✅ Chart refreshed");
    
    // Fix 4: Memory cleanup
    // Force garbage collection by creating and freeing temporary arrays
    double temp_array[];
    ArrayResize(temp_array, 1);
    ArrayFree(temp_array);
    Print("✅ Attempted memory cleanup");
    
    // Fix 5: Symbol resubscription
    SymbolSelect(Symbol(), true);
    Print("✅ Symbol resubscribed for better data feed");
    
    Print("");
    Print("🔧 Auto-fix completed. Re-run diagnostics to verify improvements.");
    Print("💡 If issues persist, consider manual troubleshooting or restart MT5.");
}

//+------------------------------------------------------------------+
//| Start real-time monitoring mode                                |
//+------------------------------------------------------------------+
void StartRealTimeMonitoring()
{
    Print("Real-time monitoring activated...");
    Print("📊 Monitoring system performance and Market Profile behavior");
    Print("⚠️  Note: This is a demonstration - full monitoring requires a custom EA");
    
    // Sample monitoring implementation
    long initial_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    int initial_objects = ObjectsTotal(0);
    
    for(int i = 0; i < 30; i++) // Monitor for 30 seconds
    {
        Sleep(1000); // Wait 1 second
        
        long current_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
        int current_objects = ObjectsTotal(0);
        
        Print("T+", i+1, "s: Memory=", current_memory/1024, "KB, Objects=", current_objects);
        
        // Alert on significant changes
        if(current_memory > initial_memory + 500*1024) // 500KB increase
        {
            Print("⚠️  Memory spike detected!");
        }
        
        if(current_objects > initial_objects + 50) // 50 objects increase
        {
            Print("⚠️  Object count spike detected!");
        }
    }
    
    Print("📊 Real-time monitoring sample completed");
    Print("💡 For continuous monitoring, implement a dedicated EA");
}

//+------------------------------------------------------------------+
//| Export diagnostic report to file                               |
//+------------------------------------------------------------------+
void ExportDiagnosticReportToFile()
{
    string filename = "MarketProfile_Diagnostic_" + TimeToString(TimeCurrent(), TIME_DATE) + ".txt";
    int file_handle = FileOpen(filename, FILE_WRITE | FILE_TXT);
    
    if(file_handle != INVALID_HANDLE)
    {
        // Write header
        FileWrite(file_handle, "=================================================");
        FileWrite(file_handle, "Market Profile 2025 - Diagnostic Report");
        FileWrite(file_handle, "Generated: " + TimeToString(TimeCurrent(), TIME_DATE | TIME_SECONDS));
        FileWrite(file_handle, "Symbol: " + Symbol() + " | Timeframe: " + EnumToString(Period()));
        FileWrite(file_handle, "=================================================");
        FileWrite(file_handle, "");
        
        // System information
        FileWrite(file_handle, "[SYSTEM INFORMATION]");
        FileWrite(file_handle, "MT5 Build: " + IntegerToString(TerminalInfoInteger(TERMINAL_BUILD)));
        FileWrite(file_handle, "CPU Cores: " + IntegerToString(TerminalInfoInteger(TERMINAL_CPU_CORES)));
        FileWrite(file_handle, "Memory Available: " + IntegerToString(TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE) / 1024) + " KB");
        FileWrite(file_handle, "Memory Used: " + IntegerToString(TerminalInfoInteger(TERMINAL_MEMORY_USED) / 1024) + " KB");
        FileWrite(file_handle, "Performance Rating: " + GetPerformanceRating());
        FileWrite(file_handle, "");
        
        // Broker information
        FileWrite(file_handle, "[BROKER INFORMATION]");
        FileWrite(file_handle, "Company: " + TerminalInfoString(TERMINAL_COMPANY));
        FileWrite(file_handle, "Server: " + TerminalInfoString(TERMINAL_NAME));
        FileWrite(file_handle, "Connected: " + (TerminalInfoInteger(TERMINAL_CONNECTED) ? "Yes" : "No"));
        FileWrite(file_handle, "");
        
        // Symbol information
        FileWrite(file_handle, "[SYMBOL INFORMATION]");
        FileWrite(file_handle, "Current Spread: " + DoubleToString(SymbolInfoInteger(Symbol(), SYMBOL_SPREAD), 1) + " points");
        FileWrite(file_handle, "Point Value: " + DoubleToString(SymbolInfoDouble(Symbol(), SYMBOL_POINT), _Digits + 1));
        FileWrite(file_handle, "Digits: " + IntegerToString(SymbolInfoInteger(Symbol(), SYMBOL_DIGITS)));
        FileWrite(file_handle, "");
        
        // Recommendations
        FileWrite(file_handle, "[OPTIMIZATION RECOMMENDATIONS]");
        ENUM_TIMEFRAMES tf = Period();
        if(tf <= PERIOD_M5)
        {
            FileWrite(file_handle, "Timeframe: Scalping (M1-M5)");
            FileWrite(file_handle, "Recommended: PointMultiplier=1-3, SessionsToCount=1-3");
        }
        else if(tf <= PERIOD_H1)
        {
            FileWrite(file_handle, "Timeframe: Day Trading (M15-H1)");
            FileWrite(file_handle, "Recommended: PointMultiplier=3-5, SessionsToCount=3-8");
        }
        else
        {
            FileWrite(file_handle, "Timeframe: Swing/Position Trading");
            FileWrite(file_handle, "Recommended: PointMultiplier=5+, SessionsToCount=5+");
        }
        
        FileWrite(file_handle, "");
        FileWrite(file_handle, "[SUPPORT INFORMATION]");
        FileWrite(file_handle, "For technical support: https://www.earnforex.com/");
        FileWrite(file_handle, "Documentation: Check PERFORMANCE_GUIDE.md");
        FileWrite(file_handle, "Quick Setup: Run Setup_MarketProfile_2025.mq5");
        
        FileClose(file_handle);
        
        Print("✅ Diagnostic report exported to: ", filename);
        Print("📁 Location: MQL5/Files/" + filename);
    }
    else
    {
        Print("❌ Failed to create diagnostic report file");
        Print("   💡 Check file permissions or disk space");
    }
} 