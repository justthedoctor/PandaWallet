.class public final Lde/schildbach/wallet/ui/ExchangeRateLoader;
.super Landroid/support/v4/content/CursorLoader;
.source "ExchangeRateLoader.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final config:Lde/schildbach/wallet/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/schildbach/wallet/Configuration;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lde/schildbach/wallet/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/schildbach/wallet/ExchangeRatesProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "currency_code"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v3, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lde/schildbach/wallet/ui/ExchangeRateLoader;->config:Lde/schildbach/wallet/Configuration;

    .line 40
    return-void
.end method

.method private onCurrencyChange()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lde/schildbach/wallet/ui/ExchangeRateLoader;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v1}, Lde/schildbach/wallet/Configuration;->getExchangeCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "exchangeCurrency":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lde/schildbach/wallet/ui/ExchangeRateLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ExchangeRateLoader;->forceLoad()V

    .line 74
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v0, "exchange_currency"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lde/schildbach/wallet/ui/ExchangeRateLoader;->onCurrencyChange()V

    .line 65
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->onStartLoading()V

    .line 47
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRateLoader;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 49
    invoke-direct {p0}, Lde/schildbach/wallet/ui/ExchangeRateLoader;->onCurrencyChange()V

    .line 50
    return-void
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRateLoader;->config:Lde/schildbach/wallet/Configuration;

    invoke-virtual {v0, p0}, Lde/schildbach/wallet/Configuration;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 57
    invoke-super {p0}, Landroid/support/v4/content/CursorLoader;->onStopLoading()V

    .line 58
    return-void
.end method
