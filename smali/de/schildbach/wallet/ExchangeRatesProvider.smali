.class public Lde/schildbach/wallet/ExchangeRatesProvider;
.super Landroid/content/ContentProvider;
.source "ExchangeRatesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    }
.end annotation


# static fields
.field private static final BITCOINAVERAGE_FIELDS:[Ljava/lang/String;

.field private static final BITCOINAVERAGE_SOURCE:Ljava/lang/String; = "BitcoinAverage.com"

.field private static final BITCOINAVERAGE_URL:Ljava/net/URL;

.field private static final BLOCKCHAININFO_FIELDS:[Ljava/lang/String;

.field private static final BLOCKCHAININFO_SOURCE:Ljava/lang/String; = "blockchain.info"

.field private static final BLOCKCHAININFO_URL:Ljava/net/URL;

.field public static final KEY_CURRENCY_CODE:Ljava/lang/String; = "currency_code"

.field private static final KEY_RATE:Ljava/lang/String; = "rate"

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"

.field private static final UPDATE_FREQ_MS:J = 0x927c0L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private config:Lde/schildbach/wallet/Configuration;

.field private exchangeRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private lastUpdated:J

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "24h_avg"

    aput-object v2, v1, v3

    const-string v2, "last"

    aput-object v2, v1, v4

    sput-object v1, Lde/schildbach/wallet/ExchangeRatesProvider;->BITCOINAVERAGE_FIELDS:[Ljava/lang/String;

    .line 100
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "15m"

    aput-object v2, v1, v3

    sput-object v1, Lde/schildbach/wallet/ExchangeRatesProvider;->BLOCKCHAININFO_FIELDS:[Ljava/lang/String;

    .line 109
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://apiv2.bitcoinaverage.com/indices/ticker/custom/abw"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lde/schildbach/wallet/ExchangeRatesProvider;->BITCOINAVERAGE_URL:Ljava/net/URL;

    .line 110
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://blockchain.info/ticker"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v1, Lde/schildbach/wallet/ExchangeRatesProvider;->BLOCKCHAININFO_URL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const-class v1, Lde/schildbach/wallet/ExchangeRatesProvider;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lde/schildbach/wallet/ExchangeRatesProvider;->log:Lorg/slf4j/Logger;

    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "x":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->exchangeRates:Ljava/util/Map;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->lastUpdated:J

    return-void
.end method

.method private bestExchangeRate(Ljava/lang/String;)Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    .locals 4
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 198
    if-eqz p1, :cond_0

    iget-object v2, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->exchangeRates:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-object v1, v2

    .line 199
    .local v1, "rate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 208
    :goto_1
    return-object v2

    .end local v1    # "rate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    :cond_0
    move-object v1, v3

    .line 198
    goto :goto_0

    .line 202
    .restart local v1    # "rate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    :cond_1
    invoke-direct {p0}, Lde/schildbach/wallet/ExchangeRatesProvider;->defaultCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "defaultCode":Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->exchangeRates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-object v1, v2

    .line 205
    :goto_2
    if-eqz v1, :cond_3

    move-object v2, v1

    .line 206
    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 203
    goto :goto_2

    .line 208
    :cond_3
    iget-object v2, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->exchangeRates:Ljava/util/Map;

    const-string v3, "USD"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    goto :goto_1
.end method

.method public static contentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exchange_rates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private defaultCurrencyCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 219
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 219
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCoinValueBTC()Ljava/lang/Object;
    .locals 12

    .prologue
    .line 259
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 262
    .local v0, "btcRate":Ljava/lang/Double;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v9, "https://api.mintpal.com/v1/market/stats/PND/BTC"

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 264
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 266
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/16 v9, 0x7530

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 267
    const/16 v9, 0x7530

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 268
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    .local v2, "content":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 274
    .local v5, "reader":Ljava/io/Reader;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x400

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    .end local v5    # "reader":Ljava/io/Reader;
    .local v6, "reader":Ljava/io/Reader;
    :try_start_2
    invoke-static {v6, v2}, Lde/schildbach/wallet/util/Io;->copy(Ljava/io/Reader;Ljava/lang/StringBuilder;)J

    .line 276
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "head":Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 278
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v9, "top_bid"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 281
    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    .line 293
    .end local v0    # "btcRate":Ljava/lang/Double;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "content":Ljava/lang/StringBuilder;
    .end local v3    # "head":Lorg/json/JSONArray;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "reader":Ljava/io/Reader;
    .end local v7    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v0

    .line 281
    .restart local v0    # "btcRate":Ljava/lang/Double;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "content":Ljava/lang/StringBuilder;
    .restart local v5    # "reader":Ljava/io/Reader;
    .restart local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    :cond_1
    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 286
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "reader":Ljava/io/Reader;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 287
    .local v8, "x":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 293
    .end local v8    # "x":Ljava/io/IOException;
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :catch_1
    move-exception v8

    .line 290
    .local v8, "x":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 281
    .end local v8    # "x":Lorg/json/JSONException;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "content":Ljava/lang/StringBuilder;
    .restart local v6    # "reader":Ljava/io/Reader;
    .restart local v7    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/Reader;
    .restart local v5    # "reader":Ljava/io/Reader;
    goto :goto_1
.end method

.method private static getCoinValueBTC_BTER()Ljava/lang/Object;
    .locals 15

    .prologue
    .line 299
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 300
    .local v2, "btcRate":Ljava/lang/Double;
    const-string v5, "BTC"

    .line 301
    .local v5, "currency":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://data.bter.com/api/1/ticker/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "PND"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "BTC"

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 309
    .local v10, "url":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 310
    .local v0, "URL_bter":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 311
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 312
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 313
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 317
    .local v4, "content":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 320
    .local v7, "reader":Ljava/io/Reader;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    const/16 v14, 0x400

    invoke-direct {v12, v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v8, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v7    # "reader":Ljava/io/Reader;
    .local v8, "reader":Ljava/io/Reader;
    :try_start_2
    invoke-static {v8, v4}, Lde/schildbach/wallet/util/Io;->copy(Ljava/io/Reader;Ljava/lang/StringBuilder;)J

    .line 322
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    .local v6, "head":Lorg/json/JSONObject;
    const-string v12, "result"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "result":Ljava/lang/String;
    const-string v12, "true"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 327
    const-string v12, "avg"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 330
    .local v1, "averageTrade":Ljava/lang/Double;
    const-string v12, "BTC"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v12

    if-eqz v12, :cond_0

    .line 331
    move-object v2, v1

    .line 337
    .end local v1    # "averageTrade":Ljava/lang/Double;
    :cond_0
    if-eqz v8, :cond_1

    .line 338
    :try_start_3
    invoke-virtual {v8}, Ljava/io/Reader;->close()V

    .line 351
    .end local v0    # "URL_bter":Ljava/net/URL;
    .end local v2    # "btcRate":Ljava/lang/Double;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "content":Ljava/lang/StringBuilder;
    .end local v6    # "head":Lorg/json/JSONObject;
    .end local v8    # "reader":Ljava/io/Reader;
    .end local v9    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 337
    .restart local v0    # "URL_bter":Ljava/net/URL;
    .restart local v2    # "btcRate":Ljava/lang/Double;
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v4    # "content":Ljava/lang/StringBuilder;
    .restart local v7    # "reader":Ljava/io/Reader;
    :catchall_0
    move-exception v12

    :goto_1
    if-eqz v7, :cond_2

    .line 338
    invoke-virtual {v7}, Ljava/io/Reader;->close()V

    :cond_2
    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 342
    .end local v0    # "URL_bter":Ljava/net/URL;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v4    # "content":Ljava/lang/StringBuilder;
    .end local v7    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v11

    .line 344
    .local v11, "x":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    .end local v11    # "x":Ljava/io/IOException;
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 346
    :catch_1
    move-exception v11

    .line 348
    .local v11, "x":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 337
    .end local v11    # "x":Lorg/json/JSONException;
    .restart local v0    # "URL_bter":Ljava/net/URL;
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v4    # "content":Ljava/lang/StringBuilder;
    .restart local v8    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    goto :goto_1
.end method

.method public static getExchangeRate(Landroid/database/Cursor;)Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 225
    const-string v3, "currency_code"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "currencyCode":Ljava/lang/String;
    const-string v3, "rate"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 227
    .local v1, "rate":Ljava/math/BigInteger;
    const-string v3, "source"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "source":Ljava/lang/String;
    new-instance v3, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    invoke-direct {v3, v0, v1, v2}, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v3
.end method

.method private static varargs requestExchangeRates(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 44
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "fields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 359
    .local v31, "start":J
    const/4 v6, 0x0

    .line 360
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/16 v27, 0x0

    .line 365
    .local v27, "reader":Ljava/io/Reader;
    const-wide/16 v34, 0x0

    :try_start_0
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 366
    .local v5, "btcRate":Ljava/lang/Double;
    const/4 v9, 0x1

    .line 367
    .local v9, "cryptsyValue":Z
    invoke-static {}, Lde/schildbach/wallet/ExchangeRatesProvider;->getCoinValueBTC()Ljava/lang/Object;

    move-result-object v30

    .line 369
    .local v30, "result":Ljava/lang/Object;
    if-nez v30, :cond_2

    .line 371
    invoke-static {}, Lde/schildbach/wallet/ExchangeRatesProvider;->getCoinValueBTC_BTER()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v30

    .line 372
    const/4 v9, 0x0

    .line 373
    if-nez v30, :cond_2

    .line 374
    const/16 v26, 0x0

    .line 476
    if-eqz v27, :cond_0

    .line 480
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 488
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 489
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 492
    .end local v5    # "btcRate":Ljava/lang/Double;
    .end local v9    # "cryptsyValue":Z
    .end local v30    # "result":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v26

    .line 377
    .restart local v5    # "btcRate":Ljava/lang/Double;
    .restart local v9    # "cryptsyValue":Z
    .restart local v30    # "result":Ljava/lang/Object;
    :cond_2
    :try_start_2
    move-object/from16 v0, v30

    check-cast v0, Ljava/lang/Double;

    move-object v5, v0

    .line 380
    invoke-virtual/range {p0 .. p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v34

    move-object/from16 v0, v34

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 382
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 383
    const/16 v34, 0x3a98

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 384
    const/16 v34, 0x3a98

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 385
    const-string v34, "User-Agent"

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v34, "Accept-Encoding"

    const-string v35, "gzip"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 389
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v29

    .line 390
    .local v29, "responseCode":I
    const/16 v34, 0xc8

    move/from16 v0, v29

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 392
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, "contentEncoding":Ljava/lang/String;
    new-instance v16, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v34

    const/16 v35, 0x400

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 395
    .local v16, "is":Ljava/io/InputStream;
    const-string v34, "gzip"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 396
    new-instance v17, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v16    # "is":Ljava/io/InputStream;
    .local v17, "is":Ljava/io/InputStream;
    move-object/from16 v16, v17

    .line 398
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v16    # "is":Ljava/io/InputStream;
    :cond_3
    new-instance v28, Ljava/io/InputStreamReader;

    sget-object v34, Lde/schildbach/wallet/Constants;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 399
    .end local v27    # "reader":Ljava/io/Reader;
    .local v28, "reader":Ljava/io/Reader;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .local v7, "content":Ljava/lang/StringBuilder;
    move-object/from16 v0, v28

    invoke-static {v0, v7}, Lde/schildbach/wallet/util/Io;->copy(Ljava/io/Reader;Ljava/lang/StringBuilder;)J

    move-result-wide v19

    .line 402
    .local v19, "length":J
    new-instance v26, Ljava/util/TreeMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/TreeMap;-><init>()V

    .line 408
    .local v26, "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    .local v12, "head":Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_6

    .line 411
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 412
    .local v10, "currencyCode":Ljava/lang/String;
    const-string v34, "timestamp"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_4

    .line 414
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 416
    .local v21, "o":Lorg/json/JSONObject;
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    aget-object v11, v4, v15

    .line 418
    .local v11, "field":Ljava/lang/String;
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v25

    .line 420
    .local v25, "rateStr":Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 424
    :try_start_4
    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v23

    .line 426
    .local v23, "rateForBTC":D
    const-string v34, "%.8f"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v37

    mul-double v37, v37, v23

    invoke-static/range {v37 .. v38}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    const-string v35, ","

    const-string v36, "."

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v25

    .line 428
    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->toNanoCoins(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v22

    .line 430
    .local v22, "rate":Ljava/math/BigInteger;
    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->signum()I

    move-result v34

    if-lez v34, :cond_5

    .line 432
    new-instance v34, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v10, v1, v2}, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 436
    .end local v22    # "rate":Ljava/math/BigInteger;
    .end local v23    # "rateForBTC":D
    :catch_0
    move-exception v33

    .line 438
    .local v33, "x":Ljava/lang/ArithmeticException;
    :try_start_5
    sget-object v34, Lde/schildbach/wallet/ExchangeRatesProvider;->log:Lorg/slf4j/Logger;

    const-string v35, "problem fetching {} exchange rate from {} ({}): {}"

    const/16 v36, 0x4

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v10, v36, v37

    const/16 v37, 0x1

    aput-object p0, v36, v37

    const/16 v37, 0x2

    aput-object v8, v36, v37

    const/16 v37, 0x3

    invoke-virtual/range {v33 .. v33}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-interface/range {v34 .. v36}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    .end local v33    # "x":Ljava/lang/ArithmeticException;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 446
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "currencyCode":Ljava/lang/String;
    .end local v11    # "field":Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v21    # "o":Lorg/json/JSONObject;
    .end local v25    # "rateStr":Ljava/lang/String;
    :cond_6
    sget-object v34, Lde/schildbach/wallet/ExchangeRatesProvider;->log:Lorg/slf4j/Logger;

    const-string v35, "fetched exchange rates from {} ({}), {} chars, took {} ms"

    const/16 v36, 0x4

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object p0, v36, v37

    const/16 v37, 0x1

    aput-object v8, v36, v37

    const/16 v37, 0x2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v31

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-interface/range {v34 .. v36}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v34

    if-nez v34, :cond_9

    .line 452
    const/4 v13, 0x0

    .line 453
    .local v13, "i":I
    add-int/lit8 v13, v13, 0x1

    .line 476
    .end local v13    # "i":I
    :goto_4
    if-eqz v28, :cond_7

    .line 480
    :try_start_6
    invoke-virtual/range {v28 .. v28}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 488
    :cond_7
    :goto_5
    if-eqz v6, :cond_8

    .line 489
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    move-object/from16 v27, v28

    .end local v28    # "reader":Ljava/io/Reader;
    .restart local v27    # "reader":Ljava/io/Reader;
    goto/16 :goto_1

    .line 457
    .end local v27    # "reader":Ljava/io/Reader;
    .restart local v28    # "reader":Ljava/io/Reader;
    :cond_9
    :try_start_7
    const-string v35, "BTC"

    new-instance v36, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    const-string v37, "BTC"

    const-string v34, "%.8f"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v5, v38, v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    const-string v38, ","

    const-string v39, "."

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->toNanoCoins(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v38

    if-eqz v9, :cond_c

    const-string v34, "pubapi.cryptsy.com"

    :goto_6
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v35, "mBTC"

    new-instance v36, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    const-string v37, "mBTC"

    const-string v34, "%.5f"

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v40

    const-wide v42, 0x408f400000000000L    # 1000.0

    mul-double v40, v40, v42

    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    const-string v38, ","

    const-string v39, "."

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->toNanoCoins(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v38

    if-eqz v9, :cond_d

    const-string v34, "pubapi.cryptsy.com"

    :goto_7
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 469
    .end local v7    # "content":Ljava/lang/StringBuilder;
    .end local v12    # "head":Lorg/json/JSONObject;
    .end local v14    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19    # "length":J
    .end local v26    # "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    :catch_1
    move-exception v33

    move-object/from16 v27, v28

    .line 471
    .end local v5    # "btcRate":Ljava/lang/Double;
    .end local v8    # "contentEncoding":Ljava/lang/String;
    .end local v9    # "cryptsyValue":Z
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v28    # "reader":Ljava/io/Reader;
    .end local v29    # "responseCode":I
    .end local v30    # "result":Ljava/lang/Object;
    .restart local v27    # "reader":Ljava/io/Reader;
    .local v33, "x":Ljava/lang/Exception;
    :goto_8
    :try_start_8
    sget-object v34, Lde/schildbach/wallet/ExchangeRatesProvider;->log:Lorg/slf4j/Logger;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "problem fetching exchange rates from "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 476
    if-eqz v27, :cond_a

    .line 480
    :try_start_9
    invoke-virtual/range {v27 .. v27}, Ljava/io/Reader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 488
    :cond_a
    :goto_9
    if-eqz v6, :cond_b

    .line 489
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 492
    .end local v33    # "x":Ljava/lang/Exception;
    :cond_b
    :goto_a
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 457
    .end local v27    # "reader":Ljava/io/Reader;
    .restart local v5    # "btcRate":Ljava/lang/Double;
    .restart local v7    # "content":Ljava/lang/StringBuilder;
    .restart local v8    # "contentEncoding":Ljava/lang/String;
    .restart local v9    # "cryptsyValue":Z
    .restart local v12    # "head":Lorg/json/JSONObject;
    .restart local v14    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v19    # "length":J
    .restart local v26    # "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    .restart local v28    # "reader":Ljava/io/Reader;
    .restart local v29    # "responseCode":I
    .restart local v30    # "result":Ljava/lang/Object;
    :cond_c
    :try_start_a
    const-string v34, "data.bter.com"

    goto/16 :goto_6

    .line 458
    :cond_d
    const-string v34, "data.bter.com"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    .line 466
    .end local v7    # "content":Ljava/lang/StringBuilder;
    .end local v8    # "contentEncoding":Ljava/lang/String;
    .end local v12    # "head":Lorg/json/JSONObject;
    .end local v14    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v19    # "length":J
    .end local v26    # "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    .end local v28    # "reader":Ljava/io/Reader;
    .restart local v27    # "reader":Ljava/io/Reader;
    :cond_e
    :try_start_b
    sget-object v34, Lde/schildbach/wallet/ExchangeRatesProvider;->log:Lorg/slf4j/Logger;

    const-string v35, "http status {} when fetching {}"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, p0

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 476
    if-eqz v27, :cond_f

    .line 480
    :try_start_c
    invoke-virtual/range {v27 .. v27}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 488
    :cond_f
    :goto_b
    if-eqz v6, :cond_b

    .line 489
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_a

    .line 476
    .end local v5    # "btcRate":Ljava/lang/Double;
    .end local v9    # "cryptsyValue":Z
    .end local v29    # "responseCode":I
    .end local v30    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v34

    :goto_c
    if-eqz v27, :cond_10

    .line 480
    :try_start_d
    invoke-virtual/range {v27 .. v27}, Ljava/io/Reader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 488
    :cond_10
    :goto_d
    if-eqz v6, :cond_11

    .line 489
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v34

    .line 482
    .restart local v5    # "btcRate":Ljava/lang/Double;
    .restart local v9    # "cryptsyValue":Z
    .restart local v30    # "result":Ljava/lang/Object;
    :catch_2
    move-exception v34

    goto/16 :goto_0

    .end local v27    # "reader":Ljava/io/Reader;
    .restart local v7    # "content":Ljava/lang/StringBuilder;
    .restart local v8    # "contentEncoding":Ljava/lang/String;
    .restart local v12    # "head":Lorg/json/JSONObject;
    .restart local v14    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v19    # "length":J
    .restart local v26    # "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    .restart local v28    # "reader":Ljava/io/Reader;
    .restart local v29    # "responseCode":I
    :catch_3
    move-exception v34

    goto/16 :goto_5

    .end local v7    # "content":Ljava/lang/StringBuilder;
    .end local v8    # "contentEncoding":Ljava/lang/String;
    .end local v12    # "head":Lorg/json/JSONObject;
    .end local v14    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v19    # "length":J
    .end local v26    # "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    .end local v28    # "reader":Ljava/io/Reader;
    .restart local v27    # "reader":Ljava/io/Reader;
    :catch_4
    move-exception v34

    goto :goto_b

    .end local v5    # "btcRate":Ljava/lang/Double;
    .end local v9    # "cryptsyValue":Z
    .end local v29    # "responseCode":I
    .end local v30    # "result":Ljava/lang/Object;
    .restart local v33    # "x":Ljava/lang/Exception;
    :catch_5
    move-exception v34

    goto :goto_9

    .end local v33    # "x":Ljava/lang/Exception;
    :catch_6
    move-exception v35

    goto :goto_d

    .line 476
    .end local v27    # "reader":Ljava/io/Reader;
    .restart local v5    # "btcRate":Ljava/lang/Double;
    .restart local v8    # "contentEncoding":Ljava/lang/String;
    .restart local v9    # "cryptsyValue":Z
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v28    # "reader":Ljava/io/Reader;
    .restart local v29    # "responseCode":I
    .restart local v30    # "result":Ljava/lang/Object;
    :catchall_1
    move-exception v34

    move-object/from16 v27, v28

    .end local v28    # "reader":Ljava/io/Reader;
    .restart local v27    # "reader":Ljava/io/Reader;
    goto :goto_c

    .line 469
    .end local v5    # "btcRate":Ljava/lang/Double;
    .end local v8    # "contentEncoding":Ljava/lang/String;
    .end local v9    # "cryptsyValue":Z
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v29    # "responseCode":I
    .end local v30    # "result":Ljava/lang/Object;
    :catch_7
    move-exception v33

    goto :goto_8
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lde/schildbach/wallet/ExchangeRatesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lde/schildbach/wallet/Configuration;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/schildbach/wallet/Configuration;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v2, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->config:Lde/schildbach/wallet/Configuration;

    .line 129
    invoke-static {v1}, Lde/schildbach/wallet/WalletApplication;->packageInfoFromContext(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lde/schildbach/wallet/WalletApplication;->httpUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->userAgent:Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v2}, Lde/schildbach/wallet/Configuration;->getCachedExchangeRate()Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-result-object v0

    .line 132
    .local v0, "cachedExchangeRate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    if-eqz v0, :cond_0

    .line 134
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->exchangeRates:Ljava/util/Map;

    .line 135
    iget-object v2, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->exchangeRates:Ljava/util/Map;

    iget-object v3, v0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-boolean v8, Lde/schildbach/wallet/Constants;->BUG_OPENSSL_HEARTBLEED:Z

    if-eqz v8, :cond_1

    .line 150
    const/4 v0, 0x0

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 154
    .local v5, "now":J
    iget-wide v8, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->lastUpdated:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    iget-wide v8, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->lastUpdated:J

    sub-long v8, v5, v8

    const-wide/32 v10, 0x927c0

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 156
    :cond_2
    const/4 v4, 0x0

    .line 157
    .local v4, "newExchangeRates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    if-nez v4, :cond_3

    .line 158
    sget-object v8, Lde/schildbach/wallet/ExchangeRatesProvider;->BITCOINAVERAGE_URL:Ljava/net/URL;

    iget-object v9, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->userAgent:Ljava/lang/String;

    const-string v10, "BitcoinAverage.com"

    sget-object v11, Lde/schildbach/wallet/ExchangeRatesProvider;->BITCOINAVERAGE_FIELDS:[Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lde/schildbach/wallet/ExchangeRatesProvider;->requestExchangeRates(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 159
    :cond_3
    if-nez v4, :cond_4

    .line 160
    sget-object v8, Lde/schildbach/wallet/ExchangeRatesProvider;->BLOCKCHAININFO_URL:Ljava/net/URL;

    iget-object v9, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->userAgent:Ljava/lang/String;

    const-string v10, "blockchain.info"

    sget-object v11, Lde/schildbach/wallet/ExchangeRatesProvider;->BLOCKCHAININFO_FIELDS:[Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lde/schildbach/wallet/ExchangeRatesProvider;->requestExchangeRates(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 162
    :cond_4
    if-eqz v4, :cond_5

    .line 164
    iput-object v4, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->exchangeRates:Ljava/util/Map;

    .line 165
    iput-wide v5, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->lastUpdated:J

    .line 167
    iget-object v8, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v8}, Lde/schildbach/wallet/Configuration;->getExchangeCurrencyCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lde/schildbach/wallet/ExchangeRatesProvider;->bestExchangeRate(Ljava/lang/String;)Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-result-object v2

    .line 168
    .local v2, "exchangeRateToCache":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    if-eqz v2, :cond_5

    .line 169
    iget-object v8, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v8, v2}, Lde/schildbach/wallet/Configuration;->setCachedExchangeRate(Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;)V

    .line 173
    .end local v2    # "exchangeRateToCache":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    .end local v4    # "newExchangeRates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    :cond_5
    iget-object v8, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->exchangeRates:Ljava/util/Map;

    if-nez v8, :cond_6

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :cond_6
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "currency_code"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "rate"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "source"

    aput-object v10, v8, v9

    invoke-direct {v0, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 178
    .local v0, "cursor":Landroid/database/MatrixCursor;
    if-nez p3, :cond_7

    .line 180
    iget-object v8, p0, Lde/schildbach/wallet/ExchangeRatesProvider;->exchangeRates:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    .line 183
    .local v7, "rate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    iget-object v9, v7, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    iget-object v9, v7, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    iget-object v9, v7, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    iget-object v9, v7, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->source:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 186
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "rate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    :cond_7
    const-string v8, "currency_code"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 188
    const/4 v8, 0x0

    aget-object v8, p4, v8

    invoke-direct {p0, v8}, Lde/schildbach/wallet/ExchangeRatesProvider;->bestExchangeRate(Ljava/lang/String;)Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-result-object v7

    .line 189
    .restart local v7    # "rate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    if-eqz v7, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    iget-object v9, v7, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    iget-object v9, v7, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    iget-object v9, v7, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    iget-object v9, v7, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->source:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
