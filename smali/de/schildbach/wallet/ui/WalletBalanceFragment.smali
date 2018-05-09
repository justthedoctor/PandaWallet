.class public final Lde/schildbach/wallet/ui/WalletBalanceFragment;
.super Landroid/support/v4/app/Fragment;
.source "WalletBalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ID_BALANCE_LOADER:I = 0x0

.field private static final ID_RATE_LOADER:I = 0x1


# instance fields
.field private activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

.field private application:Lde/schildbach/wallet/WalletApplication;

.field private balance:Ljava/math/BigInteger;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final balanceLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private bestChainDate:Ljava/util/Date;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final broadcastReceiver:Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;

.field private config:Lde/schildbach/wallet/Configuration;

.field private download:I

.field private exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private loaderManager:Landroid/support/v4/app/LoaderManager;

.field private final rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private replaying:Z

.field private showLocalBalance:Z

.field private viewBalance:Landroid/view/View;

.field private viewBalanceBtc:Lde/schildbach/wallet/ui/CurrencyTextView;

.field private viewBalanceLocal:Lde/schildbach/wallet/ui/CurrencyTextView;

.field private viewBalanceLocalFrame:Landroid/widget/FrameLayout;

.field private viewProgress:Landroid/widget/TextView;

.field private wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 74
    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->balance:Ljava/math/BigInteger;

    .line 76
    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    .line 80
    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->bestChainDate:Ljava/util/Date;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->replaying:Z

    .line 257
    new-instance v0, Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;-><init>(Lde/schildbach/wallet/ui/WalletBalanceFragment;Lde/schildbach/wallet/ui/WalletBalanceFragment$1;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->broadcastReceiver:Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;

    .line 272
    new-instance v0, Lde/schildbach/wallet/ui/WalletBalanceFragment$2;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment$2;-><init>(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->balanceLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 294
    new-instance v0, Lde/schildbach/wallet/ui/WalletBalanceFragment$3;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment$3;-><init>(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$102(Lde/schildbach/wallet/ui/WalletBalanceFragment;I)I
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->download:I

    return p1
.end method

.method static synthetic access$202(Lde/schildbach/wallet/ui/WalletBalanceFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 58
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->bestChainDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$302(Lde/schildbach/wallet/ui/WalletBalanceFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->replaying:Z

    return p1
.end method

.method static synthetic access$400(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->updateView()V

    return-void
.end method

.method static synthetic access$500(Lde/schildbach/wallet/ui/WalletBalanceFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    return-object v0
.end method

.method static synthetic access$600(Lde/schildbach/wallet/ui/WalletBalanceFragment;)Lcom/google/bitcoin/core/Wallet;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    return-object v0
.end method

.method static synthetic access$702(Lde/schildbach/wallet/ui/WalletBalanceFragment;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;
    .param p1, "x1"    # Ljava/math/BigInteger;

    .prologue
    .line 58
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->balance:Ljava/math/BigInteger;

    return-object p1
.end method

.method static synthetic access$800(Lde/schildbach/wallet/ui/WalletBalanceFragment;)Lde/schildbach/wallet/Configuration;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->config:Lde/schildbach/wallet/Configuration;

    return-object v0
.end method

.method static synthetic access$902(Lde/schildbach/wallet/ui/WalletBalanceFragment;Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;)Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;
    .locals 0
    .param p0, "x0"    # Lde/schildbach/wallet/ui/WalletBalanceFragment;
    .param p1, "x1"    # Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    .prologue
    .line 58
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    return-object p1
.end method

.method private updateView()V
    .locals 23

    .prologue
    .line 171
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->isAdded()Z

    move-result v18

    if-nez v18, :cond_0

    .line 255
    :goto_0
    return-void

    .line 176
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->bestChainDate:Ljava/util/Date;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->bestChainDate:Ljava/util/Date;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v3, v18, v20

    .line 179
    .local v3, "blockchainLag":J
    const-wide/32 v18, 0x36ee80

    cmp-long v18, v3, v18

    if-gez v18, :cond_3

    const/4 v5, 0x1

    .line 180
    .local v5, "blockchainUptodate":Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->download:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    const/4 v8, 0x1

    .line 182
    .local v8, "downloadOk":Z
    :goto_2
    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->replaying:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    const/4 v15, 0x1

    .line 184
    .local v15, "showProgress":Z
    :goto_3
    if-eqz v8, :cond_6

    const v18, 0x7f0b0012

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "downloading":Ljava/lang/String;
    const-wide/32 v18, 0xa4cb800

    cmp-long v18, v3, v18

    if-gez v18, :cond_7

    .line 189
    const-wide/32 v18, 0x36ee80

    div-long v10, v3, v18

    .line 190
    .local v10, "hours":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewProgress:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f0b000e

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    .end local v3    # "blockchainLag":J
    .end local v5    # "blockchainUptodate":Z
    .end local v8    # "downloadOk":Z
    .end local v9    # "downloading":Ljava/lang/String;
    .end local v10    # "hours":J
    :goto_5
    if-nez v15, :cond_d

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalance:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 217
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->showLocalBalance:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocalFrame:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 220
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->balance:Ljava/math/BigInteger;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceBtc:Lde/schildbach/wallet/ui/CurrencyTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lde/schildbach/wallet/ui/CurrencyTextView;->setVisibility(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceBtc:Lde/schildbach/wallet/ui/CurrencyTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->config:Lde/schildbach/wallet/Configuration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lde/schildbach/wallet/Configuration;->getBtcPrecision()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->config:Lde/schildbach/wallet/Configuration;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPrecision(II)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceBtc:Lde/schildbach/wallet/ui/CurrencyTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->config:Lde/schildbach/wallet/Configuration;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lde/schildbach/wallet/Configuration;->getBtcPrefix()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPrefix(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceBtc:Lde/schildbach/wallet/ui/CurrencyTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->balance:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lde/schildbach/wallet/ui/CurrencyTextView;->setAmount(Ljava/math/BigInteger;)V

    .line 227
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->showLocalBalance:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->balance:Ljava/math/BigInteger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->rate:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lde/schildbach/wallet/util/WalletUtils;->localValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 232
    .local v12, "localValue":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocalFrame:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocal:Lde/schildbach/wallet/ui/CurrencyTextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lde/schildbach/wallet/Constants;->PREFIX_ALMOST_EQUAL_TO:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->exchangeRate:Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lde/schildbach/wallet/ExchangeRatesProvider$ExchangeRate;->currencyCode:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPrefix(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocal:Lde/schildbach/wallet/ui/CurrencyTextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lde/schildbach/wallet/ui/CurrencyTextView;->setAmount(Ljava/math/BigInteger;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocal:Lde/schildbach/wallet/ui/CurrencyTextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f08000c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lde/schildbach/wallet/ui/CurrencyTextView;->setTextColor(I)V

    .line 248
    .end local v12    # "localValue":Ljava/math/BigInteger;
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewProgress:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 179
    .end local v15    # "showProgress":Z
    .restart local v3    # "blockchainLag":J
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 180
    .restart local v5    # "blockchainUptodate":Z
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 182
    .restart local v8    # "downloadOk":Z
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 184
    .restart local v15    # "showProgress":Z
    :cond_6
    const v18, 0x7f0b0013

    goto/16 :goto_4

    .line 192
    .restart local v9    # "downloading":Ljava/lang/String;
    :cond_7
    const-wide/32 v18, 0x48190800

    cmp-long v18, v3, v18

    if-gez v18, :cond_8

    .line 194
    const-wide/32 v18, 0x5265c00

    div-long v6, v3, v18

    .line 195
    .local v6, "days":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewProgress:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f0b000f

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 197
    .end local v6    # "days":J
    :cond_8
    const-wide v18, 0x1cf7c5800L

    cmp-long v18, v3, v18

    if-gez v18, :cond_9

    .line 199
    const-wide/32 v18, 0x240c8400

    div-long v16, v3, v18

    .line 200
    .local v16, "weeks":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewProgress:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f0b0010

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 204
    .end local v16    # "weeks":J
    :cond_9
    const-wide v18, 0x9a7ec800L

    div-long v13, v3, v18

    .line 205
    .local v13, "months":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewProgress:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x7f0b0011

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v9, v20, v21

    const/16 v21, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 210
    .end local v3    # "blockchainLag":J
    .end local v5    # "blockchainUptodate":Z
    .end local v8    # "downloadOk":Z
    .end local v9    # "downloading":Ljava/lang/String;
    .end local v13    # "months":J
    .end local v15    # "showProgress":Z
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "showProgress":Z
    goto/16 :goto_5

    .line 239
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocalFrame:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 245
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceBtc:Lde/schildbach/wallet/ui/CurrencyTextView;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lde/schildbach/wallet/ui/CurrencyTextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 252
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewProgress:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalance:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 92
    check-cast v0, Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->application:Lde/schildbach/wallet/WalletApplication;

    .line 94
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getConfiguration()Lde/schildbach/wallet/Configuration;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->config:Lde/schildbach/wallet/Configuration;

    .line 95
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->application:Lde/schildbach/wallet/WalletApplication;

    invoke-virtual {v0}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 96
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    .line 98
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->showLocalBalance:Z

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const v0, 0x7f03003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 162
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 164
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->broadcastReceiver:Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 150
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->broadcastReceiver:Lde/schildbach/wallet/ui/WalletBalanceFragment$BlockchainBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lde/schildbach/wallet/service/BlockchainService;->ACTION_BLOCKCHAIN_STATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->balanceLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 153
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->loaderManager:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->rateLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 155
    invoke-direct {p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->updateView()V

    .line 156
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 114
    .local v0, "showExchangeRatesOption":Z
    const v1, 0x7f060095

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalance:Landroid/view/View;

    .line 115
    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalance:Landroid/view/View;

    new-instance v2, Lde/schildbach/wallet/ui/WalletBalanceFragment$1;

    invoke-direct {v2, p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment$1;-><init>(Lde/schildbach/wallet/ui/WalletBalanceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    :goto_0
    const v1, 0x7f060096

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/schildbach/wallet/ui/CurrencyTextView;

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceBtc:Lde/schildbach/wallet/ui/CurrencyTextView;

    .line 133
    const v1, 0x7f060097

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocalFrame:Landroid/widget/FrameLayout;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocalFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletBalanceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_0
    const v1, 0x7f060098

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/schildbach/wallet/ui/CurrencyTextView;

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocal:Lde/schildbach/wallet/ui/CurrencyTextView;

    .line 138
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocal:Lde/schildbach/wallet/ui/CurrencyTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v4}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPrecision(II)V

    .line 139
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocal:Lde/schildbach/wallet/ui/CurrencyTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/CurrencyTextView;->setInsignificantRelativeSize(F)V

    .line 140
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalanceLocal:Lde/schildbach/wallet/ui/CurrencyTextView;

    sget-boolean v2, Lde/schildbach/wallet/Constants;->TEST:Z

    invoke-virtual {v1, v2}, Lde/schildbach/wallet/ui/CurrencyTextView;->setStrikeThru(Z)V

    .line 142
    const v1, 0x7f060099

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewProgress:Landroid/widget/TextView;

    .line 143
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lde/schildbach/wallet/ui/WalletBalanceFragment;->viewBalance:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
