.class public final Lde/schildbach/wallet/ui/CurrencyCalculatorLink;
.super Ljava/lang/Object;
.source "CurrencyCalculatorLink.java"


# instance fields
.field private final btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

.field private final btcAmountViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

.field private enabled:Z

.field private exchangeDirection:Z

.field private exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

.field private listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

.field private final localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

.field private final localAmountViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;


# direct methods
.method public constructor <init>(Lde/schildbach/wallet/ui/CurrencyAmountView;Lde/schildbach/wallet/ui/CurrencyAmountView;)V
    .locals 2
    .param p1, "btcAmountView"    # Lde/schildbach/wallet/ui/CurrencyAmountView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "localAmountView"    # Lde/schildbach/wallet/ui/CurrencyAmountView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    .line 40
    iput-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->enabled:Z

    .line 41
    iput-object v1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    .line 42
    iput-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeDirection:Z

    .line 44
    new-instance v0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$1;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$1;-><init>(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    .line 66
    new-instance v0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink$2;-><init>(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    .line 90
    iput-object p1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    .line 91
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setListener(Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;)V

    .line 93
    iput-object p2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    .line 94
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountViewListener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setListener(Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;)V

    .line 96
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->update()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)Lde/schildbach/wallet/ui/CurrencyAmountView;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    .prologue
    .line 34
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)Lde/schildbach/wallet/ui/CurrencyAmountView;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    .prologue
    .line 34
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    return-object v0
.end method

.method static synthetic access$200(Lde/schildbach/wallet/ui/CurrencyCalculatorLink;)Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/CurrencyCalculatorLink;

    .prologue
    .line 34
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    return-object v0
.end method

.method private update()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 143
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    iget-boolean v3, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->enabled:Z

    invoke-virtual {v2, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setEnabled(Z)V

    .line 145
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    iget-boolean v3, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->enabled:Z

    invoke-virtual {v2, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setEnabled(Z)V

    .line 148
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    iget-object v3, v3, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setCurrencySymbol(Ljava/lang/String;)V

    .line 150
    iget-boolean v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeDirection:Z

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getAmount()Ljava/math/BigInteger;

    move-result-object v0

    .line 153
    .local v0, "btcAmount":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    .line 155
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2, v4, v5}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setAmount(Ljava/math/BigInteger;Z)V

    .line 156
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    iget-object v3, v3, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    invoke-static {v0, v3}, Lde/schildbach/wallet/util/WalletUtils;->localValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHint(Ljava/math/BigInteger;)V

    .line 157
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2, v4}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHint(Ljava/math/BigInteger;)V

    .line 177
    .end local v0    # "btcAmount":Ljava/math/BigInteger;
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getAmount()Ljava/math/BigInteger;

    move-result-object v1

    .line 163
    .local v1, "localAmount":Ljava/math/BigInteger;
    if-eqz v1, :cond_0

    .line 165
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2, v4, v5}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setAmount(Ljava/math/BigInteger;Z)V

    .line 166
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    iget-object v3, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    iget-object v3, v3, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lde/schildbach/wallet/util/WalletUtils;->btcValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHint(Ljava/math/BigInteger;)V

    .line 167
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2, v4}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHint(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 173
    .end local v1    # "localAmount":Ljava/math/BigInteger;
    :cond_2
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2, v5}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setEnabled(Z)V

    .line 174
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2, v4}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHint(Ljava/math/BigInteger;)V

    .line 175
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2, v4}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setHint(Ljava/math/BigInteger;)V

    goto :goto_0
.end method


# virtual methods
.method public activeTextView()Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeDirection:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0
.end method

.method public getAmount()Ljava/math/BigInteger;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-boolean v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeDirection:Z

    if-eqz v2, :cond_1

    .line 123
    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getAmount()Ljava/math/BigInteger;

    move-result-object v1

    .line 132
    :cond_0
    :goto_0
    return-object v1

    .line 125
    :cond_1
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->getAmount()Ljava/math/BigInteger;

    move-result-object v0

    .line 128
    .local v0, "localAmount":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    iget-object v1, v1, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lde/schildbach/wallet/util/WalletUtils;->btcValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0
.end method

.method public getExchangeDirection()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeDirection:Z

    return v0
.end method

.method public hasAmount()Z
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->getAmount()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->activeTextView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 202
    return-void
.end method

.method public setBtcAmount(Ljava/math/BigInteger;)V
    .locals 3
    .param p1, "amount"    # Ljava/math/BigInteger;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 206
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    .line 207
    .local v0, "listener":Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;
    const/4 v1, 0x0

    iput-object v1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    .line 209
    iget-object v1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setAmount(Ljava/math/BigInteger;Z)V

    .line 211
    iput-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    .line 212
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->enabled:Z

    .line 108
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->update()V

    .line 109
    return-void
.end method

.method public setExchangeDirection(Z)V
    .locals 0
    .param p1, "exchangeDirection"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeDirection:Z

    .line 183
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->update()V

    .line 184
    return-void
.end method

.method public setExchangeRate(Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;)V
    .locals 0
    .param p1, "exchangeRate"    # Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 113
    iput-object p1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    .line 115
    invoke-direct {p0}, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->update()V

    .line 116
    return-void
.end method

.method public setListener(Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    iput-object p1, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->listener:Lde/schildbach/wallet/ui/CurrencyAmountView$Listener;

    .line 102
    return-void
.end method

.method public setNextFocusId(I)V
    .locals 1
    .param p1, "nextFocusId"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->btcAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v0, p1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setNextFocusId(I)V

    .line 217
    iget-object v0, p0, Lde/schildbach/wallet/ui/CurrencyCalculatorLink;->localAmountView:Lde/schildbach/wallet/ui/CurrencyAmountView;

    invoke-virtual {v0, p1}, Lde/schildbach/wallet/ui/CurrencyAmountView;->setNextFocusId(I)V

    .line 218
    return-void
.end method
