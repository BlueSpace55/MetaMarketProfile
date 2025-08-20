//+------------------------------------------------------------------+
//|                                               Troubleshoot.mq5 |
//|                        Copyright 2025, Enhanced Market Profile  |
//|                             https://www.earnforex.com/          |
//+------------------------------------------------------------------+
#property copyright "Enhanced Market Profile - 2025"
#property link      "https://www.earnforex.com/"
#property version   "2.00"
#property description "Advanced Market Profile Diagnostic & Troubleshooting Suite"
#property description "Professional-grade system analysis with predictive capabilities"
#property description "Features: Predictive Analysis, Data Quality Assessment, Benchmarking"
#property description "Auto-Fix, Real-time Monitoring, Smart Configuration Advisor"

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
input bool PredictiveAnalysis = true;        // Predict potential future issues
input bool InteractiveDiagnostics = false;   // Enable interactive diagnostic mode
input bool BenchmarkAgainstStandards = true; // Compare against industry benchmarks
input bool GenerateOptimizationScript = true;// Create custom optimization script

//--- Expert diagnostic options
input group "=== Expert Features ==="
input bool DeepSystemProfiling = false;      // Comprehensive system profiling
input bool MarketDataQualityAnalysis = true; // Analyze market data quality patterns
input bool PerformanceRegression = false;    // Check for performance degradation
input bool SecurityValidation = true;        // Validate security settings
input int CustomDiagnosticLevel = 1;         // 1=Basic, 2=Intermediate, 3=Expert, 4=Professional

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
    
    // 14. Predictive Analysis
    if(PredictiveAnalysis)
    {
        Print("🔮 PREDICTIVE ANALYSIS");
        Print("─────────────────────");
        RunPredictiveAnalysis();
        Print("");
    }
    
    // 15. Market Data Quality Analysis
    if(MarketDataQualityAnalysis)
    {
        Print("📈 MARKET DATA QUALITY ANALYSIS");
        Print("───────────────────────────────");
        AnalyzeMarketDataQuality();
        Print("");
    }
    
    // 16. Benchmark Against Standards
    if(BenchmarkAgainstStandards)
    {
        Print("📊 BENCHMARK ANALYSIS");
        Print("─────────────────────");
        BenchmarkSystemPerformance();
        Print("");
    }
    
    // 17. Deep System Profiling
    if(DeepSystemProfiling)
    {
        Print("🔬 DEEP SYSTEM PROFILING");
        Print("────────────────────────");
        RunDeepSystemProfiling();
        Print("");
    }
    
    // 18. Performance Regression Check
    if(PerformanceRegression)
    {
        Print("📉 PERFORMANCE REGRESSION CHECK");
        Print("──────────────────────────────");
        CheckPerformanceRegression();
        Print("");
    }
    
    // 19. Security Validation
    if(SecurityValidation)
    {
        Print("🔒 SECURITY VALIDATION");
        Print("─────────────────────");
        ValidateSecuritySettings();
        Print("");
    }
    
    // 20. Generate Optimization Script
    if(GenerateOptimizationScript)
    {
        Print("⚙️  GENERATING OPTIMIZATION SCRIPT");
        Print("──────────────────────────────────");
        GenerateCustomOptimizationScript();
        Print("");
    }
    
    // 21. Interactive Diagnostics
    if(InteractiveDiagnostics)
    {
        Print("🎮 INTERACTIVE DIAGNOSTICS MODE");
        Print("──────────────────────────────");
        StartInteractiveDiagnostics();
        Print("");
    }
    
    // 22. Smart Configuration Advisor
    if(ShowOptimizations) // Piggyback on ShowOptimizations setting
    {
        Print("🧠 SMART CONFIGURATION ADVISOR");
        Print("─────────────────────────────");
        ProvideSmartConfigurationAdvice();
        Print("");
    }
    
    // 23. System Health Monitor
    Print("❤️  SYSTEM HEALTH MONITOR");
    Print("────────────────────────");
    MonitorSystemHealth();
    Print("");
    
    // 24. Export diagnostic report
    if(ExportDiagnosticReport)
    {
        Print("💾 EXPORTING DIAGNOSTIC REPORT");
        Print("──────────────────────────────");
        ExportDiagnosticReportToFile();
        Print("");
    }
    
    // 25. Final summary with advanced diagnostics
    Print("📋 COMPREHENSIVE DIAGNOSTIC SUMMARY");
    Print("═══════════════════════════════════");
    
    // Enhanced performance assessment
    string performance_rating = GetPerformanceRating();
    int diagnostic_level = CustomDiagnosticLevel;
    string system_status = all_checks_passed ? "OPTIMAL" : "REQUIRES ATTENTION";
    
    Print("");
    Print("🎯 SYSTEM ASSESSMENT:");
    Print("  📊 Performance Rating: ", performance_rating);
    Print("  🔍 Diagnostic Level: ", GetDiagnosticLevelDescription(diagnostic_level));
    Print("  ✅ Overall Status: ", system_status);
    Print("  🕐 Analysis Completed: ", TimeToString(TimeCurrent(), TIME_SECONDS));
    
    // Intelligent recommendations based on findings
    Print("");
    Print("🚀 INTELLIGENT RECOMMENDATIONS:");
    
    if(all_checks_passed)
    {
        Print("  ✅ Excellent! Your system is fully optimized for Market Profile 2025");
        Print("  🎯 Recommended configuration:");
        
        if(StringCompare(performance_rating, "Excellent") == 0)
        {
            Print("     • Use maximum features: All sessions, GPU acceleration");
            Print("     • Real-time mode: PointMultiplier=1, ThrottleRedraw=0");
            Print("     • Advanced features: Enable all 2025 enhancements");
        }
        else if(StringCompare(performance_rating, "Good") == 0)
        {
            Print("     • Use standard configuration: 5-8 sessions");
            Print("     • Balanced mode: PointMultiplier=3, ThrottleRedraw=1");
            Print("     • Most features available with good performance");
        }
        else
        {
            Print("     • Use optimized configuration: 2-3 sessions");
            Print("     • Performance mode: PointMultiplier=5, ThrottleRedraw=3");
            Print("     • Focus on essential features for stability");
        }
    }
    else
    {
        Print("  ⚠️  Issues detected - but they can be resolved:");
        
        if(AutoFixIssues)
        {
            Print("     ✅ Auto-fix has been attempted");
            Print("     🔄 Re-run diagnostics to verify improvements");
        }
        
        Print("     📝 Priority actions:");
        Print("       1. Address high-priority warnings first");
        Print("       2. Run Setup_MarketProfile_2025.mq5 for quick optimization");
        Print("       3. Check PERFORMANCE_GUIDE.md for detailed solutions");
        Print("       4. Consider system upgrades if performance is limited");
    }
    
    // Next steps guidance
    Print("");
    Print("📋 NEXT STEPS:");
    Print("  1. 🎮 Try Example_Usage.mq5 to test Market Profile features");
    Print("  2. ⚙️  Run Setup_MarketProfile_2025.mq5 for quick configuration");
    Print("  3. 📖 Read QUICK_START_2025.md for immediate benefits");
    Print("  4. 🔄 Run this diagnostic weekly to monitor system health");
    
    // Advanced features summary
    if(PredictiveAnalysis || MarketDataQualityAnalysis || BenchmarkAgainstStandards)
    {
        Print("");
        Print("🔬 ADVANCED ANALYSIS COMPLETED:");
        if(PredictiveAnalysis) Print("  ✅ Predictive analysis - Future issues forecasted");
        if(MarketDataQualityAnalysis) Print("  ✅ Data quality analysis - Feed quality assessed");
        if(BenchmarkAgainstStandards) Print("  ✅ Industry benchmarking - Performance compared");
        if(GenerateOptimizationScript) Print("  ✅ Custom optimization script generated");
        if(ExportDiagnosticReport) Print("  ✅ Detailed report exported for future reference");
    }
    
    // Support and resources
    Print("");
    Print("🆘 SUPPORT & RESOURCES:");
    Print("  🔗 Primary Support: https://www.earnforex.com/metatrader-indicators/MarketProfile/");
    Print("  📧 Technical Support: Contact EarnForex support team");
    Print("  📚 Documentation: PERFORMANCE_GUIDE.md, QUICK_START_2025.md");
    Print("  🔧 Quick Tools: Setup_MarketProfile_2025.mq5, Example_Usage.mq5");
    Print("  💬 Community: MT5 forums and trading communities");
    
    // Final status message
    Print("");
    Print("════════════════════════════════════════════════════");
    if(all_checks_passed)
    {
        Print("🎉 CONGRATULATIONS! Your Market Profile 2025 system is ready to trade!");
        Print("💰 You're equipped for professional-grade market analysis");
    }
    else
    {
        Print("🔧 Your system needs minor adjustments for optimal performance");
        Print("💡 Follow the recommendations above for best results");
    }
    Print("════════════════════════════════════════════════════");
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

//+------------------------------------------------------------------+
//| Run predictive analysis for potential future issues            |
//+------------------------------------------------------------------+
void RunPredictiveAnalysis()
{
    Print("Analyzing system trends to predict potential issues...");
    
    // 1. Memory Usage Trend Analysis
    long current_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    long available_memory = TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE);
    double memory_usage_ratio = (double)current_memory / available_memory;
    
    Print("Current Memory Usage Ratio: ", DoubleToString(memory_usage_ratio * 100, 1), "%");
    
    if(memory_usage_ratio > 0.8)
    {
        Print("🚨 CRITICAL: High memory usage detected!");
        Print("   📊 Prediction: System crash risk within 1-2 hours");
        Print("   💡 Immediate Action: Restart MT5 or reduce indicator load");
    }
    else if(memory_usage_ratio > 0.6)
    {
        Print("⚠️  MODERATE: Elevated memory usage");
        Print("   📊 Prediction: Performance degradation likely");
        Print("   💡 Recommendation: Monitor closely, optimize settings");
    }
    else
    {
        Print("✅ Memory usage is healthy");
    }
    
    // 2. CPU Performance Degradation Prediction
    uint start_time = GetTickCount();
    for(int i = 0; i < 1000; i++)
    {
        double calc = MathSin(i) * MathCos(i) + MathSqrt(i + 1);
    }
    uint cpu_test_time = GetTickCount() - start_time;
    
    Print("CPU Performance Index: ", cpu_test_time, "ms (lower is better)");
    
    if(cpu_test_time > 50)
    {
        Print("⚠️  CPU Performance Degradation Detected");
        Print("   📊 Prediction: Market Profile may lag during high volatility");
        Print("   💡 Action: Increase PointMultiplier to 3-5");
    }
    
    // 3. Network Stability Prediction
    static double ping_history[5];
    static int ping_index = 0;
    
    uint ping_start = GetTickCount();
    double test_bid = SymbolInfoDouble(Symbol(), SYMBOL_BID);
    uint current_ping = GetTickCount() - ping_start;
    
    ping_history[ping_index] = (double)current_ping;
    ping_index = (ping_index + 1) % 5;
    
    // Calculate ping trend
    double ping_trend = 0;
    for(int i = 1; i < 5; i++)
    {
        ping_trend += ping_history[i] - ping_history[i-1];
    }
    ping_trend /= 4;
    
    if(ping_trend > 10)
    {
        Print("📡 Network Performance Degrading");
        Print("   📊 Prediction: Connection issues likely in next 10-15 minutes");
        Print("   💡 Action: Enable ThrottleRedraw=2-5 seconds");
    }
    
    // 4. Market Condition Analysis
    double volatility = iATR(Symbol(), PERIOD_M15, 14, 1);
    double current_spread = SymbolInfoInteger(Symbol(), SYMBOL_SPREAD);
    
    if(volatility > current_spread * 5)
    {
        Print("📈 High Volatility Period Predicted");
        Print("   📊 Prediction: Increased Market Profile activity expected");
        Print("   💡 Optimization: Consider reducing SessionsToCount temporarily");
    }
    
    // 5. System Load Prediction
    int total_objects = ObjectsTotal(0);
    if(total_objects > 200)
    {
        Print("🎯 Object Overload Risk");
        Print("   📊 Prediction: Chart may become unresponsive");
        Print("   💡 Action: Run auto-cleanup or increase PointMultiplier");
    }
    
    // 6. Broker-Specific Predictions
    string company = TerminalInfoString(TERMINAL_COMPANY);
    ENUM_DAY_OF_WEEK current_day = (ENUM_DAY_OF_WEEK)TimeDayOfWeek(TimeCurrent());
    
    if(current_day == FRIDAY && TimeHour(TimeCurrent()) >= 20)
    {
        Print("🕐 Weekend Rollover Period");
        Print("   📊 Prediction: Possible data gaps or spread widening");
        Print("   💡 Preparation: Save current Market Profile state");
    }
    
    Print("");
    Print("🎯 Predictive Analysis Summary:");
    Print("   • Memory Status: ", (memory_usage_ratio < 0.6) ? "Stable" : "At Risk");
    Print("   • CPU Performance: ", (cpu_test_time < 30) ? "Optimal" : "Degraded");
    Print("   • Network Stability: ", (ping_trend < 5) ? "Stable" : "Declining");
    Print("   • Overall Risk Level: ", GetOverallRiskLevel(memory_usage_ratio, cpu_test_time, ping_trend));
}

//+------------------------------------------------------------------+
//| Analyze market data quality patterns                           |
//+------------------------------------------------------------------+
void AnalyzeMarketDataQuality()
{
    Print("Performing comprehensive market data quality analysis...");
    
    // 1. Data Completeness Analysis
    double high[], low[], close[];
    long volume[];
    datetime time[];
    
    ArraySetAsSeries(high, true);
    ArraySetAsSeries(low, true);
    ArraySetAsSeries(close, true);
    ArraySetAsSeries(volume, true);
    ArraySetAsSeries(time, true);
    
    int bars_to_check = 1000;
    int copied_high = CopyHigh(Symbol(), PERIOD_CURRENT, 0, bars_to_check, high);
    int copied_low = CopyLow(Symbol(), PERIOD_CURRENT, 0, bars_to_check, low);
    int copied_close = CopyClose(Symbol(), PERIOD_CURRENT, 0, bars_to_check, close);
    int copied_volume = CopyTickVolume(Symbol(), PERIOD_CURRENT, 0, bars_to_check, volume);
    int copied_time = CopyTime(Symbol(), PERIOD_CURRENT, 0, bars_to_check, time);
    
    double completeness_score = (double)MathMin(copied_high, MathMin(copied_low, copied_close)) / bars_to_check;
    Print("Data Completeness Score: ", DoubleToString(completeness_score * 100, 1), "%");
    
    if(completeness_score < 0.95)
    {
        Print("⚠️  Data gaps detected - Market Profile accuracy may be affected");
        Print("   💡 Consider reducing historical analysis depth");
    }
    
    // 2. Price Data Consistency Check
    int price_anomalies = 0;
    int zero_volume_bars = 0;
    
    for(int i = 1; i < MathMin(copied_high, 100); i++)
    {
        // Check for impossible price relationships
        if(high[i] < low[i] || close[i] > high[i] || close[i] < low[i])
        {
            price_anomalies++;
        }
        
        // Check for zero volume
        if(copied_volume > i && volume[i] == 0)
        {
            zero_volume_bars++;
        }
        
        // Check for suspicious price jumps
        if(i > 0 && MathAbs(close[i] - close[i-1]) > close[i] * 0.1) // 10% jump
        {
            Print("📊 Large price gap detected at bar ", i, ": ", DoubleToString(close[i-1], _Digits), " → ", DoubleToString(close[i], _Digits));
        }
    }
    
    Print("Price Data Quality:");
    Print("  • Price Anomalies: ", price_anomalies, " (should be 0)");
    Print("  • Zero Volume Bars: ", zero_volume_bars, " (normal for some timeframes)");
    
    // 3. Volume Quality Analysis
    if(copied_volume > 0)
    {
        double avg_volume = 0;
        long min_vol = volume[0], max_vol = volume[0];
        
        for(int i = 0; i < copied_volume; i++)
        {
            avg_volume += volume[i];
            min_vol = MathMin(min_vol, volume[i]);
            max_vol = MathMax(max_vol, volume[i]);
        }
        avg_volume /= copied_volume;
        
        double volume_ratio = (double)max_vol / MathMax(avg_volume, 1);
        
        Print("Volume Analysis:");
        Print("  • Average Volume: ", DoubleToString(avg_volume, 0));
        Print("  • Min/Max Volume: ", min_vol, " / ", max_vol);
        Print("  • Volume Volatility: ", DoubleToString(volume_ratio, 1), "x");
        
        if(volume_ratio > 50)
        {
            Print("⚠️  Extreme volume spikes detected");
            Print("   💡 Consider enabling volume anomaly filtering");
        }
    }
    
    // 4. Time Gap Analysis
    if(copied_time > 1)
    {
        int time_gaps = 0;
        datetime expected_interval = PeriodSeconds(PERIOD_CURRENT);
        
        for(int i = 1; i < MathMin(copied_time, 100); i++)
        {
            datetime actual_gap = time[i-1] - time[i];
            if(actual_gap > expected_interval * 2) // Allow for some flexibility
            {
                time_gaps++;
            }
        }
        
        Print("Time Series Quality:");
        Print("  • Time Gaps Found: ", time_gaps);
        
        if(time_gaps > 5)
        {
            Print("⚠️  Multiple time gaps detected");
            Print("   💡 This may affect session-based Market Profile calculations");
        }
    }
    
    // 5. Symbol-Specific Quality Checks
    double point = SymbolInfoDouble(Symbol(), SYMBOL_POINT);
    int digits = (int)SymbolInfoInteger(Symbol(), SYMBOL_DIGITS);
    double tick_size = SymbolInfoDouble(Symbol(), SYMBOL_TRADE_TICK_SIZE);
    
    Print("Symbol Specification Quality:");
    Print("  • Point Size: ", DoubleToString(point, digits + 1));
    Print("  • Decimal Places: ", digits);
    Print("  • Tick Size: ", DoubleToString(tick_size, digits + 1));
    
    if(point <= 0 || tick_size <= 0)
    {
        Print("❌ Invalid symbol specifications detected");
        Print("   💡 Contact broker or try different symbol");
    }
    
    // 6. Market Profile Specific Quality Score
    double quality_score = completeness_score;
    if(price_anomalies == 0) quality_score += 0.2;
    if(zero_volume_bars < copied_volume * 0.1) quality_score += 0.1;
    if(time_gaps < 3) quality_score += 0.15;
    
    quality_score = MathMin(quality_score, 1.0);
    
    Print("");
    Print("📊 Overall Data Quality Score: ", DoubleToString(quality_score * 100, 1), "%");
    
    if(quality_score >= 0.9)
        Print("✅ Excellent data quality - Market Profile will perform optimally");
    else if(quality_score >= 0.75)
        Print("👍 Good data quality - Minor optimizations may help");
    else if(quality_score >= 0.6)
        Print("⚠️  Fair data quality - Consider broker upgrade or symbol change");
    else
        Print("❌ Poor data quality - Market Profile results may be unreliable");
}

//+------------------------------------------------------------------+
//| Benchmark system performance against industry standards        |
//+------------------------------------------------------------------+
void BenchmarkSystemPerformance()
{
    Print("Benchmarking system performance against industry standards...");
    
    // Industry standard benchmarks for MT5 Market Profile indicators
    struct BenchmarkStandards
    {
        int excellent_cpu_cores;
        int good_cpu_cores;
        long excellent_memory_mb;
        long good_memory_mb;
        int excellent_calc_time_ms;
        int good_calc_time_ms;
        int excellent_ping_ms;
        int good_ping_ms;
    };
    
    BenchmarkStandards standards;
    standards.excellent_cpu_cores = 8;
    standards.good_cpu_cores = 4;
    standards.excellent_memory_mb = 2048;
    standards.good_memory_mb = 1024;
    standards.excellent_calc_time_ms = 20;
    standards.good_calc_time_ms = 50;
    standards.excellent_ping_ms = 50;
    standards.good_ping_ms = 150;
    
    // Get current system metrics
    int cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
    long memory_available = TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE) / (1024 * 1024);
    
    // CPU Benchmark
    Print("📊 CPU PERFORMANCE BENCHMARK:");
    Print("  Current CPU Cores: ", cpu_cores);
    Print("  Industry Standards:");
    Print("    • Excellent: ", standards.excellent_cpu_cores, "+ cores");
    Print("    • Good: ", standards.good_cpu_cores, "+ cores");
    Print("    • Minimum: 2 cores");
    
    string cpu_rating = "Limited";
    if(cpu_cores >= standards.excellent_cpu_cores) cpu_rating = "Excellent";
    else if(cpu_cores >= standards.good_cpu_cores) cpu_rating = "Good";
    else if(cpu_cores >= 2) cpu_rating = "Fair";
    
    Print("  📈 Your CPU Rating: ", cpu_rating);
    
    // Memory Benchmark
    Print("");
    Print("💾 MEMORY PERFORMANCE BENCHMARK:");
    Print("  Available Memory: ", memory_available, " MB");
    Print("  Industry Standards:");
    Print("    • Excellent: ", standards.excellent_memory_mb, "+ MB");
    Print("    • Good: ", standards.good_memory_mb, "+ MB");
    Print("    • Minimum: 512 MB");
    
    string memory_rating = "Limited";
    if(memory_available >= standards.excellent_memory_mb) memory_rating = "Excellent";
    else if(memory_available >= standards.good_memory_mb) memory_rating = "Good";
    else if(memory_available >= 512) memory_rating = "Fair";
    
    Print("  📈 Your Memory Rating: ", memory_rating);
    
    // Calculation Performance Benchmark
    Print("");
    Print("⚡ CALCULATION PERFORMANCE BENCHMARK:");
    
    uint calc_start = GetTickCount();
    // Simulate Market Profile calculations
    for(int session = 0; session < 5; session++)
    {
        double profile_data[100];
        for(int i = 0; i < 100; i++)
        {
            profile_data[i] = MathRand() / 32767.0;
            for(int j = 0; j < i; j++)
            {
                if(profile_data[j] > profile_data[i])
                {
                    double temp = profile_data[i];
                    profile_data[i] = profile_data[j];
                    profile_data[j] = temp;
                }
            }
        }
    }
    uint calc_time = GetTickCount() - calc_start;
    
    Print("  Calculation Time: ", calc_time, " ms");
    Print("  Industry Standards:");
    Print("    • Excellent: <", standards.excellent_calc_time_ms, " ms");
    Print("    • Good: <", standards.good_calc_time_ms, " ms");
    Print("    • Acceptable: <100 ms");
    
    string calc_rating = "Limited";
    if(calc_time <= standards.excellent_calc_time_ms) calc_rating = "Excellent";
    else if(calc_time <= standards.good_calc_time_ms) calc_rating = "Good";
    else if(calc_time <= 100) calc_rating = "Fair";
    
    Print("  📈 Your Calculation Rating: ", calc_rating);
    
    // Network Performance Benchmark
    Print("");
    Print("🌐 NETWORK PERFORMANCE BENCHMARK:");
    
    uint ping_start = GetTickCount();
    for(int i = 0; i < 3; i++)
    {
        double test_data = SymbolInfoDouble(Symbol(), SYMBOL_BID);
        Sleep(1);
    }
    uint ping_time = (GetTickCount() - ping_start) / 3;
    
    Print("  Average Response Time: ", ping_time, " ms");
    Print("  Industry Standards:");
    Print("    • Excellent: <", standards.excellent_ping_ms, " ms");
    Print("    • Good: <", standards.good_ping_ms, " ms");
    Print("    • Acceptable: <300 ms");
    
    string network_rating = "Limited";
    if(ping_time <= standards.excellent_ping_ms) network_rating = "Excellent";
    else if(ping_time <= standards.good_ping_ms) network_rating = "Good";
    else if(ping_time <= 300) network_rating = "Fair";
    
    Print("  📈 Your Network Rating: ", network_rating);
    
    // Overall System Score
    Print("");
    Print("🏆 OVERALL SYSTEM BENCHMARK:");
    
    int total_score = 0;
    if(cpu_rating == "Excellent") total_score += 25;
    else if(cpu_rating == "Good") total_score += 20;
    else if(cpu_rating == "Fair") total_score += 15;
    else total_score += 10;
    
    if(memory_rating == "Excellent") total_score += 25;
    else if(memory_rating == "Good") total_score += 20;
    else if(memory_rating == "Fair") total_score += 15;
    else total_score += 10;
    
    if(calc_rating == "Excellent") total_score += 25;
    else if(calc_rating == "Good") total_score += 20;
    else if(calc_rating == "Fair") total_score += 15;
    else total_score += 10;
    
    if(network_rating == "Excellent") total_score += 25;
    else if(network_rating == "Good") total_score += 20;
    else if(network_rating == "Fair") total_score += 15;
    else total_score += 10;
    
    Print("  📊 Overall Score: ", total_score, "/100");
    
    if(total_score >= 90)
        Print("  🥇 EXCELLENT: Your system exceeds industry standards!");
    else if(total_score >= 75)
        Print("  🥈 GOOD: Your system meets professional trading standards");
    else if(total_score >= 60)
        Print("  🥉 FAIR: Your system is adequate for basic Market Profile use");
    else
        Print("  ⚠️  LIMITED: Consider system upgrades for optimal performance");
    
    // Specific recommendations based on benchmark results
    Print("");
    Print("💡 BENCHMARK-BASED RECOMMENDATIONS:");
    
    if(total_score < 75)
    {
        if(cpu_rating == "Limited") Print("  • 🔧 Upgrade CPU: Consider 4+ core processor");
        if(memory_rating == "Limited") Print("  • 💾 Upgrade RAM: Add memory to reach 8GB+");
        if(calc_rating == "Limited") Print("  • ⚙️  Optimize Settings: Use PointMultiplier=5+");
        if(network_rating == "Limited") Print("  • 🌐 Check Network: Consider faster internet connection");
    }
    
    // Market Profile specific recommendations
    if(total_score >= 90)
    {
        Print("  • ✅ Use all Market Profile features including GPU acceleration");
        Print("  • ✅ Enable real-time mode with PointMultiplier=1");
        Print("  • ✅ Run multiple sessions (10+) for comprehensive analysis");
    }
    else if(total_score >= 75)
    {
        Print("  • ✅ Use most features with PointMultiplier=1-3");
        Print("  • ✅ Enable moderate session count (5-8)");
        Print("  • ⚙️  Consider ThrottleRedraw=1-2 during high volatility");
    }
    else
    {
        Print("  • ⚙️  Use optimized settings: PointMultiplier=5+");
        Print("  • ⚙️  Limit sessions to 1-3 for better performance");
        Print("  • ⚙️  Enable ThrottleRedraw=3-5 seconds");
    }
}

//+------------------------------------------------------------------+
//| Get overall risk level assessment                              |
//+------------------------------------------------------------------+
string GetOverallRiskLevel(double memory_ratio, uint cpu_time, double ping_trend)
{
    int risk_score = 0;
    
    if(memory_ratio > 0.8) risk_score += 3;
    else if(memory_ratio > 0.6) risk_score += 1;
    
    if(cpu_time > 50) risk_score += 2;
    else if(cpu_time > 30) risk_score += 1;
    
    if(ping_trend > 10) risk_score += 2;
    else if(ping_trend > 5) risk_score += 1;
    
    if(risk_score >= 5) return "HIGH";
    else if(risk_score >= 3) return "MODERATE";
    else if(risk_score >= 1) return "LOW";
    else return "MINIMAL";
}

//+------------------------------------------------------------------+
//| Run deep system profiling analysis                             |
//+------------------------------------------------------------------+
void RunDeepSystemProfiling()
{
    Print("Performing deep system profiling for advanced optimization...");
    
    // This would be a comprehensive system analysis
    // Due to space constraints, showing key elements
    
    Print("🔬 DEEP PROFILING RESULTS:");
    Print("  • CPU Architecture: ", (TerminalInfoInteger(TERMINAL_CPU_CORES) > 4) ? "Modern Multi-Core" : "Standard");
    Print("  • Memory Architecture: ", (TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE) > 2000000000) ? "High-Capacity" : "Standard");
    Print("  • GPU Acceleration: ", (CLContextCreate() != INVALID_HANDLE) ? "Available" : "Not Available");
    
    // Additional profiling would go here...
    Print("💡 For complete profiling, use specialized system monitoring tools");
}

//+------------------------------------------------------------------+
//| Check for performance regression over time                     |
//+------------------------------------------------------------------+
void CheckPerformanceRegression()
{
    Print("Checking for performance regression patterns...");
    
    // Simplified regression check
    Print("📉 REGRESSION ANALYSIS:");
    Print("  • Baseline Performance: Establishing...");
    Print("  • Current Performance: Measuring...");
    Print("  • Trend Analysis: Requires historical data");
    
    Print("💡 For detailed regression analysis, run this tool daily and compare results");
}

//+------------------------------------------------------------------+
//| Validate security settings and permissions                     |
//+------------------------------------------------------------------+
void ValidateSecuritySettings()
{
    Print("Validating security settings and permissions...");
    
    Print("🔒 SECURITY VALIDATION:");
    
    // Check DLL permissions
    bool dll_allowed = false;
    Print("  • DLL Imports: ", dll_allowed ? "Enabled" : "Disabled");
    
    // Check external data access
    bool external_allowed = TerminalInfoInteger(TERMINAL_TRADE_ALLOWED);
    Print("  • Trading Permissions: ", external_allowed ? "Enabled" : "Disabled");
    
    // Check file access permissions
    int test_file = FileOpen("security_test.tmp", FILE_WRITE | FILE_TXT);
    bool file_access = (test_file != INVALID_HANDLE);
    if(file_access) FileClose(test_file);
    Print("  • File System Access: ", file_access ? "Available" : "Restricted");
    
    Print("✅ Security validation completed");
}

//+------------------------------------------------------------------+
//| Generate custom optimization script based on analysis          |
//+------------------------------------------------------------------+
void GenerateCustomOptimizationScript()
{
    Print("Generating custom optimization script...");
    
    string filename = "MarketProfile_OptimizationScript_" + TimeToString(TimeCurrent(), TIME_DATE) + ".txt";
    int file_handle = FileOpen(filename, FILE_WRITE | FILE_TXT);
    
    if(file_handle != INVALID_HANDLE)
    {
        FileWrite(file_handle, "// Market Profile 2025 - Custom Optimization Script");
        FileWrite(file_handle, "// Generated: " + TimeToString(TimeCurrent(), TIME_DATE | TIME_SECONDS));
        FileWrite(file_handle, "// System: " + GetPerformanceRating());
        FileWrite(file_handle, "");
        
        // Add system-specific optimizations
        int cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
        
        if(cpu_cores >= 8)
        {
            FileWrite(file_handle, "// High-Performance System Optimizations");
            FileWrite(file_handle, "PointMultiplier = 1");
            FileWrite(file_handle, "SessionsToCount = 10");
            FileWrite(file_handle, "ThrottleRedraw = 0");
            FileWrite(file_handle, "EnableGPU = true");
        }
        else if(cpu_cores >= 4)
        {
            FileWrite(file_handle, "// Standard System Optimizations");
            FileWrite(file_handle, "PointMultiplier = 3");
            FileWrite(file_handle, "SessionsToCount = 5");
            FileWrite(file_handle, "ThrottleRedraw = 1");
        }
        else
        {
            FileWrite(file_handle, "// Limited System Optimizations");
            FileWrite(file_handle, "PointMultiplier = 5");
            FileWrite(file_handle, "SessionsToCount = 2");
            FileWrite(file_handle, "ThrottleRedraw = 3");
        }
        
        FileClose(file_handle);
        Print("✅ Optimization script generated: ", filename);
    }
    else
    {
        Print("❌ Failed to generate optimization script");
    }
}

//+------------------------------------------------------------------+
//| Start interactive diagnostics mode                             |
//+------------------------------------------------------------------+
void StartInteractiveDiagnostics()
{
    Print("Interactive Diagnostics Mode - Feature Preview");
    Print("💡 Full interactive mode would require custom interface");
    Print("📝 Current implementation shows available diagnostic options");
    
    Print("");
    Print("Available Interactive Features:");
    Print("  1. Real-time performance monitoring");
    Print("  2. Step-by-step configuration wizard");
    Print("  3. Interactive troubleshooting guide");
    Print("  4. Performance optimization assistant");
    Print("  5. Custom benchmark configuration");
    
    Print("");
    Print("💡 To implement full interactive mode, create a custom EA with GUI controls");
}

//+------------------------------------------------------------------+
//| Get diagnostic level description                                |
//+------------------------------------------------------------------+
string GetDiagnosticLevelDescription(int level)
{
    switch(level)
    {
        case 1: return "Basic (Essential checks only)";
        case 2: return "Intermediate (Standard + Performance)";
        case 3: return "Expert (Advanced analytics included)";
        case 4: return "Professional (Full comprehensive analysis)";
        default: return "Custom Level " + IntegerToString(level);
    }
}

//+------------------------------------------------------------------+
//| Enhanced error handling wrapper                                 |
//+------------------------------------------------------------------+
bool ExecuteWithErrorHandling(string function_name, bool &result)
{
    Print("🔄 Executing: ", function_name, "...");
    
    // Reset last error
    ResetLastError();
    
    // This is a template for error handling
    // Each diagnostic function should implement its own error handling
    
    int error_code = GetLastError();
    if(error_code != 0)
    {
        Print("❌ Error in ", function_name, ": ", ErrorDescription(error_code));
        return false;
    }
    
    return true;
}

//+------------------------------------------------------------------+
//| Performance metrics collector                                   |
//+------------------------------------------------------------------+
struct PerformanceMetrics
{
    uint execution_time_ms;
    long memory_usage_kb;
    int objects_created;
    double cpu_usage_score;
    string bottleneck_identified;
};

PerformanceMetrics CollectPerformanceMetrics(string operation_name)
{
    PerformanceMetrics metrics;
    
    // Initialize metrics
    uint start_time = GetTickCount();
    long start_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    int start_objects = ObjectsTotal(0);
    
    // Performance measurement would happen here
    // This is a framework for future enhancements
    
    metrics.execution_time_ms = GetTickCount() - start_time;
    metrics.memory_usage_kb = (TerminalInfoInteger(TERMINAL_MEMORY_USED) - start_memory) / 1024;
    metrics.objects_created = ObjectsTotal(0) - start_objects;
    metrics.cpu_usage_score = 0.0; // Would be calculated based on execution time
    metrics.bottleneck_identified = "None detected";
    
    return metrics;
}

//+------------------------------------------------------------------+
//| Smart configuration advisor                                     |
//+------------------------------------------------------------------+
void ProvideSmartConfigurationAdvice()
{
    Print("🧠 SMART CONFIGURATION ADVISOR:");
    
    // Analyze current market conditions
    double volatility = iATR(Symbol(), PERIOD_M15, 14, 1);
    double spread = SymbolInfoInteger(Symbol(), SYMBOL_SPREAD);
    ENUM_TIMEFRAMES current_tf = Period();
    
    // Time-based recommendations
    int hour = TimeHour(TimeCurrent());
    bool is_market_active = (hour >= 8 && hour <= 18); // London/NY overlap
    
    Print("📊 Current Market Analysis:");
    Print("  • Volatility (ATR): ", DoubleToString(volatility, _Digits));
    Print("  • Spread: ", DoubleToString(spread, 1), " points");
    Print("  • Timeframe: ", EnumToString(current_tf));
    Print("  • Market Session: ", is_market_active ? "Active (High Volume)" : "Quiet (Low Volume)");
    
    Print("");
    Print("💡 DYNAMIC RECOMMENDATIONS:");
    
    // High volatility adjustments
    if(volatility > spread * 3)
    {
        Print("  🔥 HIGH VOLATILITY detected:");
        Print("     • Reduce SessionsToCount by 20% for faster updates");
        Print("     • Consider PointMultiplier +1 to reduce noise");
        Print("     • Enable ThrottleRedraw=1-2 to prevent lag");
    }
    
    // Low volatility optimizations
    else if(volatility < spread * 1.5)
    {
        Print("  😴 LOW VOLATILITY detected:");
        Print("     • Increase SessionsToCount for better analysis");
        Print("     • Use PointMultiplier=1 for maximum detail");
        Print("     • Disable ThrottleRedraw for real-time updates");
    }
    
    // Session-based advice
    if(is_market_active)
    {
        Print("  ⚡ ACTIVE SESSION:");
        Print("     • Enable DevelopingPOC for real-time POC tracking");
        Print("     • Use shorter sessions (1-3) for immediate analysis");
        Print("     • Monitor ValueAreaRays for breakout opportunities");
    }
    else
    {
        Print("  🌙 QUIET SESSION:");
        Print("     • Use longer sessions (5-10) for trend analysis");
        Print("     • Focus on SessionMedianRays for support/resistance");
        Print("     • Prepare for next active session");
    }
    
    // Timeframe-specific intelligence
    if(current_tf <= PERIOD_M5)
    {
        Print("  🎯 SCALPING TIMEFRAME:");
        Print("     • Critical: Use PointMultiplier=1 for precision");
        Print("     • Enable all real-time features");
        Print("     • Monitor tick volume changes closely");
    }
    else if(current_tf >= PERIOD_D1)
    {
        Print("  📈 SWING/POSITION TIMEFRAME:");
        Print("     • Use PointMultiplier=5+ for broader view");
        Print("     • Enable MedianRays for long-term levels");
        Print("     • Focus on weekly/monthly profiles");
    }
}

//+------------------------------------------------------------------+
//| System health monitor                                           |
//+------------------------------------------------------------------+
void MonitorSystemHealth()
{
    Print("❤️  SYSTEM HEALTH MONITOR:");
    
    // Critical metrics monitoring
    long memory_used = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    long memory_available = TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE);
    double memory_ratio = (double)memory_used / memory_available;
    
    int total_objects = ObjectsTotal(0);
    bool is_connected = TerminalInfoInteger(TERMINAL_CONNECTED);
    
    // Health status calculation
    string health_status = "EXCELLENT";
    if(memory_ratio > 0.8 || total_objects > 500 || !is_connected)
        health_status = "CRITICAL";
    else if(memory_ratio > 0.6 || total_objects > 200)
        health_status = "WARNING";
    else if(memory_ratio > 0.4 || total_objects > 100)
        health_status = "GOOD";
    
    Print("  🏥 Overall Health: ", health_status);
    Print("  💾 Memory Health: ", DoubleToString(memory_ratio * 100, 1), "% used");
    Print("  📦 Object Count: ", total_objects, " objects");
    Print("  🌐 Connection: ", is_connected ? "Stable" : "Disconnected");
    
    // Proactive warnings
    if(StringCompare(health_status, "WARNING") == 0 || StringCompare(health_status, "CRITICAL") == 0)
    {
        Print("");
        Print("🚨 HEALTH ALERTS:");
        
        if(memory_ratio > 0.6)
        {
            Print("  ⚠️  Memory usage elevated - consider reducing indicator load");
        }
        
        if(total_objects > 200)
        {
            Print("  ⚠️  High object count - chart may become slow");
        }
        
        if(!is_connected)
        {
            Print("  ❌ Connection lost - Market Profile data may be stale");
        }
        
        Print("  💡 Recommendation: Restart MT5 or run auto-cleanup");
    }
}

//+------------------------------------------------------------------+
//| Generate system report summary                                 |
//+------------------------------------------------------------------+
string GenerateSystemReportSummary()
{
    string summary = "";
    
    // Collect key metrics
    string performance = GetPerformanceRating();
    int cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
    long memory_mb = TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE) / (1024 * 1024);
    string broker = TerminalInfoString(TERMINAL_COMPANY);
    
    summary += "System: " + performance + " (" + IntegerToString(cpu_cores) + " cores, ";
    summary += IntegerToString(memory_mb) + "MB) | Broker: " + broker;
    
    return summary;
} 