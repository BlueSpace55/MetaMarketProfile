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
input bool VerboseOutput = false;            // Show detailed technical info

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
    
    // 4. Show optimizations
    if(ShowOptimizations)
    {
        Print("💡 OPTIMIZATION SUGGESTIONS");
        Print("───────────────────────────");
        ShowOptimizationSuggestions();
        Print("");
    }
    
    // 5. Final summary
    Print("📋 DIAGNOSTIC SUMMARY");
    Print("────────────────────");
    if(all_checks_passed)
    {
        Print("✅ All checks passed! Your system is ready for Market Profile 2025");
    }
    else
    {
        Print("⚠️  Some issues detected. Please review the suggestions above");
    }
    Print("");
    Print("🔗 For more help: https://www.earnforex.com/metatrader-indicators/MarketProfile/");
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