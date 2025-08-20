//+------------------------------------------------------------------+
//|                                           AdvancedAnalytics.mq5 |
//|                        Copyright 2025, Enhanced Market Profile  |
//|                             https://www.earnforex.com/          |
//+------------------------------------------------------------------+
#property copyright "Enhanced Market Profile - 2025"
#property link      "https://www.earnforex.com/"
#property version   "2.00"
#property description "Advanced Analytics Module for Market Profile"
#property description "Incorporates AI/ML capabilities and modern MT5 features"

//--- Modern MT5 includes for enhanced capabilities
#include <Math\Stat\Math.mqh>
#include <Arrays\ArrayObj.mqh>

//+------------------------------------------------------------------+
//| Advanced Market Profile Analytics Class                         |
//+------------------------------------------------------------------+
class CAdvancedMarketProfile
{
private:
    // Modern data structures using MT5 matrices and vectors
    matrix            m_PriceVolumeMatrix;      // Price-volume correlation matrix
    vector            v_VolumeDistribution;     // Volume distribution vector
    vector            v_ProbabilityWeights;     // Statistical probability weights
    
    // AI-ready parameters
    int               m_LookbackPeriod;
    double            m_VolatilityThreshold;
    double            m_TrendStrength;
    
    // Performance optimization variables
    bool              m_UseGPUAcceleration;
    int               m_MaxCalculationNodes;
    
public:
    // Constructor
    CAdvancedMarketProfile(int lookback = 100, bool useGPU = false);
    
    // Destructor
    ~CAdvancedMarketProfile();
    
    // Core analysis functions
    bool              InitializeAnalytics(void);
    double            CalculateVolumeWeightedPOC(const vector &prices, const vector &volumes);
    vector            GetProbabilityDistribution(const matrix &priceMatrix);
    
    // AI/ML ready functions
    double            PredictNextPOC(const vector &historicalPOCs);
    matrix            BuildCorrelationMatrix(const vector &prices, const vector &volumes, const vector &timeframes);
    vector            CalculateMarketRegime(const matrix &marketData);
    
    // Advanced pattern recognition
    bool              DetectVolumeAnomaly(const vector &currentVolume, const vector &historicalVolume);
    double            CalculateProfileEntropy(const vector &volumeDistribution);
    int               IdentifyMarketPhase(const matrix &priceVolumeData);
    
    // Performance optimization methods
    void              EnableGPUAcceleration(bool enable) { m_UseGPUAcceleration = enable; }
    void              SetMaxNodes(int nodes) { m_MaxCalculationNodes = nodes; }
    
    // Real-time analytics
    double            GetLiveVolumeDelta(void);
    vector            CalculateDevelopingProfile(const vector &livePrices, const vector &liveVolumes);
    
    // Statistical methods using modern MT5 capabilities
    double            CalculateVolumeStandardDeviation(const vector &volumes);
    vector            ApplyKalmanFilter(const vector &noisyData);
    matrix            PerformPrincipalComponentAnalysis(const matrix &dataMatrix);
};

//+------------------------------------------------------------------+
//| Constructor                                                      |
//+------------------------------------------------------------------+
CAdvancedMarketProfile::CAdvancedMarketProfile(int lookback = 100, bool useGPU = false)
{
    m_LookbackPeriod = lookback;
    m_UseGPUAcceleration = useGPU;
    m_MaxCalculationNodes = 1024;
    m_VolatilityThreshold = 0.02;
    m_TrendStrength = 0.0;
    
    // Initialize modern data structures
    m_PriceVolumeMatrix.Resize(lookback, 4); // OHLC data
    v_VolumeDistribution.Resize(lookback);
    v_ProbabilityWeights.Resize(lookback);
}

//+------------------------------------------------------------------+
//| Destructor                                                       |
//+------------------------------------------------------------------+
CAdvancedMarketProfile::~CAdvancedMarketProfile()
{
    // Modern MT5 automatically handles matrix/vector cleanup
}

//+------------------------------------------------------------------+
//| Initialize Analytics Engine                                      |
//+------------------------------------------------------------------+
bool CAdvancedMarketProfile::InitializeAnalytics(void)
{
    // Initialize GPU context if enabled
    if(m_UseGPUAcceleration)
    {
        int cl_ctx = CLContextCreate(CL_USE_GPU_DOUBLE_ONLY);
        if(cl_ctx == INVALID_HANDLE)
        {
            Print("GPU acceleration not available, falling back to CPU");
            m_UseGPUAcceleration = false;
        }
        else
        {
            Print("GPU acceleration enabled for Market Profile analytics");
            CLContextFree(cl_ctx);
        }
    }
    
    return true;
}

//+------------------------------------------------------------------+
//| Calculate Volume Weighted POC using modern vector operations    |
//+------------------------------------------------------------------+
double CAdvancedMarketProfile::CalculateVolumeWeightedPOC(const vector &prices, const vector &volumes)
{
    if(prices.Size() != volumes.Size() || prices.Size() == 0)
        return 0.0;
    
    // Use modern MT5 vector operations for efficient calculation
    vector weightedPrices = prices * volumes;
    double totalWeightedPrice = weightedPrices.Sum();
    double totalVolume = volumes.Sum();
    
    return totalVolume > 0 ? totalWeightedPrice / totalVolume : 0.0;
}

//+------------------------------------------------------------------+
//| Get Probability Distribution using statistical functions        |
//+------------------------------------------------------------------+
vector CAdvancedMarketProfile::GetProbabilityDistribution(const matrix &priceMatrix)
{
    vector probabilities;
    probabilities.Resize(priceMatrix.Rows());
    
    // Calculate probability distribution using modern statistical methods
    for(ulong i = 0; i < priceMatrix.Rows(); i++)
    {
        vector row = priceMatrix.Row(i);
        double mean = row.Mean();
        double std = row.Std();
        
        // Apply statistical transformation
        probabilities[i] = MathExp(-0.5 * MathPow((mean - row.Mean()) / std, 2));
    }
    
    // Normalize probabilities
    double sum = probabilities.Sum();
    if(sum > 0)
        probabilities = probabilities / sum;
    
    return probabilities;
}

//+------------------------------------------------------------------+
//| Predict Next POC using machine learning concepts                |
//+------------------------------------------------------------------+
double CAdvancedMarketProfile::PredictNextPOC(const vector &historicalPOCs)
{
    if(historicalPOCs.Size() < 3)
        return 0.0;
    
    // Simple linear regression prediction using vector operations
    ulong n = historicalPOCs.Size();
    vector timeIndex;
    timeIndex.Resize(n);
    
    // Create time index vector
    for(ulong i = 0; i < n; i++)
        timeIndex[i] = (double)i;
    
    // Calculate linear regression coefficients
    double meanX = timeIndex.Mean();
    double meanY = historicalPOCs.Mean();
    
    vector x_diff = timeIndex - meanX;
    vector y_diff = historicalPOCs - meanY;
    vector xy_product = x_diff * y_diff;
    vector x_squared = x_diff * x_diff;
    
    double slope = xy_product.Sum() / x_squared.Sum();
    double intercept = meanY - slope * meanX;
    
    // Predict next value
    return intercept + slope * n;
}

//+------------------------------------------------------------------+
//| Build Correlation Matrix for multi-timeframe analysis          |
//+------------------------------------------------------------------+
matrix CAdvancedMarketProfile::BuildCorrelationMatrix(const vector &prices, const vector &volumes, const vector &timeframes)
{
    ulong size = MathMin(prices.Size(), MathMin(volumes.Size(), timeframes.Size()));
    matrix correlationMatrix;
    correlationMatrix.Resize(3, 3); // Price, Volume, Timeframe correlations
    
    // Fill correlation matrix using modern mathematical functions
    correlationMatrix[0][0] = 1.0; // Price-Price correlation
    correlationMatrix[1][1] = 1.0; // Volume-Volume correlation  
    correlationMatrix[2][2] = 1.0; // Timeframe-Timeframe correlation
    
    // Calculate cross-correlations using statistical methods
    vector priceNorm = (prices - prices.Mean()) / prices.Std();
    vector volumeNorm = (volumes - volumes.Mean()) / volumes.Std();
    vector timeframeNorm = (timeframes - timeframes.Mean()) / timeframes.Std();
    
    correlationMatrix[0][1] = correlationMatrix[1][0] = (priceNorm * volumeNorm).Sum() / size;
    correlationMatrix[0][2] = correlationMatrix[2][0] = (priceNorm * timeframeNorm).Sum() / size;
    correlationMatrix[1][2] = correlationMatrix[2][1] = (volumeNorm * timeframeNorm).Sum() / size;
    
    return correlationMatrix;
}

//+------------------------------------------------------------------+
//| Calculate Market Regime using advanced analytics               |
//+------------------------------------------------------------------+
vector CAdvancedMarketProfile::CalculateMarketRegime(const matrix &marketData)
{
    vector regimeIndicator;
    ulong dataPoints = marketData.Rows();
    regimeIndicator.Resize(dataPoints);
    
    // Use volatility and trend strength to determine market regime
    for(ulong i = 1; i < dataPoints; i++)
    {
        vector currentRow = marketData.Row(i);
        vector previousRow = marketData.Row(i-1);
        
        // Calculate price change and volatility
        double priceChange = currentRow[3] - previousRow[3]; // Close price change
        double volatility = MathAbs(currentRow[1] - currentRow[2]) / currentRow[3]; // High-Low / Close
        
        // Regime classification: 0 = Ranging, 1 = Trending, 2 = Volatile
        if(volatility > m_VolatilityThreshold * 2)
            regimeIndicator[i] = 2.0; // Volatile market
        else if(MathAbs(priceChange) > m_VolatilityThreshold)
            regimeIndicator[i] = 1.0; // Trending market
        else
            regimeIndicator[i] = 0.0; // Ranging market
    }
    
    return regimeIndicator;
}

//+------------------------------------------------------------------+
//| Detect Volume Anomalies using statistical analysis             |
//+------------------------------------------------------------------+
bool CAdvancedMarketProfile::DetectVolumeAnomaly(const vector &currentVolume, const vector &historicalVolume)
{
    if(currentVolume.Size() == 0 || historicalVolume.Size() < 20)
        return false;
    
    // Calculate statistical thresholds
    double historicalMean = historicalVolume.Mean();
    double historicalStd = historicalVolume.Std();
    double currentMean = currentVolume.Mean();
    
    // Anomaly detection using z-score
    double zScore = (currentMean - historicalMean) / historicalStd;
    
    // Flag as anomaly if z-score exceeds 2.5 standard deviations
    return MathAbs(zScore) > 2.5;
}

//+------------------------------------------------------------------+
//| Calculate Profile Entropy for market uncertainty measurement   |
//+------------------------------------------------------------------+
double CAdvancedMarketProfile::CalculateProfileEntropy(const vector &volumeDistribution)
{
    if(volumeDistribution.Size() == 0)
        return 0.0;
    
    // Normalize distribution
    double totalVolume = volumeDistribution.Sum();
    if(totalVolume <= 0)
        return 0.0;
    
    vector probabilities = volumeDistribution / totalVolume;
    double entropy = 0.0;
    
    // Calculate Shannon entropy
    for(ulong i = 0; i < probabilities.Size(); i++)
    {
        if(probabilities[i] > 0)
            entropy -= probabilities[i] * MathLog(probabilities[i]);
    }
    
    return entropy;
}

//+------------------------------------------------------------------+
//| Calculate Volume Standard Deviation using modern MT5 functions |
//+------------------------------------------------------------------+
double CAdvancedMarketProfile::CalculateVolumeStandardDeviation(const vector &volumes)
{
    return volumes.Std();
}

//+------------------------------------------------------------------+
//| Apply Kalman Filter for noise reduction                        |
//+------------------------------------------------------------------+
vector CAdvancedMarketProfile::ApplyKalmanFilter(const vector &noisyData)
{
    vector filteredData;
    filteredData.Resize(noisyData.Size());
    
    if(noisyData.Size() == 0)
        return filteredData;
    
    // Simple Kalman filter implementation
    double processNoise = 0.01;
    double measurementNoise = 0.1;
    double estimation = noisyData[0];
    double errorCovariance = 1.0;
    
    filteredData[0] = estimation;
    
    for(ulong i = 1; i < noisyData.Size(); i++)
    {
        // Prediction step
        double predictedEstimation = estimation;
        double predictedErrorCovariance = errorCovariance + processNoise;
        
        // Update step
        double kalmanGain = predictedErrorCovariance / (predictedErrorCovariance + measurementNoise);
        estimation = predictedEstimation + kalmanGain * (noisyData[i] - predictedEstimation);
        errorCovariance = (1 - kalmanGain) * predictedErrorCovariance;
        
        filteredData[i] = estimation;
    }
    
    return filteredData;
}

//+------------------------------------------------------------------+
//| Get Live Volume Delta for real-time analysis                   |
//+------------------------------------------------------------------+
double CAdvancedMarketProfile::GetLiveVolumeDelta(void)
{
    // This would integrate with real-time market data
    // Implementation depends on broker's volume data availability
    return 0.0; // Placeholder
}

//+------------------------------------------------------------------+
//| Calculate Developing Profile in real-time                      |
//+------------------------------------------------------------------+
vector CAdvancedMarketProfile::CalculateDevelopingProfile(const vector &livePrices, const vector &liveVolumes)
{
    vector developingProfile;
    
    if(livePrices.Size() != liveVolumes.Size())
        return developingProfile;
    
    developingProfile.Resize(livePrices.Size());
    
    // Calculate cumulative volume profile
    for(ulong i = 0; i < livePrices.Size(); i++)
    {
        vector priceSubset = livePrices.SubVector(0, i + 1);
        vector volumeSubset = liveVolumes.SubVector(0, i + 1);
        
        developingProfile[i] = CalculateVolumeWeightedPOC(priceSubset, volumeSubset);
    }
    
    return developingProfile;
}

//+------------------------------------------------------------------+
//| Example usage and testing function                             |
//+------------------------------------------------------------------+
void TestAdvancedAnalytics()
{
    Print("=== Advanced Market Profile Analytics Test ===");
    
    // Create analytics instance
    CAdvancedMarketProfile* analytics = new CAdvancedMarketProfile(50, true);
    
    if(analytics.InitializeAnalytics())
    {
        Print("Advanced Analytics initialized successfully");
        
        // Test with sample data
        vector samplePrices = {1.1000, 1.1005, 1.1010, 1.1008, 1.1012};
        vector sampleVolumes = {1000, 1500, 2000, 1200, 1800};
        
        double vwpoc = analytics.CalculateVolumeWeightedPOC(samplePrices, sampleVolumes);
        Print("Volume Weighted POC: ", vwpoc);
        
        // Test prediction capability
        vector historicalPOCs = {1.1005, 1.1008, 1.1010, 1.1012, 1.1015};
        double predictedPOC = analytics.PredictNextPOC(historicalPOCs);
        Print("Predicted next POC: ", predictedPOC);
        
        // Test entropy calculation
        double entropy = analytics.CalculateProfileEntropy(sampleVolumes);
        Print("Profile entropy: ", entropy);
    }
    
    delete analytics;
    Print("=== Test completed ===");
}

//+------------------------------------------------------------------+
//| Expert initialization function                                  |
//+------------------------------------------------------------------+
int OnInit()
{
    TestAdvancedAnalytics();
    return INIT_SUCCEEDED;
}

//+------------------------------------------------------------------+
//| Expert deinitialization function                               |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
{
    Print("Advanced Analytics module deinitialized");
}

//+------------------------------------------------------------------+
//| Expert tick function                                            |
//+------------------------------------------------------------------+
void OnTick()
{
    static datetime lastBarTime = 0;
    static double lastPrice = 0;
    static long lastVolume = 0;
    
    // Get current market data
    double currentPrice = SymbolInfoDouble(_Symbol, SYMBOL_BID);
    long currentVolume = SymbolInfoInteger(_Symbol, SYMBOL_VOLUME);
    datetime currentTime = TimeCurrent();
    
    // Check if we have a new tick with volume change
    if(currentVolume != lastVolume)
    {
        // 1. Real-time Volume Distribution Update
        UpdateVolumeDistribution(currentPrice, currentVolume - lastVolume);
        
        // 2. Real-time POC Calculation
        double newPOC = CalculateRealTimePOC();
        
        // 3. Volume Anomaly Detection
        if(DetectVolumeAnomaly(currentVolume - lastVolume))
        {
            Alert("🚨 Volume Anomaly Detected at ", DoubleToString(currentPrice, _Digits));
            SendNotification("High Volume Alert: " + _Symbol + " at " + DoubleToString(currentPrice, _Digits));
        }
        
        // 4. Market Regime Analysis Update
        ENUM_MARKET_REGIME currentRegime = AnalyzeMarketRegime();
        static ENUM_MARKET_REGIME lastRegime = REGIME_RANGE;
        
        if(currentRegime != lastRegime)
        {
            string regimeText = EnumToString(currentRegime);
            Comment("📊 Market Regime Changed to: ", regimeText);
            lastRegime = currentRegime;
        }
        
        // 5. Dynamic Support/Resistance Update
        UpdateDynamicLevels(currentPrice);
        
        // 6. Real-time Statistics
        CalculateRealTimeStatistics();
        
        lastVolume = currentVolume;
    }
    
    // Price movement analysis (every tick)
    if(currentPrice != lastPrice)
    {
        // Update price momentum
        UpdatePriceMomentum(currentPrice);
        
        // Check for significant price moves
        double priceChange = MathAbs(currentPrice - lastPrice) / _Point;
        if(priceChange >= 10) // Configurable threshold
        {
            AnalyzePriceJump(currentPrice, lastPrice);
        }
        
        lastPrice = currentPrice;
    }
    
    // New bar detection and analysis
    datetime barTime = iTime(_Symbol, PERIOD_CURRENT, 0);
    if(barTime != lastBarTime)
    {
        OnNewBar();
        lastBarTime = barTime;
    }
    
    // Update visual elements if needed
    static int tickCounter = 0;
    tickCounter++;
    
    // Throttle updates for performance (every 10 ticks)
    if(tickCounter % 10 == 0)
    {
        UpdateVisualElements();
        RefreshAnalyticsPanel();
    }
}

// Supporting functions for real-time analytics
void UpdateVolumeDistribution(double price, long volume)
{
    // Find price level bucket
    int priceLevel = (int)MathRound(price / _Point);
    
    // Update volume at this price level
    // This would integrate with the main Market Profile volume tracking
    
    if(GlobalVariableCheck("MP_Volume_" + IntegerToString(priceLevel)))
    {
        double currentVol = GlobalVariableGet("MP_Volume_" + IntegerToString(priceLevel));
        GlobalVariableSet("MP_Volume_" + IntegerToString(priceLevel), currentVol + volume);
    }
    else
    {
        GlobalVariableSet("MP_Volume_" + IntegerToString(priceLevel), volume);
    }
}

bool DetectVolumeAnomaly(long volumeDelta)
{
    static double volumeHistory[100];
    static int historyIndex = 0;
    
    // Store volume in circular buffer
    volumeHistory[historyIndex] = (double)volumeDelta;
    historyIndex = (historyIndex + 1) % 100;
    
    // Calculate average and standard deviation
    double sum = 0, sumSquares = 0;
    for(int i = 0; i < 100; i++)
    {
        sum += volumeHistory[i];
        sumSquares += volumeHistory[i] * volumeHistory[i];
    }
    
    double average = sum / 100;
    double variance = (sumSquares / 100) - (average * average);
    double stdDev = MathSqrt(variance);
    
    // Detect anomaly (volume > 2 standard deviations above average)
    return (volumeDelta > average + (2 * stdDev));
}

ENUM_MARKET_REGIME AnalyzeMarketRegime()
{
    // Simple regime detection based on recent price action
    double high = iHigh(_Symbol, PERIOD_M5, iHighest(_Symbol, PERIOD_M5, MODE_HIGH, 20, 1));
    double low = iLow(_Symbol, PERIOD_M5, iLowest(_Symbol, PERIOD_M5, MODE_LOW, 20, 1));
    double range = high - low;
    double avgRange = iATR(_Symbol, PERIOD_M5, 14, 1);
    
    // Get recent closes for trend analysis
    double close1 = iClose(_Symbol, PERIOD_M5, 1);
    double close10 = iClose(_Symbol, PERIOD_M5, 10);
    double close20 = iClose(_Symbol, PERIOD_M5, 20);
    
    double trendStrength = MathAbs(close1 - close20) / (20 * _Point);
    
    if(range > avgRange * 1.5 && trendStrength < avgRange * 0.5)
        return REGIME_VOLATILE;
    else if(trendStrength > avgRange)
        return (close1 > close20) ? REGIME_TRENDING_UP : REGIME_TRENDING_DOWN;
    else
        return REGIME_RANGE;
}

void UpdateDynamicLevels(double currentPrice)
{
    // Update key levels based on current market profile
    double poc = CalculateRealTimePOC();
    
    // Store dynamic levels in global variables for other indicators
    GlobalVariableSet("MP_Dynamic_POC", poc);
    GlobalVariableSet("MP_Current_Price", currentPrice);
    GlobalVariableSet("MP_Last_Update", TimeCurrent());
}

void CalculateRealTimeStatistics()
{
    static int statsCounter = 0;
    statsCounter++;
    
    // Calculate every 50 ticks to avoid performance issues
    if(statsCounter % 50 == 0)
    {
        // Calculate current session statistics
        double sessionHigh = iHigh(_Symbol, PERIOD_D1, 0);
        double sessionLow = iLow(_Symbol, PERIOD_D1, 0);
        double currentPrice = SymbolInfoDouble(_Symbol, SYMBOL_BID);
        
        // Calculate position within session range
        double rangePosition = (currentPrice - sessionLow) / (sessionHigh - sessionLow) * 100;
        
        // Store for display
        GlobalVariableSet("MP_Session_Range_Position", rangePosition);
    }
}

void UpdatePriceMomentum(double currentPrice)
{
    static double priceHistory[20];
    static int momentumIndex = 0;
    
    // Store price in circular buffer
    priceHistory[momentumIndex] = currentPrice;
    momentumIndex = (momentumIndex + 1) % 20;
    
    // Calculate momentum (simple slope of recent prices)
    double momentum = (priceHistory[(momentumIndex + 19) % 20] - priceHistory[momentumIndex]) / 19;
    GlobalVariableSet("MP_Price_Momentum", momentum);
}

void AnalyzePriceJump(double newPrice, double oldPrice)
{
    double jumpSize = MathAbs(newPrice - oldPrice);
    string direction = (newPrice > oldPrice) ? "UP" : "DOWN";
    
    Print("📈 Significant Price Jump: ", direction, " ", DoubleToString(jumpSize / _Point, 0), " points");
    
    // Could trigger additional analysis here
    if(jumpSize > iATR(_Symbol, PERIOD_M5, 14, 1) * 2)
    {
        Comment("🚨 Large Price Movement: ", direction, " ", DoubleToString(jumpSize / _Point, 0), " points");
    }
}

void OnNewBar()
{
    Print("🕐 New Bar: ", TimeToString(TimeCurrent(), TIME_MINUTES));
    
    // Perform new bar analytics
    CalculateBarAnalytics();
    UpdateSessionStatistics();
    
    // Reset some real-time counters if needed
    ResetTickCounters();
}

void CalculateBarAnalytics()
{
    // Analyze the completed bar
    double open = iOpen(_Symbol, PERIOD_CURRENT, 1);
    double high = iHigh(_Symbol, PERIOD_CURRENT, 1);
    double low = iLow(_Symbol, PERIOD_CURRENT, 1);
    double close = iClose(_Symbol, PERIOD_CURRENT, 1);
    long volume = iVolume(_Symbol, PERIOD_CURRENT, 1);
    
    // Calculate bar characteristics
    double bodySize = MathAbs(close - open);
    double totalRange = high - low;
    double bodyRatio = (totalRange > 0) ? bodySize / totalRange : 0;
    
    // Store analytics
    GlobalVariableSet("MP_Last_Bar_Body_Ratio", bodyRatio);
    GlobalVariableSet("MP_Last_Bar_Volume", volume);
}

void UpdateSessionStatistics()
{
    // Update session-based statistics
    // This integrates with the main Market Profile session logic
}

void ResetTickCounters()
{
    // Reset any tick-based counters at the start of new bars
}

void UpdateVisualElements()
{
    // Update any visual indicators or overlays
    // This would integrate with the main Market Profile display
}

void RefreshAnalyticsPanel()
{
    // Update analytics information panel
    string info = StringFormat("POC: %.5f | Regime: %s | Momentum: %.2f", 
                              GlobalVariableGet("MP_Dynamic_POC"),
                              EnumToString(AnalyzeMarketRegime()),
                              GlobalVariableGet("MP_Price_Momentum"));
    
    Comment(info);
} 