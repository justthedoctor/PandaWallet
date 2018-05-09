.class final Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "ExchangeRatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/ExchangeRatesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExchangeRatesAdapter"
.end annotation


# instance fields
.field private rateBase:Ljava/math/BigInteger;

.field final synthetic this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;


# direct methods
.method private constructor <init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    iput-object p1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    .line 309
    const v0, 0x7f03001c

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 305
    sget-object v0, Lde/schildbach/wallet/util/GenericUtils;->ONE_BTC:Ljava/math/BigInteger;

    iput-object v0, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->rateBase:Ljava/math/BigInteger;

    .line 310
    return-void
.end method

.method synthetic constructor <init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Landroid/content/Context;Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lde/schildbach/wallet/ui/ExchangeRatesFragment$1;

    .prologue
    .line 303
    invoke-direct {p0, p1, p2}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;-><init>(Lde/schildbach/wallet/ui/ExchangeRatesFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 322
    invoke-static {p3}, Lde/schildbach/wallet/ExchangeRatesProvider;->getExchangeRate(Landroid/database/Cursor;)Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-result-object v2

    .line 323
    .local v2, "exchangeRate":Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    iget-object v6, v2, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    iget-object v8, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v8}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$700(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 325
    .local v3, "isDefaultCurrency":Z
    if-eqz v3, :cond_0

    const v6, 0x7f080014

    :goto_0
    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 327
    const v6, 0x7f060039

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 328
    .local v1, "defaultView":Landroid/view/View;
    if-eqz v3, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 330
    const v6, 0x7f060037

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    .local v0, "currencyCodeView":Landroid/widget/TextView;
    iget-object v6, v2, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const v6, 0x7f060038

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lde/schildbach/wallet/ui/CurrencyTextView;

    .line 334
    .local v4, "rateView":Lde/schildbach/wallet/ui/CurrencyTextView;
    invoke-virtual {v4, v9, v7}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPrecision(II)V

    .line 335
    iget-object v6, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->rateBase:Ljava/math/BigInteger;

    iget-object v8, v2, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    invoke-static {v6, v8}, Lde/schildbach/wallet/util/WalletUtils;->localValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Lde/schildbach/wallet/ui/CurrencyTextView;->setAmount(Ljava/math/BigInteger;)V

    .line 337
    const v6, 0x7f06003a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lde/schildbach/wallet/ui/CurrencyTextView;

    .line 338
    .local v5, "walletView":Lde/schildbach/wallet/ui/CurrencyTextView;
    invoke-virtual {v5, v9, v7}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPrecision(II)V

    .line 339
    iget-object v6, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v6}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$300(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 341
    iget-object v6, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-static {v6}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->access$900(Lde/schildbach/wallet/ui/ExchangeRatesFragment;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, v2, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    invoke-static {v6, v7}, Lde/schildbach/wallet/util/WalletUtils;->localValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/schildbach/wallet/ui/CurrencyTextView;->setAmount(Ljava/math/BigInteger;)V

    .line 342
    sget-boolean v6, Lde/schildbach/wallet/Constants;->TEST:Z

    invoke-virtual {v5, v6}, Lde/schildbach/wallet/ui/CurrencyTextView;->setStrikeThru(Z)V

    .line 349
    :goto_2
    iget-object v6, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->this$0:Lde/schildbach/wallet/ui/ExchangeRatesFragment;

    invoke-virtual {v6}, Lde/schildbach/wallet/ui/ExchangeRatesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lde/schildbach/wallet/ui/CurrencyTextView;->setTextColor(I)V

    .line 350
    return-void

    .line 325
    .end local v0    # "currencyCodeView":Landroid/widget/TextView;
    .end local v1    # "defaultView":Landroid/view/View;
    .end local v4    # "rateView":Lde/schildbach/wallet/ui/CurrencyTextView;
    .end local v5    # "walletView":Lde/schildbach/wallet/ui/CurrencyTextView;
    :cond_0
    const v6, 0x7f080013

    goto :goto_0

    .line 328
    .restart local v1    # "defaultView":Landroid/view/View;
    :cond_1
    const/4 v6, 0x4

    goto :goto_1

    .line 346
    .restart local v0    # "currencyCodeView":Landroid/widget/TextView;
    .restart local v4    # "rateView":Lde/schildbach/wallet/ui/CurrencyTextView;
    .restart local v5    # "walletView":Lde/schildbach/wallet/ui/CurrencyTextView;
    :cond_2
    const-string v6, "n/a"

    invoke-virtual {v5, v6}, Lde/schildbach/wallet/ui/CurrencyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v5, v7}, Lde/schildbach/wallet/ui/CurrencyTextView;->setStrikeThru(Z)V

    goto :goto_2
.end method

.method public setRateBase(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "rateBase"    # Ljava/math/BigInteger;

    .prologue
    .line 314
    iput-object p1, p0, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->rateBase:Ljava/math/BigInteger;

    .line 316
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ExchangeRatesFragment$ExchangeRatesAdapter;->notifyDataSetChanged()V

    .line 317
    return-void
.end method
