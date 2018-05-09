.class public Lde/schildbach/wallet/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static final PREFS_DEFAULT_BTC_PRECISION:I = 0x2

.field private static final PREFS_DEFAULT_BTC_SHIFT:I = 0x0

.field private static final PREFS_KEY_BEST_CHAIN_HEIGHT_EVER:Ljava/lang/String; = "best_chain_height_ever"

.field public static final PREFS_KEY_BTC_PRECISION:Ljava/lang/String; = "btc_precision"

.field private static final PREFS_KEY_CACHED_EXCHANGE_CURRENCY:Ljava/lang/String; = "cached_exchange_currency"

.field private static final PREFS_KEY_CACHED_EXCHANGE_RATE:Ljava/lang/String; = "cached_exchange_rate"

.field private static final PREFS_KEY_CHANGE_LOG_VERSION:Ljava/lang/String; = "change_log_version"

.field public static final PREFS_KEY_CONNECTIVITY_NOTIFICATION:Ljava/lang/String; = "connectivity_notification"

.field public static final PREFS_KEY_DISCLAIMER:Ljava/lang/String; = "disclaimer"

.field public static final PREFS_KEY_EXCHANGE_CURRENCY:Ljava/lang/String; = "exchange_currency"

.field private static final PREFS_KEY_LABS_QR_PAYMENT_REQUEST:Ljava/lang/String; = "labs_qr_payment_request"

.field private static final PREFS_KEY_LAST_EXCHANGE_DIRECTION:Ljava/lang/String; = "last_exchange_direction"

.field private static final PREFS_KEY_LAST_USED:Ljava/lang/String; = "last_used"

.field private static final PREFS_KEY_LAST_VERSION:Ljava/lang/String; = "last_version"

.field public static final PREFS_KEY_REMIND_BACKUP:Ljava/lang/String; = "remind_backup"

.field public static final PREFS_KEY_SELECTED_ADDRESS:Ljava/lang/String; = "selected_address"

.field public static final PREFS_KEY_TRUSTED_PEER:Ljava/lang/String; = "trusted_peer"

.field public static final PREFS_KEY_TRUSTED_PEER_ONLY:Ljava/lang/String; = "trusted_peer_only"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field public final lastVersionCode:I

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lde/schildbach/wallet/Configuration;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/Configuration;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    .line 69
    const-string v0, "last_version"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lde/schildbach/wallet/Configuration;->lastVersionCode:I

    .line 70
    return-void
.end method


# virtual methods
.method public armBackupReminder()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remind_backup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method

.method public changeLogVersionCodeCrossed(II)Z
    .locals 8
    .param p1, "currentVersionCode"    # I
    .param p2, "triggeringVersionCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 258
    iget-object v6, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "change_log_version"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, "changeLogVersion":I
    if-ge v0, p2, :cond_0

    move v2, v4

    .line 261
    .local v2, "wasBelow":Z
    :goto_0
    if-lez v0, :cond_1

    move v3, v4

    .line 262
    .local v3, "wasUsedBefore":Z
    :goto_1
    if-lt p1, p2, :cond_2

    move v1, v4

    .line 264
    .local v1, "isNowAbove":Z
    :goto_2
    iget-object v6, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "change_log_version"

    invoke-interface {v6, v7, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    :goto_3
    return v4

    .end local v1    # "isNowAbove":Z
    .end local v2    # "wasBelow":Z
    .end local v3    # "wasUsedBefore":Z
    :cond_0
    move v2, v5

    .line 260
    goto :goto_0

    .restart local v2    # "wasBelow":Z
    :cond_1
    move v3, v5

    .line 261
    goto :goto_1

    .restart local v3    # "wasUsedBefore":Z
    :cond_2
    move v1, v5

    .line 262
    goto :goto_2

    .restart local v1    # "isNowAbove":Z
    :cond_3
    move v4, v5

    .line 266
    goto :goto_3
.end method

.method public disarmBackupReminder()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "remind_backup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void
.end method

.method public getBestChainHeightEver()I
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "best_chain_height_ever"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBtcMaxPrecision()I
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v0

    .line 90
    .local v0, "btcShift":I
    if-nez v0, :cond_0

    .line 91
    const/16 v1, 0x8

    .line 95
    :goto_0
    return v1

    .line 92
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 93
    const/4 v1, 0x5

    goto :goto_0

    .line 95
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getBtcPrecision()I
    .locals 4

    .prologue
    .line 79
    iget-object v1, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "btc_precision"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "precision":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    .line 83
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getBtcPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v0

    .line 111
    .local v0, "btcShift":I
    if-nez v0, :cond_0

    .line 112
    const-string v1, "PND"

    .line 116
    :goto_0
    return-object v1

    .line 113
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 114
    const-string v1, "mPND"

    goto :goto_0

    .line 116
    :cond_1
    const-string v1, "\u00b5PND"

    goto :goto_0
.end method

.method public getBtcShift()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "btc_precision"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "precision":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    .line 104
    :cond_0
    return v1
.end method

.method public getCachedExchangeRate()Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v2, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "cached_exchange_currency"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "cached_exchange_rate"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "cached_exchange_currency"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "cachedExchangeCurrency":Ljava/lang/String;
    iget-object v2, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "cached_exchange_rate"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 230
    .local v1, "cachedExchangeRate":Ljava/math/BigInteger;
    new-instance v2, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    invoke-direct {v2, v0, v1, v3}, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 234
    .end local v0    # "cachedExchangeCurrency":Ljava/lang/String;
    .end local v1    # "cachedExchangeRate":Ljava/math/BigInteger;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method public getConnectivityNotificationEnabled()Z
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "connectivity_notification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDisclaimerEnabled()Z
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "disclaimer"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExchangeCurrencyCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "exchange_currency"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastExchangeDirection()Z
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "last_exchange_direction"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastUsedAgo()J
    .locals 6

    .prologue
    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 202
    .local v0, "now":J
    iget-object v2, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "last_used"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public getQrPaymentRequestEnabled()Z
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "labs_qr_payment_request"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSelectedAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "selected_address"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedPeerHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "trusted_peer"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedPeerOnly()Z
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "trusted_peer_only"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasBtcPrecision()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "btc_precision"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 271
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 272
    return-void
.end method

.method public remindBackup()Z
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "remind_backup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBestChainHeightEver(I)V
    .locals 2
    .param p1, "bestChainHeightEver"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "best_chain_height_ever"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    return-void
.end method

.method public setCachedExchangeRate(Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;)V
    .locals 4
    .param p1, "cachedExchangeRate"    # Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    .prologue
    .line 240
    iget-object v1, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cached_exchange_currency"

    iget-object v2, p1, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    const-string v1, "cached_exchange_rate"

    iget-object v2, p1, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method

.method public setExchangeCurrencyCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "exchangeCurrencyCode"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "exchange_currency"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    return-void
.end method

.method public setLastExchangeDirection(Z)V
    .locals 2
    .param p1, "exchangeDirection"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_exchange_direction"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    return-void
.end method

.method public setSelectedAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selected_address"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void
.end method

.method public touchLastUsed()V
    .locals 10

    .prologue
    .line 207
    iget-object v4, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "last_used"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 208
    .local v2, "prefsLastUsed":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    .local v0, "now":J
    iget-object v4, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_used"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    sget-object v4, Lde/schildbach/wallet/Configuration;->log:Lorg/slf4j/Logger;

    const-string v5, "just being used - last used {} minutes ago"

    sub-long v6, v0, v2

    const-wide/32 v8, 0xea60

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 276
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 277
    return-void
.end method

.method public updateLastVersionCode(I)V
    .locals 3
    .param p1, "currentVersionCode"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lde/schildbach/wallet/Configuration;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    iget v0, p0, Lde/schildbach/wallet/Configuration;->lastVersionCode:I

    if-le p1, v0, :cond_1

    .line 193
    sget-object v0, Lde/schildbach/wallet/Configuration;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detected app upgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/schildbach/wallet/Configuration;->lastVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v0, p0, Lde/schildbach/wallet/Configuration;->lastVersionCode:I

    if-ge p1, v0, :cond_0

    .line 195
    sget-object v0, Lde/schildbach/wallet/Configuration;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detected app downgrade: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/schildbach/wallet/Configuration;->lastVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public versionCodeCrossed(II)Z
    .locals 6
    .param p1, "currentVersionCode"    # I
    .param p2, "triggeringVersionCode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    iget v5, p0, Lde/schildbach/wallet/Configuration;->lastVersionCode:I

    if-ge v5, p2, :cond_0

    move v1, v3

    .line 182
    .local v1, "wasBelow":Z
    :goto_0
    iget v5, p0, Lde/schildbach/wallet/Configuration;->lastVersionCode:I

    if-lez v5, :cond_1

    move v2, v3

    .line 183
    .local v2, "wasUsedBefore":Z
    :goto_1
    if-lt p1, p2, :cond_2

    move v0, v3

    .line 185
    .local v0, "isNowAbove":Z
    :goto_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :goto_3
    return v3

    .end local v0    # "isNowAbove":Z
    .end local v1    # "wasBelow":Z
    .end local v2    # "wasUsedBefore":Z
    :cond_0
    move v1, v4

    .line 181
    goto :goto_0

    .restart local v1    # "wasBelow":Z
    :cond_1
    move v2, v4

    .line 182
    goto :goto_1

    .restart local v2    # "wasUsedBefore":Z
    :cond_2
    move v0, v4

    .line 183
    goto :goto_2

    .restart local v0    # "isNowAbove":Z
    :cond_3
    move v3, v4

    .line 185
    goto :goto_3
.end method
