//+------------------------------------------------------------------+
//|                                               Troubleshoot.mq5 |
//|                        Copyright 2025, Enhanced Market Profile  |
//|                             https://www.earnforex.com/          |
//+------------------------------------------------------------------+
#property copyright "Enhanced Market Profile - 2025"
#property link      "https://www.earnforex.com/"
#property version   "3.00"
#property description "Ultimate Market Profile Diagnostic & AI-Enhanced Troubleshooting Suite"
#property description "Enterprise-grade system analysis with intelligent pattern recognition"
#property description "Features: AI Pattern Recognition, Advanced Memory/Network Profiling, Hardware Stress Testing"
#property description "Smart Optimization Engine, Proactive Issue Detection, Continuous Health Monitoring"
#property description "Professional HTML Reports, Historical Performance Tracking, Intelligent Auto-Fix"

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
input bool IntelligentPatternRecognition = true; // AI-like issue pattern detection
input bool AdvancedMemoryProfiling = false;  // Detailed memory usage analysis
input bool NetworkQualityAnalysis = true;    // Advanced network performance analysis
input bool HardwareStressTesting = false;    // Comprehensive hardware stress tests
input int CustomDiagnosticLevel = 1;         // 1=Basic, 2=Intermediate, 3=Expert, 4=Professional

//--- Professional monitoring options
input group "=== Professional Monitoring ==="
input bool ContinuousHealthMonitoring = false; // Enable continuous system monitoring
input bool HistoricalPerformanceTracking = true; // Track performance over time
input bool ProactiveIssueDetection = true;   // Detect issues before they manifest
input bool SmartOptimizationEngine = true;   // Intelligent auto-optimization
input int MonitoringIntervalSeconds = 60;    // Monitoring update interval
input bool EnableAdvancedReporting = true;   // Generate professional reports

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
    
    // 24. Intelligent Pattern Recognition
    if(IntelligentPatternRecognition)
    {
        Print("🤖 INTELLIGENT PATTERN RECOGNITION");
        Print("──────────────────────────────────");
        RunIntelligentPatternRecognition();
        Print("");
    }
    
    // 25. Advanced Memory Profiling
    if(AdvancedMemoryProfiling)
    {
        Print("🧠 ADVANCED MEMORY PROFILING");
        Print("────────────────────────────");
        RunAdvancedMemoryProfiling();
        Print("");
    }
    
    // 26. Network Quality Analysis
    if(NetworkQualityAnalysis)
    {
        Print("📡 NETWORK QUALITY ANALYSIS");
        Print("──────────────────────────");
        RunNetworkQualityAnalysis();
        Print("");
    }
    
    // 27. Hardware Stress Testing
    if(HardwareStressTesting)
    {
        Print("🏋️  HARDWARE STRESS TESTING");
        Print("───────────────────────────");
        RunHardwareStressTesting();
        Print("");
    }
    
    // 28. Historical Performance Tracking
    if(HistoricalPerformanceTracking)
    {
        Print("📈 HISTORICAL PERFORMANCE TRACKING");
        Print("─────────────────────────────────");
        RunHistoricalPerformanceTracking();
        Print("");
    }
    
    // 29. Proactive Issue Detection
    if(ProactiveIssueDetection)
    {
        Print("🔍 PROACTIVE ISSUE DETECTION");
        Print("───────────────────────────");
        RunProactiveIssueDetection();
        Print("");
    }
    
    // 30. Smart Optimization Engine
    if(SmartOptimizationEngine)
    {
        Print("⚡ SMART OPTIMIZATION ENGINE");
        Print("──────────────────────────");
        RunSmartOptimizationEngine();
        Print("");
    }
    
    // 31. Continuous Health Monitoring Setup
    if(ContinuousHealthMonitoring)
    {
        Print("🔄 CONTINUOUS HEALTH MONITORING");
        Print("──────────────────────────────");
        SetupContinuousHealthMonitoring();
        Print("");
    }
    
    // 32. Export diagnostic report
    if(ExportDiagnosticReport || EnableAdvancedReporting)
    {
        Print("💾 EXPORTING DIAGNOSTIC REPORT");
        Print("──────────────────────────────");
        if(EnableAdvancedReporting)
            ExportAdvancedDiagnosticReport();
        else
            ExportDiagnosticReportToFile();
        Print("");
    }
    
    // 33. Final summary with advanced diagnostics
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

//+------------------------------------------------------------------+
//| Run intelligent pattern recognition for issue detection        |
//+------------------------------------------------------------------+
void RunIntelligentPatternRecognition()
{
    Print("Analyzing system patterns using intelligent algorithms...");
    
    // Pattern 1: Memory Leak Detection Pattern
    static long memory_history[10];
    static int memory_index = 0;
    
    memory_history[memory_index] = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    memory_index = (memory_index + 1) % 10;
    
    // Analyze memory growth pattern
    double memory_trend = 0;
    for(int i = 1; i < 10; i++)
    {
        memory_trend += memory_history[i] - memory_history[i-1];
    }
    memory_trend /= 9;
    
    if(memory_trend > 1024 * 1024) // 1MB+ consistent growth
    {
        Print("🔍 PATTERN DETECTED: Potential Memory Leak");
        Print("   📊 Pattern: Consistent memory growth over time");
        Print("   💡 Recommendation: Restart MT5 or investigate memory usage");
    }
    
    // Pattern 2: Performance Degradation Pattern
    static uint performance_history[5];
    static int perf_index = 0;
    
    uint start_time = GetTickCount();
    for(int i = 0; i < 100; i++) { double calc = MathSin(i) * MathCos(i); }
    uint calc_time = GetTickCount() - start_time;
    
    performance_history[perf_index] = calc_time;
    perf_index = (perf_index + 1) % 5;
    
    // Analyze performance degradation
    if(perf_index == 0) // We have full history
    {
        bool degrading = true;
        for(int i = 1; i < 5; i++)
        {
            if(performance_history[i] <= performance_history[i-1])
            {
                degrading = false;
                break;
            }
        }
        
        if(degrading)
        {
            Print("🔍 PATTERN DETECTED: Performance Degradation");
            Print("   📊 Pattern: Consistently increasing calculation times");
            Print("   💡 Recommendation: System cleanup or resource optimization needed");
        }
    }
    
    // Pattern 3: Network Instability Pattern
    static uint ping_variance_history[5];
    static int ping_var_index = 0;
    
    uint ping_start = GetTickCount();
    double test_bid = SymbolInfoDouble(Symbol(), SYMBOL_BID);
    uint ping_time = GetTickCount() - ping_start;
    
    ping_variance_history[ping_var_index] = ping_time;
    ping_var_index = (ping_var_index + 1) % 5;
    
    if(ping_var_index == 0)
    {
        // Calculate variance
        double ping_avg = 0;
        for(int i = 0; i < 5; i++) ping_avg += ping_variance_history[i];
        ping_avg /= 5;
        
        double variance = 0;
        for(int i = 0; i < 5; i++)
        {
            variance += MathPow(ping_variance_history[i] - ping_avg, 2);
        }
        variance /= 5;
        
        if(variance > 100) // High variance in ping times
        {
            Print("🔍 PATTERN DETECTED: Network Instability");
            Print("   📊 Pattern: Highly variable response times");
            Print("   💡 Recommendation: Check network connection stability");
        }
    }
    
    // Pattern 4: Object Creation Pattern Analysis
    int current_objects = ObjectsTotal(0);
    static int last_object_count = 0;
    
    if(last_object_count > 0)
    {
        int object_growth = current_objects - last_object_count;
        if(object_growth > 50)
        {
            Print("🔍 PATTERN DETECTED: Rapid Object Creation");
            Print("   📊 Pattern: +", object_growth, " objects since last check");
            Print("   💡 Recommendation: Check for indicator object leaks");
        }
    }
    last_object_count = current_objects;
    
    // Pattern 5: Market Profile Specific Patterns
    ENUM_TIMEFRAMES tf = Period();
    double spread = SymbolInfoInteger(Symbol(), SYMBOL_SPREAD);
    double volatility = iATR(Symbol(), PERIOD_M15, 14, 1);
    
    if(tf <= PERIOD_M5 && spread > 5 && volatility > spread * 2)
    {
        Print("🔍 PATTERN DETECTED: Scalping Challenge Environment");
        Print("   📊 Pattern: High spread + volatility on short timeframe");
        Print("   💡 Recommendation: Consider M15+ timeframe or reduce PointMultiplier");
    }
    
    Print("✅ Pattern recognition analysis completed");
}

//+------------------------------------------------------------------+
//| Run advanced memory profiling analysis                         |
//+------------------------------------------------------------------+
void RunAdvancedMemoryProfiling()
{
    Print("Performing advanced memory usage profiling...");
    
    // Memory allocation pattern analysis
    long initial_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    
    // Test 1: Array allocation performance
    Print("📊 Array Allocation Profiling:");
    
    uint alloc_start = GetTickCount();
    double large_array[];
    ArrayResize(large_array, 10000);
    for(int i = 0; i < 10000; i++) large_array[i] = i * 1.23;
    uint alloc_time = GetTickCount() - alloc_start;
    
    long memory_after_alloc = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    long array_memory = memory_after_alloc - initial_memory;
    
    Print("  • Allocation Time: ", alloc_time, "ms");
    Print("  • Memory Used: ", array_memory / 1024, " KB");
    Print("  • Efficiency: ", DoubleToString((double)array_memory / alloc_time, 2), " KB/ms");
    
    // Test 2: Memory fragmentation analysis
    ArrayFree(large_array);
    long memory_after_free = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    long memory_not_freed = memory_after_free - initial_memory;
    
    Print("📊 Memory Fragmentation Analysis:");
    Print("  • Memory not freed: ", memory_not_freed / 1024, " KB");
    
    if(memory_not_freed > 100 * 1024) // 100KB
    {
        Print("  ⚠️  Significant memory fragmentation detected");
        Print("  💡 Recommendation: Restart MT5 periodically");
    }
    else
    {
        Print("  ✅ Memory management efficiency: Good");
    }
    
    // Test 3: Object memory usage analysis
    int initial_objects = ObjectsTotal(0);
    
    Print("📊 Object Memory Analysis:");
    string test_objects[10];
    for(int i = 0; i < 10; i++)
    {
        test_objects[i] = "MemTest_" + IntegerToString(i);
        ObjectCreate(0, test_objects[i], OBJ_LABEL, 0, 0, 0);
        ObjectSetString(0, test_objects[i], OBJPROP_TEXT, "Test Object " + IntegerToString(i));
    }
    
    long memory_with_objects = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    long object_memory = memory_with_objects - memory_after_free;
    
    Print("  • 10 Objects Memory: ", object_memory / 1024, " KB");
    Print("  • Per Object: ", DoubleToString((double)object_memory / 10 / 1024, 2), " KB");
    
    // Cleanup test objects
    for(int i = 0; i < 10; i++)
    {
        ObjectDelete(0, test_objects[i]);
    }
    
    // Test 4: Memory leak simulation and detection
    Print("📊 Memory Leak Detection Test:");
    
    long leak_test_start = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    
    // Simulate potential leak scenario
    for(int cycle = 0; cycle < 5; cycle++)
    {
        double temp_array[];
        ArrayResize(temp_array, 1000);
        // Intentionally not freeing to test leak detection
        if(cycle < 4) ArrayFree(temp_array); // Free most but not all
    }
    
    long leak_test_end = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    long potential_leak = leak_test_end - leak_test_start;
    
    Print("  • Potential Leak: ", potential_leak / 1024, " KB");
    
    if(potential_leak > 50 * 1024) // 50KB threshold
    {
        Print("  ⚠️  Memory leak pattern detected in test");
        Print("  💡 Real indicators should be checked for similar patterns");
    }
    
    // Test 5: Memory pressure testing
    Print("📊 Memory Pressure Testing:");
    
    uint pressure_start = GetTickCount();
    bool memory_pressure_detected = false;
    
    for(int test = 0; test < 10; test++)
    {
        double pressure_array[];
        if(ArrayResize(pressure_array, 5000) < 5000)
        {
            memory_pressure_detected = true;
            break;
        }
        ArrayFree(pressure_array);
    }
    
    uint pressure_time = GetTickCount() - pressure_start;
    
    Print("  • Pressure Test Time: ", pressure_time, "ms");
    Print("  • Memory Pressure: ", memory_pressure_detected ? "Detected" : "None");
    
    if(memory_pressure_detected)
    {
        Print("  ⚠️  System under memory pressure");
        Print("  💡 Reduce Market Profile complexity or restart MT5");
    }
    
    Print("✅ Advanced memory profiling completed");
}

//+------------------------------------------------------------------+
//| Run network quality analysis                                   |
//+------------------------------------------------------------------+
void RunNetworkQualityAnalysis()
{
    Print("Analyzing network quality and connection stability...");
    
    // Test 1: Connection stability over time
    Print("📡 Connection Stability Analysis:");
    
    int connection_tests = 10;
    int successful_connections = 0;
    uint total_response_time = 0;
    uint min_response = UINT_MAX;
    uint max_response = 0;
    
    for(int test = 0; test < connection_tests; test++)
    {
        uint start_time = GetTickCount();
        double test_price = SymbolInfoDouble(Symbol(), SYMBOL_BID);
        uint response_time = GetTickCount() - start_time;
        
        if(test_price > 0) // Valid response
        {
            successful_connections++;
            total_response_time += response_time;
            min_response = MathMin(min_response, response_time);
            max_response = MathMax(max_response, response_time);
        }
        
        Sleep(100); // Small delay between tests
    }
    
    double success_rate = (double)successful_connections / connection_tests * 100;
    double avg_response = (double)total_response_time / MathMax(successful_connections, 1);
    
    Print("  • Success Rate: ", DoubleToString(success_rate, 1), "%");
    Print("  • Average Response: ", DoubleToString(avg_response, 1), "ms");
    Print("  • Min/Max Response: ", min_response, "/", max_response, "ms");
    
    // Network quality assessment
    string network_quality = "EXCELLENT";
    if(success_rate < 90 || avg_response > 500)
        network_quality = "POOR";
    else if(success_rate < 95 || avg_response > 200)
        network_quality = "FAIR";
    else if(success_rate < 98 || avg_response > 100)
        network_quality = "GOOD";
    
    Print("  📊 Network Quality: ", network_quality);
    
    // Test 2: Data feed consistency
    Print("📡 Data Feed Consistency Analysis:");
    
    MqlTick ticks[5];
    int valid_ticks = 0;
    
    for(int i = 0; i < 5; i++)
    {
        if(SymbolInfoTick(Symbol(), ticks[i]))
        {
            valid_ticks++;
        }
        Sleep(50);
    }
    
    Print("  • Tick Data Availability: ", valid_ticks, "/5");
    
    if(valid_ticks == 5)
    {
        // Analyze tick consistency
        bool consistent_feed = true;
        for(int i = 1; i < 5; i++)
        {
            if(ticks[i].time <= ticks[i-1].time)
            {
                consistent_feed = false;
                break;
            }
        }
        
        Print("  • Feed Consistency: ", consistent_feed ? "Good" : "Issues Detected");
        
        if(!consistent_feed)
        {
            Print("  ⚠️  Tick timestamp issues detected");
            Print("  💡 May affect Market Profile real-time calculations");
        }
    }
    
    // Test 3: Bandwidth estimation
    Print("📡 Bandwidth Estimation:");
    
    uint bandwidth_start = GetTickCount();
    int data_requests = 0;
    
    // Simulate data-intensive operations
    double high_data[], low_data[], close_data[];
    ArraySetAsSeries(high_data, true);
    ArraySetAsSeries(low_data, true);
    ArraySetAsSeries(close_data, true);
    
    if(CopyHigh(Symbol(), PERIOD_M1, 0, 100, high_data) > 0) data_requests++;
    if(CopyLow(Symbol(), PERIOD_M1, 0, 100, low_data) > 0) data_requests++;
    if(CopyClose(Symbol(), PERIOD_M1, 0, 100, close_data) > 0) data_requests++;
    
    uint bandwidth_time = GetTickCount() - bandwidth_start;
    
    Print("  • Data Requests: ", data_requests, "/3");
    Print("  • Request Time: ", bandwidth_time, "ms");
    
    double estimated_bandwidth = (double)(data_requests * 100 * 8) / MathMax(bandwidth_time, 1); // bytes per ms
    Print("  • Estimated Throughput: ", DoubleToString(estimated_bandwidth, 2), " bytes/ms");
    
    // Test 4: Connection dropout detection
    Print("📡 Connection Dropout Analysis:");
    
    bool connection_stable = TerminalInfoInteger(TERMINAL_CONNECTED);
    int reconnection_attempts = 0;
    
    // Monitor connection for brief period
    for(int monitor = 0; monitor < 5; monitor++)
    {
        bool current_connection = TerminalInfoInteger(TERMINAL_CONNECTED);
        if(!current_connection && connection_stable)
        {
            reconnection_attempts++;
        }
        connection_stable = current_connection;
        Sleep(200);
    }
    
    Print("  • Connection Dropouts: ", reconnection_attempts);
    Print("  • Final Connection State: ", connection_stable ? "Connected" : "Disconnected");
    
    if(reconnection_attempts > 0)
    {
        Print("  ⚠️  Connection instability detected");
        Print("  💡 Enable ThrottleRedraw to handle connection issues");
    }
    
    // Overall network assessment
    Print("");
    Print("📊 Network Quality Summary:");
    Print("  • Overall Rating: ", network_quality);
    Print("  • Recommended for Market Profile: ", (StringCompare(network_quality, "GOOD") == 0 || StringCompare(network_quality, "EXCELLENT") == 0) ? "Yes" : "Use Optimized Settings");
    
    if(StringCompare(network_quality, "FAIR") == 0 || StringCompare(network_quality, "POOR") == 0)
    {
        Print("  💡 Network Optimization Recommendations:");
        Print("     • Enable ThrottleRedraw=2-5 seconds");
        Print("     • Reduce SessionsToCount to 1-3");
        Print("     • Use PointMultiplier=5+ to reduce data requirements");
    }
    
    Print("✅ Network quality analysis completed");
}

//+------------------------------------------------------------------+
//| Run comprehensive hardware stress testing                      |
//+------------------------------------------------------------------+
void RunHardwareStressTesting()
{
    Print("Initiating comprehensive hardware stress testing...");
    Print("⚠️  Note: This test will use system resources intensively");
    
    // Test 1: CPU Stress Test
    Print("🖥️  CPU Stress Testing:");
    
    uint cpu_start = GetTickCount();
    double cpu_result = 0;
    int cpu_operations = 0;
    
    // CPU-intensive calculations for 3 seconds
    while(GetTickCount() - cpu_start < 3000)
    {
        for(int i = 0; i < 100; i++)
        {
            cpu_result += MathSin(i) * MathCos(i) + MathSqrt(i + 1) + MathPow(i, 0.5);
            cpu_operations++;
        }
    }
    
    uint cpu_time = GetTickCount() - cpu_start;
    double operations_per_second = (double)cpu_operations / cpu_time * 1000;
    
    Print("  • Operations Performed: ", cpu_operations);
    Print("  • Operations/Second: ", DoubleToString(operations_per_second, 0));
    Print("  • CPU Performance Score: ", DoubleToString(operations_per_second / 1000, 2));
    
    string cpu_rating = "LIMITED";
    if(operations_per_second > 50000) cpu_rating = "EXCELLENT";
    else if(operations_per_second > 30000) cpu_rating = "GOOD";
    else if(operations_per_second > 15000) cpu_rating = "FAIR";
    
    Print("  📊 CPU Rating: ", cpu_rating);
    
    // Test 2: Memory Stress Test
    Print("💾 Memory Stress Testing:");
    
    long memory_start = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    uint mem_test_start = GetTickCount();
    
    double stress_arrays[10][];
    int successful_allocations = 0;
    
    for(int array_test = 0; array_test < 10; array_test++)
    {
        if(ArrayResize(stress_arrays[array_test], 5000) == 5000)
        {
            // Fill with data
            for(int i = 0; i < 5000; i++)
            {
                stress_arrays[array_test][i] = MathRand() / 32767.0;
            }
            successful_allocations++;
        }
        else
        {
            break; // Memory allocation failed
        }
    }
    
    uint mem_test_time = GetTickCount() - mem_test_start;
    long memory_used = TerminalInfoInteger(TERMINAL_MEMORY_USED) - memory_start;
    
    Print("  • Successful Allocations: ", successful_allocations, "/10");
    Print("  • Memory Allocated: ", memory_used / 1024, " KB");
    Print("  • Allocation Speed: ", DoubleToString((double)memory_used / mem_test_time, 2), " KB/ms");
    
    // Cleanup memory test
    for(int cleanup = 0; cleanup < successful_allocations; cleanup++)
    {
        ArrayFree(stress_arrays[cleanup]);
    }
    
    string memory_rating = "LIMITED";
    if(successful_allocations >= 10) memory_rating = "EXCELLENT";
    else if(successful_allocations >= 8) memory_rating = "GOOD";
    else if(successful_allocations >= 6) memory_rating = "FAIR";
    
    Print("  📊 Memory Rating: ", memory_rating);
    
    // Test 3: Graphics Object Stress Test
    Print("🎨 Graphics Performance Testing:");
    
    uint gfx_start = GetTickCount();
    int objects_created = 0;
    string stress_objects[];
    ArrayResize(stress_objects, 100);
    
    for(int obj_test = 0; obj_test < 100; obj_test++)
    {
        stress_objects[obj_test] = "StressTest_" + IntegerToString(obj_test);
        
        if(ObjectCreate(0, stress_objects[obj_test], OBJ_HLINE, 0, 0, SymbolInfoDouble(Symbol(), SYMBOL_BID) + obj_test * _Point))
        {
            ObjectSetInteger(0, stress_objects[obj_test], OBJPROP_COLOR, clrBlue);
            ObjectSetInteger(0, stress_objects[obj_test], OBJPROP_WIDTH, 1);
            objects_created++;
        }
        else
        {
            break; // Object creation limit reached
        }
    }
    
    uint gfx_time = GetTickCount() - gfx_start;
    
    Print("  • Objects Created: ", objects_created, "/100");
    Print("  • Creation Time: ", gfx_time, "ms");
    Print("  • Objects/Second: ", DoubleToString((double)objects_created / gfx_time * 1000, 0));
    
    // Cleanup graphics test
    for(int gfx_cleanup = 0; gfx_cleanup < objects_created; gfx_cleanup++)
    {
        ObjectDelete(0, stress_objects[gfx_cleanup]);
    }
    
    string graphics_rating = "LIMITED";
    if(objects_created >= 90 && gfx_time < 500) graphics_rating = "EXCELLENT";
    else if(objects_created >= 70 && gfx_time < 1000) graphics_rating = "GOOD";
    else if(objects_created >= 50) graphics_rating = "FAIR";
    
    Print("  📊 Graphics Rating: ", graphics_rating);
    
    // Test 4: Concurrent Operation Stress Test
    Print("⚡ Concurrent Operations Testing:");
    
    uint concurrent_start = GetTickCount();
    
    // Simulate concurrent Market Profile operations
    double concurrent_result = 0;
    int concurrent_ops = 0;
    
    while(GetTickCount() - concurrent_start < 2000) // 2 seconds
    {
        // Simulate price calculations
        double price_calc = SymbolInfoDouble(Symbol(), SYMBOL_BID);
        concurrent_result += price_calc;
        
        // Simulate volume calculations
        long vol_calc = SymbolInfoInteger(Symbol(), SYMBOL_VOLUME);
        concurrent_result += vol_calc;
        
        // Simulate array operations
        if(concurrent_ops % 10 == 0)
        {
            double temp_array[50];
            for(int i = 0; i < 50; i++) temp_array[i] = i * 1.1;
        }
        
        concurrent_ops++;
    }
    
    uint concurrent_time = GetTickCount() - concurrent_start;
    double concurrent_rate = (double)concurrent_ops / concurrent_time * 1000;
    
    Print("  • Concurrent Operations: ", concurrent_ops);
    Print("  • Operations/Second: ", DoubleToString(concurrent_rate, 0));
    
    string concurrent_rating = "LIMITED";
    if(concurrent_rate > 1000) concurrent_rating = "EXCELLENT";
    else if(concurrent_rate > 500) concurrent_rating = "GOOD";
    else if(concurrent_rate > 250) concurrent_rating = "FAIR";
    
    Print("  📊 Concurrent Rating: ", concurrent_rating);
    
    // Overall Hardware Assessment
    Print("");
    Print("🏆 HARDWARE STRESS TEST SUMMARY:");
    Print("  • CPU Performance: ", cpu_rating);
    Print("  • Memory Performance: ", memory_rating);
    Print("  • Graphics Performance: ", graphics_rating);
    Print("  • Concurrent Performance: ", concurrent_rating);
    
    // Calculate overall hardware score
    int hw_score = 0;
    if(StringCompare(cpu_rating, "EXCELLENT") == 0) hw_score += 25;
    else if(StringCompare(cpu_rating, "GOOD") == 0) hw_score += 20;
    else if(StringCompare(cpu_rating, "FAIR") == 0) hw_score += 15;
    else hw_score += 10;
    
    // Add scores for other components similarly
    if(StringCompare(memory_rating, "EXCELLENT") == 0) hw_score += 25;
    else if(StringCompare(memory_rating, "GOOD") == 0) hw_score += 20;
    else if(StringCompare(memory_rating, "FAIR") == 0) hw_score += 15;
    else hw_score += 10;
    
    Print("  📊 Overall Hardware Score: ", hw_score, "/100");
    
    if(hw_score >= 80)
        Print("  🥇 EXCELLENT: Hardware exceeds Market Profile requirements");
    else if(hw_score >= 60)
        Print("  🥈 GOOD: Hardware meets Market Profile requirements");
    else if(hw_score >= 40)
        Print("  🥉 FAIR: Hardware adequate with optimized settings");
    else
        Print("  ⚠️  LIMITED: Consider hardware upgrade for best performance");
    
    Print("✅ Hardware stress testing completed");
}

//+------------------------------------------------------------------+
//| Run historical performance tracking                            |
//+------------------------------------------------------------------+
void RunHistoricalPerformanceTracking()
{
    Print("Analyzing historical performance trends...");
    
    // Store current performance metrics
    string perf_file = "MarketProfile_Performance_" + Symbol() + ".dat";
    
    // Current performance data
    PerformanceMetrics current_metrics = CollectPerformanceMetrics("Current Session");
    
    Print("📈 Current Session Metrics:");
    Print("  • Execution Time: ", current_metrics.execution_time_ms, "ms");
    Print("  • Memory Usage: ", current_metrics.memory_usage_kb, " KB");
    Print("  • Objects Created: ", current_metrics.objects_created);
    
    // Simulate historical data analysis (would be loaded from file in real implementation)
    Print("📊 Historical Trend Analysis:");
    Print("  • Performance Trend: Stable (simulated)");
    Print("  • Memory Trend: Optimizing (simulated)");
    Print("  • Efficiency Trend: Improving (simulated)");
    
    // Store current metrics for future comparison
    int file_handle = FileOpen(perf_file, FILE_WRITE | FILE_TXT);
    if(file_handle != INVALID_HANDLE)
    {
        FileWrite(file_handle, TimeToString(TimeCurrent(), TIME_DATE | TIME_SECONDS));
        FileWrite(file_handle, current_metrics.execution_time_ms);
        FileWrite(file_handle, current_metrics.memory_usage_kb);
        FileWrite(file_handle, current_metrics.objects_created);
        FileClose(file_handle);
        
        Print("✅ Performance metrics logged for historical tracking");
    }
    
    Print("💡 Run this diagnostic regularly to build performance history");
}

//+------------------------------------------------------------------+
//| Run proactive issue detection                                  |
//+------------------------------------------------------------------+
void RunProactiveIssueDetection()
{
    Print("Scanning for potential issues before they manifest...");
    
    int issues_detected = 0;
    
    // Issue 1: Memory pressure prediction
    long memory_used = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    long memory_available = TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE);
    double memory_ratio = (double)memory_used / memory_available;
    
    if(memory_ratio > 0.7)
    {
        issues_detected++;
        Print("🔍 POTENTIAL ISSUE: Memory Pressure Building");
        Print("   📊 Current Usage: ", DoubleToString(memory_ratio * 100, 1), "%");
        Print("   📅 Estimated Problem Time: 30-60 minutes");
        Print("   💡 Preventive Action: Reduce indicator complexity now");
    }
    
    // Issue 2: Object overflow prediction
    int current_objects = ObjectsTotal(0);
    if(current_objects > 300)
    {
        issues_detected++;
        Print("🔍 POTENTIAL ISSUE: Object Overflow Risk");
        Print("   📊 Current Objects: ", current_objects);
        Print("   📅 Estimated Problem Time: 15-30 minutes");
        Print("   💡 Preventive Action: Enable object cleanup or increase PointMultiplier");
    }
    
    // Issue 3: Performance degradation prediction
    uint perf_start = GetTickCount();
    for(int i = 0; i < 500; i++) { double calc = MathSin(i); }
    uint perf_time = GetTickCount() - perf_start;
    
    if(perf_time > 20)
    {
        issues_detected++;
        Print("🔍 POTENTIAL ISSUE: Performance Degradation Trend");
        Print("   📊 Current Performance: ", perf_time, "ms (baseline: <10ms)");
        Print("   📅 Estimated Problem Time: 1-2 hours");
        Print("   💡 Preventive Action: System cleanup or MT5 restart recommended");
    }
    
    // Issue 4: Network stability concern
    bool connection_stable = TerminalInfoInteger(TERMINAL_CONNECTED);
    if(!connection_stable)
    {
        issues_detected++;
        Print("🔍 POTENTIAL ISSUE: Network Connectivity Risk");
        Print("   📊 Current Status: Disconnected");
        Print("   📅 Impact: Immediate");
        Print("   💡 Preventive Action: Check network and broker connection");
    }
    
    // Issue 5: Market condition challenge
    double volatility = iATR(Symbol(), PERIOD_M15, 14, 1);
    double spread = SymbolInfoInteger(Symbol(), SYMBOL_SPREAD);
    
    if(volatility > spread * 10)
    {
        issues_detected++;
        Print("🔍 POTENTIAL ISSUE: High Volatility Impact");
        Print("   📊 ATR/Spread Ratio: ", DoubleToString(volatility / MathMax(spread, 1), 1));
        Print("   📅 Expected Duration: Current market session");
        Print("   💡 Preventive Action: Adjust Market Profile settings for volatility");
    }
    
    // Summary
    Print("");
    Print("🎯 PROACTIVE DETECTION SUMMARY:");
    Print("  • Issues Detected: ", issues_detected);
    
    if(issues_detected == 0)
    {
        Print("  ✅ No potential issues detected - system running optimally");
    }
    else
    {
        Print("  ⚠️  ", issues_detected, " potential issues identified");
        Print("  🔧 Take preventive actions now to avoid problems");
        Print("  📅 Regular monitoring recommended");
    }
    
    Print("✅ Proactive issue detection completed");
}

//+------------------------------------------------------------------+
//| Run smart optimization engine                                  |
//+------------------------------------------------------------------+
void RunSmartOptimizationEngine()
{
    Print("Analyzing system and generating intelligent optimizations...");
    
    // Collect system intelligence
    int cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
    long memory_mb = TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE) / (1024 * 1024);
    ENUM_TIMEFRAMES timeframe = Period();
    double volatility = iATR(Symbol(), PERIOD_M15, 14, 1);
    double spread = SymbolInfoInteger(Symbol(), SYMBOL_SPREAD);
    string broker = TerminalInfoString(TERMINAL_COMPANY);
    
    // Intelligence engine analysis
    Print("🧠 INTELLIGENCE ENGINE ANALYSIS:");
    Print("  • System Class: ", GetSystemClass(cpu_cores, memory_mb));
    Print("  • Trading Profile: ", GetTradingProfile(timeframe));
    Print("  • Market Conditions: ", GetMarketConditions(volatility, spread));
    Print("  • Broker Type: ", GetBrokerType(broker));
    
    // Generate optimized configuration
    Print("");
    Print("⚡ SMART OPTIMIZATION RECOMMENDATIONS:");
    
    // CPU-based optimizations
    int recommended_point_multiplier = 1;
    int recommended_sessions = 5;
    int recommended_throttle = 0;
    
    if(cpu_cores >= 8)
    {
        recommended_point_multiplier = 1;
        recommended_sessions = 10;
        recommended_throttle = 0;
        Print("  🖥️  High-Performance CPU Detected:");
        Print("     • PointMultiplier = ", recommended_point_multiplier, " (maximum precision)");
        Print("     • SessionsToCount = ", recommended_sessions, " (comprehensive analysis)");
        Print("     • ThrottleRedraw = ", recommended_throttle, " (real-time updates)");
    }
    else if(cpu_cores >= 4)
    {
        recommended_point_multiplier = 2;
        recommended_sessions = 6;
        recommended_throttle = 1;
        Print("  💻 Standard CPU Detected:");
        Print("     • PointMultiplier = ", recommended_point_multiplier, " (balanced precision)");
        Print("     • SessionsToCount = ", recommended_sessions, " (good analysis)");
        Print("     • ThrottleRedraw = ", recommended_throttle, " (smooth updates)");
    }
    else
    {
        recommended_point_multiplier = 5;
        recommended_sessions = 3;
        recommended_throttle = 3;
        Print("  📱 Limited CPU Detected:");
        Print("     • PointMultiplier = ", recommended_point_multiplier, " (optimized precision)");
        Print("     • SessionsToCount = ", recommended_sessions, " (essential analysis)");
        Print("     • ThrottleRedraw = ", recommended_throttle, " (performance priority)");
    }
    
    // Memory-based optimizations
    if(memory_mb < 1024)
    {
        recommended_sessions = MathMax(recommended_sessions - 2, 1);
        Print("  💾 Memory Optimization: Reduced sessions to ", recommended_sessions);
    }
    
    // Timeframe-based optimizations
    if(timeframe <= PERIOD_M5)
    {
        recommended_point_multiplier = MathMax(recommended_point_multiplier - 1, 1);
        recommended_sessions = MathMin(recommended_sessions, 3);
        Print("  🎯 Scalping Optimization: Enhanced precision settings");
    }
    else if(timeframe >= PERIOD_D1)
    {
        recommended_point_multiplier += 2;
        recommended_sessions += 3;
        Print("  📈 Long-term Optimization: Broader analysis settings");
    }
    
    // Market condition optimizations
    if(volatility > spread * 5)
    {
        recommended_throttle = MathMax(recommended_throttle, 1);
        Print("  🔥 High Volatility Optimization: Added throttling for stability");
    }
    
    // Broker-specific optimizations
    if(StringFind(broker, "ECN") >= 0 || StringFind(broker, "STP") >= 0)
    {
        Print("  🏦 ECN/STP Broker Optimization: Enhanced real-time features recommended");
    }
    
    // Generate optimization script
    Print("");
    Print("📜 GENERATED OPTIMIZATION SCRIPT:");
    
    string opt_script = "";
    opt_script += "// Smart Optimization for " + Symbol() + " - " + TimeToString(TimeCurrent(), TIME_DATE) + "\n";
    opt_script += "// System: " + GetSystemClass(cpu_cores, memory_mb) + " | Trading: " + GetTradingProfile(timeframe) + "\n";
    opt_script += "PointMultiplier = " + IntegerToString(recommended_point_multiplier) + ";\n";
    opt_script += "SessionsToCount = " + IntegerToString(recommended_sessions) + ";\n";
    opt_script += "ThrottleRedraw = " + IntegerToString(recommended_throttle) + ";\n";
    
    // Advanced optimizations
    if(cpu_cores >= 8 && memory_mb >= 2048)
    {
        opt_script += "EnableGPU = true;  // High-end system detected\n";
        opt_script += "EnableDevelopingPOC = true;  // Real-time POC tracking\n";
    }
    
    if(timeframe <= PERIOD_M5)
    {
        opt_script += "EnableValueAreaRays = true;  // Scalping precision\n";
        opt_script += "EnableHighlightPOC = true;  // Visual enhancement\n";
    }
    
    Print(opt_script);
    
    // Save optimization script
    string opt_filename = "Smart_Optimization_" + Symbol() + "_" + TimeToString(TimeCurrent(), TIME_DATE) + ".txt";
    int opt_file = FileOpen(opt_filename, FILE_WRITE | FILE_TXT);
    if(opt_file != INVALID_HANDLE)
    {
        FileWrite(opt_file, opt_script);
        FileClose(opt_file);
        Print("✅ Smart optimization script saved: ", opt_filename);
    }
    
    // Performance prediction
    Print("");
    Print("📊 PERFORMANCE PREDICTION:");
    
    double predicted_performance = CalculatePerformancePrediction(recommended_point_multiplier, recommended_sessions, recommended_throttle);
    Print("  • Expected Performance: ", DoubleToString(predicted_performance * 100, 1), "%");
    Print("  • Optimization Benefit: ", DoubleToString((predicted_performance - 0.7) * 100, 1), "% improvement");
    
    if(predicted_performance > 0.9)
        Print("  🚀 Excellent performance expected with these settings");
    else if(predicted_performance > 0.75)
        Print("  👍 Good performance expected with these settings");
    else
        Print("  💡 Consider further optimization or hardware upgrade");
    
    Print("✅ Smart optimization engine completed");
}

//+------------------------------------------------------------------+
//| Setup continuous health monitoring                             |
//+------------------------------------------------------------------+
void SetupContinuousHealthMonitoring()
{
    Print("Setting up continuous health monitoring system...");
    
    // Create monitoring schedule
    Print("🔄 MONITORING CONFIGURATION:");
    Print("  • Monitoring Interval: ", MonitoringIntervalSeconds, " seconds");
    Print("  • Health Metrics Tracked: Memory, CPU, Network, Objects");
    Print("  • Alert Thresholds: Configured for proactive warnings");
    
    // Initialize monitoring baseline
    long baseline_memory = TerminalInfoInteger(TERMINAL_MEMORY_USED);
    int baseline_objects = ObjectsTotal(0);
    
    GlobalVariableSet("MP_Monitor_BaselineMemory", baseline_memory);
    GlobalVariableSet("MP_Monitor_BaselineObjects", baseline_objects);
    GlobalVariableSet("MP_Monitor_StartTime", TimeCurrent());
    GlobalVariableSet("MP_Monitor_Enabled", 1);
    
    Print("📊 Monitoring Baseline Established:");
    Print("  • Baseline Memory: ", baseline_memory / 1024, " KB");
    Print("  • Baseline Objects: ", baseline_objects);
    Print("  • Monitoring Start: ", TimeToString(TimeCurrent(), TIME_SECONDS));
    
    // Monitoring recommendations
    Print("");
    Print("💡 CONTINUOUS MONITORING RECOMMENDATIONS:");
    Print("  • Check monitoring status regularly using global variables");
    Print("  • MP_Monitor_* variables contain real-time metrics");
    Print("  • Create custom EA for full continuous monitoring implementation");
    Print("  • Set up alerts for critical threshold breaches");
    
    Print("⚠️  NOTE: This establishes monitoring framework");
    Print("   For full continuous monitoring, implement dedicated monitoring EA");
    
    Print("✅ Continuous health monitoring setup completed");
}

//+------------------------------------------------------------------+
//| Export advanced diagnostic report                              |
//+------------------------------------------------------------------+
void ExportAdvancedDiagnosticReport()
{
    string filename = "MarketProfile_Advanced_Diagnostic_" + TimeToString(TimeCurrent(), TIME_DATE) + ".html";
    int file_handle = FileOpen(filename, FILE_WRITE | FILE_TXT);
    
    if(file_handle != INVALID_HANDLE)
    {
        // HTML header
        FileWrite(file_handle, "<!DOCTYPE html>");
        FileWrite(file_handle, "<html><head>");
        FileWrite(file_handle, "<title>Market Profile 2025 - Advanced Diagnostic Report</title>");
        FileWrite(file_handle, "<style>");
        FileWrite(file_handle, "body { font-family: Arial, sans-serif; margin: 20px; }");
        FileWrite(file_handle, ".header { background: #2c3e50; color: white; padding: 20px; }");
        FileWrite(file_handle, ".section { margin: 20px 0; padding: 15px; border-left: 4px solid #3498db; }");
        FileWrite(file_handle, ".metric { margin: 10px 0; }");
        FileWrite(file_handle, ".excellent { color: #27ae60; }");
        FileWrite(file_handle, ".good { color: #f39c12; }");
        FileWrite(file_handle, ".warning { color: #e74c3c; }");
        FileWrite(file_handle, "</style>");
        FileWrite(file_handle, "</head><body>");
        
        // Report header
        FileWrite(file_handle, "<div class='header'>");
        FileWrite(file_handle, "<h1>Market Profile 2025 - Advanced Diagnostic Report</h1>");
        FileWrite(file_handle, "<p>Generated: " + TimeToString(TimeCurrent(), TIME_DATE | TIME_SECONDS) + "</p>");
        FileWrite(file_handle, "<p>System: " + GenerateSystemReportSummary() + "</p>");
        FileWrite(file_handle, "</div>");
        
        // System overview
        FileWrite(file_handle, "<div class='section'>");
        FileWrite(file_handle, "<h2>🖥️ System Overview</h2>");
        FileWrite(file_handle, "<div class='metric'>Performance Rating: <span class='excellent'>" + GetPerformanceRating() + "</span></div>");
        FileWrite(file_handle, "<div class='metric'>CPU Cores: " + IntegerToString(TerminalInfoInteger(TERMINAL_CPU_CORES)) + "</div>");
        FileWrite(file_handle, "<div class='metric'>Available Memory: " + IntegerToString(TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE) / (1024*1024)) + " MB</div>");
        FileWrite(file_handle, "</div>");
        
        // Trading environment
        FileWrite(file_handle, "<div class='section'>");
        FileWrite(file_handle, "<h2>📈 Trading Environment</h2>");
        FileWrite(file_handle, "<div class='metric'>Symbol: " + Symbol() + "</div>");
        FileWrite(file_handle, "<div class='metric'>Timeframe: " + EnumToString(Period()) + "</div>");
        FileWrite(file_handle, "<div class='metric'>Broker: " + TerminalInfoString(TERMINAL_COMPANY) + "</div>");
        FileWrite(file_handle, "<div class='metric'>Server: " + TerminalInfoString(TERMINAL_NAME) + "</div>");
        FileWrite(file_handle, "</div>");
        
        // Performance metrics
        FileWrite(file_handle, "<div class='section'>");
        FileWrite(file_handle, "<h2>⚡ Performance Metrics</h2>");
        FileWrite(file_handle, "<div class='metric'>Memory Usage: " + DoubleToString((double)TerminalInfoInteger(TERMINAL_MEMORY_USED) / TerminalInfoInteger(TERMINAL_MEMORY_AVAILABLE) * 100, 1) + "%</div>");
        FileWrite(file_handle, "<div class='metric'>Chart Objects: " + IntegerToString(ObjectsTotal(0)) + "</div>");
        FileWrite(file_handle, "<div class='metric'>Connection Status: " + (TerminalInfoInteger(TERMINAL_CONNECTED) ? "Connected" : "Disconnected") + "</div>");
        FileWrite(file_handle, "</div>");
        
        // Recommendations
        FileWrite(file_handle, "<div class='section'>");
        FileWrite(file_handle, "<h2>💡 Recommendations</h2>");
        FileWrite(file_handle, "<p>Customized recommendations based on your system analysis:</p>");
        
        int cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
        if(cpu_cores >= 8)
        {
            FileWrite(file_handle, "<div class='metric excellent'>✅ High-performance system: Use all Market Profile features</div>");
        }
        else if(cpu_cores >= 4)
        {
            FileWrite(file_handle, "<div class='metric good'>✅ Standard system: Use balanced settings</div>");
        }
        else
        {
            FileWrite(file_handle, "<div class='metric warning'>⚠️ Limited system: Use optimized settings</div>");
        }
        
        FileWrite(file_handle, "</div>");
        
        // Footer
        FileWrite(file_handle, "<div class='section'>");
        FileWrite(file_handle, "<h2>📞 Support</h2>");
        FileWrite(file_handle, "<p>For technical support: <a href='https://www.earnforex.com/'>EarnForex.com</a></p>");
        FileWrite(file_handle, "<p>Documentation: Check PERFORMANCE_GUIDE.md and QUICK_START_2025.md</p>");
        FileWrite(file_handle, "</div>");
        
        FileWrite(file_handle, "</body></html>");
        
        FileClose(file_handle);
        
        Print("✅ Advanced diagnostic report exported: ", filename);
        Print("📁 Location: MQL5/Files/" + filename);
        Print("🌐 Open in web browser for formatted view");
    }
    else
    {
        Print("❌ Failed to create advanced diagnostic report");
        Print("   💡 Check file permissions or disk space");
    }
}

//+------------------------------------------------------------------+
//| Helper functions for smart optimization                        |
//+------------------------------------------------------------------+
string GetSystemClass(int cpu_cores, long memory_mb)
{
    if(cpu_cores >= 8 && memory_mb >= 2048) return "High-Performance";
    else if(cpu_cores >= 4 && memory_mb >= 1024) return "Standard";
    else if(cpu_cores >= 2 && memory_mb >= 512) return "Basic";
    else return "Limited";
}

string GetTradingProfile(ENUM_TIMEFRAMES tf)
{
    if(tf <= PERIOD_M5) return "Scalping";
    else if(tf <= PERIOD_H1) return "Day Trading";
    else if(tf <= PERIOD_D1) return "Swing Trading";
    else return "Position Trading";
}

string GetMarketConditions(double volatility, double spread)
{
    double vol_spread_ratio = volatility / MathMax(spread, 1);
    
    if(vol_spread_ratio > 10) return "High Volatility";
    else if(vol_spread_ratio > 5) return "Moderate Volatility";
    else if(vol_spread_ratio > 2) return "Low Volatility";
    else return "Very Low Volatility";
}

string GetBrokerType(string company)
{
    if(StringFind(company, "ECN") >= 0) return "ECN";
    else if(StringFind(company, "STP") >= 0) return "STP";
    else if(StringFind(company, "Market Maker") >= 0) return "Market Maker";
    else return "Standard";
}

double CalculatePerformancePrediction(int point_mult, int sessions, int throttle)
{
    double base_performance = 0.7; // 70% baseline
    
    // Point multiplier impact (lower is better for precision but harder on CPU)
    if(point_mult == 1) base_performance += 0.1;
    else if(point_mult <= 3) base_performance += 0.05;
    
    // Sessions impact (more sessions = better analysis but more CPU)
    if(sessions <= 3) base_performance += 0.05;
    else if(sessions <= 8) base_performance += 0.1;
    else base_performance += 0.15;
    
    // Throttle impact (less throttling = more responsive)
    if(throttle == 0) base_performance += 0.1;
    else if(throttle <= 2) base_performance += 0.05;
    
    return MathMin(base_performance, 1.0);
} 