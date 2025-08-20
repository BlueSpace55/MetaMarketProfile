//+------------------------------------------------------------------+
//|                                              Example_Usage.mq5 |
//|                        Copyright 2025, Enhanced Market Profile  |
//|                             https://www.earnforex.com/          |
//+------------------------------------------------------------------+
#property copyright "Enhanced Market Profile - 2025"
#property link      "https://www.earnforex.com/"
#property version   "1.00"
#property description "Simple example showing Market Profile 2025 features"
#property description "Perfect for learning the new capabilities"

#property script_show_inputs

#include "AdvancedAnalytics.mq5"

//--- Input parameters
input group "=== Example Settings ==="
input int    BarsToAnalyze = 100;        // Bars to analyze
input bool   ShowPrediction = true;       // Show POC prediction
input bool   DetectAnomalies = true;     // Detect volume anomalies  
input bool   ShowMarketRegime = true;    // Show market regime
input double AlertThreshold = 2.0;       // Anomaly alert threshold

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
{
    Print("=== Market Profile 2025 - Example Usage ===");
    Print("Demonstrating advanced analytics on ", Symbol());
    Print("");
    
    // Initialize advanced analytics
    CAdvancedMarketProfile* analytics = new CAdvancedMarketProfile(BarsToAnalyze, true);
    
    if(!analytics.InitializeAnalytics())
    {
        Print("❌ Failed to initialize analytics");
        delete analytics;
        return;
    }
    
    Print("✅ Analytics engine initialized");
    Print("");
    
    // 1. Basic Market Profile Analysis
    RunBasicAnalysis();
    
    // 2. Advanced Analytics Demo
    if(analytics != NULL)
    {
        RunAdvancedAnalysis(analytics);
    }
    
    // 3. Trading Signals Example
    GenerateTradingSignals();
    
    // 4. Performance Tips
    ShowOptimizationTips();
    
    delete analytics;
    Print("=== Example completed ===");
}

//+------------------------------------------------------------------+
//| Run basic market profile analysis                              |
//+------------------------------------------------------------------+
void RunBasicAnalysis()
{
    Print("📊 BASIC MARKET PROFILE ANALYSIS");
    Print("─────────────────────────────────");
    
    // Get recent price and volume data
    double high[], low[], close[];
    long volume[];
    
    ArraySetAsSeries(high, true);
    ArraySetAsSeries(low, true);  
    ArraySetAsSeries(close, true);
    ArraySetAsSeries(volume, true);
    
    int copied_high = CopyHigh(Symbol(), PERIOD_CURRENT, 0, BarsToAnalyze, high);
    int copied_low = CopyLow(Symbol(), PERIOD_CURRENT, 0, BarsToAnalyze, low);
    int copied_close = CopyClose(Symbol(), PERIOD_CURRENT, 0, BarsToAnalyze, close);
    int copied_volume = CopyTickVolume(Symbol(), PERIOD_CURRENT, 0, BarsToAnalyze, volume);
    
    if(copied_high > 0 && copied_low > 0)
    {
        // Calculate basic statistics
        double session_high = ArrayMaximum(high, 0, copied_high);
        double session_low = ArrayMinimum(low, 0, copied_low);
        double price_range = high[session_high] - low[session_low];
        
        Print("📈 Session High: ", DoubleToString(high[session_high], _Digits));
        Print("📉 Session Low: ", DoubleToString(low[session_low], _Digits));
        Print("📏 Price Range: ", DoubleToString(price_range, _Digits));
        
        // Estimate Point of Control (simplified)
        double estimated_poc = (high[session_high] + low[session_low]) / 2.0;
        Print("🎯 Estimated POC: ", DoubleToString(estimated_poc, _Digits));
        
        // Value Area estimation (70% rule)
        double va_range = price_range * 0.7;
        double va_high = estimated_poc + (va_range / 2.0);
        double va_low = estimated_poc - (va_range / 2.0);
        
        Print("🔺 Value Area High: ", DoubleToString(va_high, _Digits));
        Print("🔻 Value Area Low: ", DoubleToString(va_low, _Digits));
        Print("");
        
        // Current price analysis
        double current_price = close[0];
        string price_position = "";
        
        if(current_price > va_high)
            price_position = "ABOVE Value Area (potential resistance)";
        else if(current_price < va_low)
            price_position = "BELOW Value Area (potential support)";
        else
            price_position = "WITHIN Value Area (fair value zone)";
            
        Print("💰 Current Price: ", DoubleToString(current_price, _Digits));
        Print("📍 Position: ", price_position);
    }
    else
    {
        Print("❌ Failed to get market data");
    }
    
    Print("");
}

//+------------------------------------------------------------------+
//| Run advanced analytics demonstration                            |
//+------------------------------------------------------------------+
void RunAdvancedAnalysis(CAdvancedMarketProfile* analytics)
{
    Print("🧠 ADVANCED ANALYTICS DEMO");
    Print("─────────────────────────────");
    
    // Get sample data for analysis
    vector sample_prices = {
        SymbolInfoDouble(Symbol(), SYMBOL_BID) - 0.0010,
        SymbolInfoDouble(Symbol(), SYMBOL_BID) - 0.0005,
        SymbolInfoDouble(Symbol(), SYMBOL_BID),
        SymbolInfoDouble(Symbol(), SYMBOL_BID) + 0.0005,
        SymbolInfoDouble(Symbol(), SYMBOL_BID) + 0.0010
    };
    
    vector sample_volumes = {1000, 1500, 2500, 1200, 800};
    
    // 1. Volume-Weighted POC
    double vwpoc = analytics.CalculateVolumeWeightedPOC(sample_prices, sample_volumes);
    Print("⚖️  Volume-Weighted POC: ", DoubleToString(vwpoc, _Digits));
    
    // 2. Market Regime Analysis
    if(ShowMarketRegime)
    {
        // Create sample market data matrix (OHLC)
        matrix market_data;
        market_data.Resize(5, 4);
        
        for(int i = 0; i < 5; i++)
        {
            market_data[i][0] = sample_prices[i] - 0.0002; // Open
            market_data[i][1] = sample_prices[i] + 0.0003; // High  
            market_data[i][2] = sample_prices[i] - 0.0003; // Low
            market_data[i][3] = sample_prices[i];          // Close
        }
        
        vector regime = analytics.CalculateMarketRegime(market_data);
        
        Print("📊 Market Regime Analysis:");
        for(ulong i = 0; i < regime.Size(); i++)
        {
            string regime_type = "";
            if(regime[i] == 0) regime_type = "Ranging";
            else if(regime[i] == 1) regime_type = "Trending"; 
            else regime_type = "Volatile";
            
            Print("   Bar ", i, ": ", regime_type);
        }
    }
    
    // 3. Volume Anomaly Detection
    if(DetectAnomalies)
    {
        vector historical_volume = {1200, 1100, 1300, 1250, 1150, 1400, 1000, 1350};
        vector current_volume = {2500}; // Suspicious high volume
        
        bool anomaly = analytics.DetectVolumeAnomaly(current_volume, historical_volume);
        Print("🚨 Volume Anomaly Detected: ", anomaly ? "YES" : "NO");
        
        if(anomaly)
        {
            Print("   ⚠️  Current volume significantly exceeds normal levels");
            Print("   💡 This could indicate institutional activity or news impact");
        }
    }
    
    // 4. Profile Entropy (Market Uncertainty)
    double entropy = analytics.CalculateProfileEntropy(sample_volumes);
    Print("🎲 Profile Entropy: ", DoubleToString(entropy, 4));
    
    if(entropy > 1.5)
        Print("   📈 High uncertainty - expect increased volatility");
    else if(entropy < 0.5)
        Print("   📉 Low uncertainty - market in consensus");
    else
        Print("   ⚖️  Normal uncertainty levels");
        
    // 5. POC Prediction
    if(ShowPrediction)
    {
        vector historical_pocs = {
            sample_prices[0], sample_prices[1], sample_prices[2], 
            sample_prices[3], sample_prices[4]
        };
        
        double predicted_poc = analytics.PredictNextPOC(historical_pocs);
        Print("🔮 Predicted Next POC: ", DoubleToString(predicted_poc, _Digits));
        
        double current_price = SymbolInfoDouble(Symbol(), SYMBOL_BID);
        double prediction_diff = predicted_poc - current_price;
        
        if(MathAbs(prediction_diff) > 0.001)
        {
            string direction = (prediction_diff > 0) ? "UPWARD" : "DOWNWARD";
            Print("   🎯 Expected POC movement: ", direction);
            Print("   📏 Distance: ", DoubleToString(MathAbs(prediction_diff), _Digits), " points");
        }
    }
    
    Print("");
}

//+------------------------------------------------------------------+
//| Generate example trading signals                               |
//+------------------------------------------------------------------+
void GenerateTradingSignals()
{
    Print("📈 TRADING SIGNALS EXAMPLE");
    Print("──────────────────────────");
    
    double current_price = SymbolInfoDouble(Symbol(), SYMBOL_BID);
    double spread = SymbolInfoDouble(Symbol(), SYMBOL_SPREAD) * SymbolInfoDouble(Symbol(), SYMBOL_POINT);
    
    // Simple example signals based on Market Profile concepts
    Print("💰 Current Price: ", DoubleToString(current_price, _Digits));
    Print("📊 Spread: ", DoubleToString(spread, _Digits));
    Print("");
    
    // Example signal logic
    Print("🎯 Example Trading Scenarios:");
    Print("   1. BUY Signal: Price near Value Area Low + volume spike");
    Print("   2. SELL Signal: Price near Value Area High + volume decline");
    Print("   3. BREAKOUT: Price breaks POC with high volume");
    Print("   4. REVERSAL: Price rejection at profile extremes");
    Print("");
    
    Print("⚠️  Remember: These are examples only!");
    Print("    Always combine with your risk management strategy");
    Print("");
}

//+------------------------------------------------------------------+
//| Show optimization tips                                          |
//+------------------------------------------------------------------+
void ShowOptimizationTips()
{
    Print("⚡ PERFORMANCE OPTIMIZATION TIPS");
    Print("─────────────────────────────────");
    
    // Check system capabilities
    int cpu_cores = (int)TerminalInfoInteger(TERMINAL_CPU_CORES);
    string build = (string)TerminalInfoInteger(TERMINAL_BUILD);
    
    Print("🖥️  Your System:");
    Print("   CPU Cores: ", cpu_cores);
    Print("   MT5 Build: ", build);
    
    // GPU check
    int cl_ctx = CLContextCreate();
    bool gpu_available = (cl_ctx != INVALID_HANDLE);
    if(cl_ctx != INVALID_HANDLE) CLContextFree(cl_ctx);
    
    Print("   GPU OpenCL: ", gpu_available ? "Available" : "Not Available");
    Print("");
    
    Print("💡 Optimization Recommendations:");
    
    if(cpu_cores >= 8)
        Print("   ✅ High-end CPU: Enable all features");
    else if(cpu_cores >= 4)
        Print("   ✅ Good CPU: Most features suitable");
    else
        Print("   ⚠️  Limited CPU: Use optimized settings");
        
    if(gpu_available)
        Print("   ✅ GPU acceleration recommended");
    else
        Print("   💡 CPU-only mode: Increase PointMultiplier");
        
    Print("");
    Print("📚 For detailed optimization guide, see: PERFORMANCE_GUIDE.md");
    Print("⚙️  For auto-setup, run: Setup_MarketProfile_2025.mq5");
    Print("");
}

//+------------------------------------------------------------------+
//| Helper function to format large numbers                        |
//+------------------------------------------------------------------+
string FormatNumber(double number)
{
    if(number >= 1000000)
        return DoubleToString(number/1000000, 1) + "M";
    else if(number >= 1000)
        return DoubleToString(number/1000, 1) + "K";
    else
        return DoubleToString(number, 0);
} 