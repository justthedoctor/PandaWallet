.class public Lde/schildbach/wallet/ui/TransactionsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TransactionsListAdapter.java"


# static fields
.field private static final CACHE_NULL_MARKER:Ljava/lang/String; = ""

.field private static final CONFIDENCE_SYMBOL_DEAD:Ljava/lang/String; = "\u271d"

.field private static final CONFIDENCE_SYMBOL_UNKNOWN:Ljava/lang/String; = "?"

.field private static final VIEW_TYPE_TRANSACTION:I = 0x0

.field private static final VIEW_TYPE_WARNING:I = 0x1


# instance fields
.field private final colorCircularBuilding:I

.field private final colorError:I

.field private final colorInsignificant:I

.field private final colorSignificant:I

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final labelCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxConnectedPeers:I

.field private precision:I

.field private shift:I

.field private showBackupWarning:Z

.field private showEmptyText:Z

.field private final textCoinBase:Ljava/lang/String;

.field private final textInternal:Ljava/lang/String;

.field private final transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "maxConnectedPeers"    # I
    .param p4, "showBackupWarning"    # Z

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    .line 67
    iput v2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->precision:I

    .line 68
    iput v2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->shift:I

    .line 69
    iput-boolean v2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->showEmptyText:Z

    .line 70
    iput-boolean v2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->showBackupWarning:Z

    .line 75
    const-string v1, "#44ff44"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorCircularBuilding:I

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->labelCache:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->context:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 93
    iput-object p2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 94
    iput p3, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->maxConnectedPeers:I

    .line 95
    iput-boolean p4, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->showBackupWarning:Z

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorSignificant:I

    .line 99
    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorInsignificant:I

    .line 100
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorError:I

    .line 101
    const v1, 0x7f0b0029

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->textCoinBase:Ljava/lang/String;

    .line 102
    const v1, 0x7f0b002a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->textInternal:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private resolveLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 386
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->labelCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    .local v0, "cachedLabel":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 389
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 391
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->labelCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    .end local v0    # "cachedLabel":Ljava/lang/String;
    .end local v1    # "label":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 393
    .restart local v0    # "cachedLabel":Ljava/lang/String;
    .restart local v1    # "label":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->labelCache:Ljava/util/Map;

    const-string v3, ""

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 398
    .end local v1    # "label":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    if-eq v0, v2, :cond_2

    .end local v0    # "cachedLabel":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "cachedLabel":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/google/bitcoin/core/Transaction;)V
    .locals 27
    .param p1, "row"    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v4

    .line 226
    .local v4, "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v5

    .line 227
    .local v5, "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence;->getSource()Lcom/google/bitcoin/core/TransactionConfidence$Source;

    move-result-object v24

    sget-object v25, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual/range {v24 .. v25}, Lcom/google/bitcoin/core/TransactionConfidence$Source;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 228
    .local v8, "isOwn":Z
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Transaction;->isCoinBase()Z

    move-result v6

    .line 229
    .local v6, "isCoinBase":Z
    invoke-static/range {p2 .. p2}, Lde/schildbach/wallet/util/WalletUtils;->isInternal(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v7

    .line 231
    .local v7, "isInternal":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->wallet:Lcom/google/bitcoin/core/Wallet;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->getValue(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v23

    .line 232
    .local v23, "value":Ljava/math/BigInteger;
    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->signum()I

    move-result v24

    if-gez v24, :cond_2

    const/16 v20, 0x1

    .line 234
    .local v20, "sent":Z
    :goto_0
    const v24, 0x7f06007e

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lde/schildbach/wallet/util/CircularProgressView;

    .line 235
    .local v13, "rowConfidenceCircular":Lde/schildbach/wallet/util/CircularProgressView;
    const v24, 0x7f06007f

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 238
    .local v14, "rowConfidenceTextual":Landroid/widget/TextView;
    sget-object v24, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_3

    .line 240
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setVisibility(I)V

    .line 241
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setProgress(I)V

    .line 244
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setMaxProgress(I)V

    .line 245
    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setSize(I)V

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->maxConnectedPeers:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setMaxSize(I)V

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorInsignificant:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorInsignificant:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Lde/schildbach/wallet/util/CircularProgressView;->setColors(II)V

    .line 280
    :goto_1
    sget-object v24, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_7

    .line 281
    const/high16 v21, -0x10000

    .line 286
    .local v21, "textColor":I
    :goto_2
    const v24, 0x7f060080

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 287
    .local v18, "rowTime":Landroid/widget/TextView;
    if-eqz v18, :cond_0

    .line 289
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v22

    .line 290
    .local v22, "time":Ljava/util/Date;
    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v25

    invoke-static/range {v24 .. v26}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v24

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    .end local v22    # "time":Ljava/util/Date;
    :cond_0
    const v24, 0x7f060081

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 296
    .local v16, "rowFromTo":Landroid/widget/TextView;
    if-eqz v7, :cond_a

    .line 297
    const v24, 0x7f0b010b

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 302
    :goto_4
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    const v24, 0x7f060082

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 306
    .local v12, "rowCoinbase":Landroid/view/View;
    if-eqz v6, :cond_c

    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 309
    const v24, 0x7f060083

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 310
    .local v11, "rowAddress":Landroid/widget/TextView;
    if-eqz v20, :cond_d

    invoke-static/range {p2 .. p2}, Lde/schildbach/wallet/util/WalletUtils;->getFirstToAddress(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Address;

    move-result-object v3

    .line 312
    .local v3, "address":Lcom/google/bitcoin/core/Address;
    :goto_6
    if-eqz v6, :cond_e

    .line 313
    move-object/from16 v0, p0

    iget-object v10, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->textCoinBase:Ljava/lang/String;

    .line 320
    .local v10, "label":Ljava/lang/String;
    :goto_7
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    if-eqz v10, :cond_11

    move-object/from16 v24, v10

    :goto_8
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    if-eqz v10, :cond_12

    sget-object v24, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_9
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 325
    const v24, 0x7f060084

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lde/schildbach/wallet/ui/CurrencyTextView;

    .line 326
    .local v19, "rowValue":Lde/schildbach/wallet/ui/CurrencyTextView;
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyTextView;->setTextColor(I)V

    .line 327
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyTextView;->setAlwaysSigned(Z)V

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->precision:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->shift:I

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lde/schildbach/wallet/ui/CurrencyTextView;->setPrecision(II)V

    .line 329
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/CurrencyTextView;->setAmount(Ljava/math/BigInteger;)V

    .line 332
    const v24, 0x7f060085

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 333
    .local v15, "rowExtend":Landroid/view/View;
    if-eqz v15, :cond_1

    .line 335
    const v24, 0x7f060086

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 336
    .local v17, "rowMessage":Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Transaction;->isTimeLocked()Z

    move-result v9

    .line 337
    .local v9, "isTimeLocked":Z
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/google/bitcoin/core/Transaction;->getPurpose()Lcom/google/bitcoin/core/Transaction$Purpose;

    move-result-object v24

    sget-object v25, Lcom/google/bitcoin/core/Transaction$Purpose;->KEY_ROTATION:Lcom/google/bitcoin/core/Transaction$Purpose;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 341
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0b0089

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorSignificant:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    .end local v9    # "isTimeLocked":Z
    .end local v17    # "rowMessage":Landroid/widget/TextView;
    :cond_1
    :goto_a
    return-void

    .line 232
    .end local v3    # "address":Lcom/google/bitcoin/core/Address;
    .end local v10    # "label":Ljava/lang/String;
    .end local v11    # "rowAddress":Landroid/widget/TextView;
    .end local v12    # "rowCoinbase":Landroid/view/View;
    .end local v13    # "rowConfidenceCircular":Lde/schildbach/wallet/util/CircularProgressView;
    .end local v14    # "rowConfidenceTextual":Landroid/widget/TextView;
    .end local v15    # "rowExtend":Landroid/view/View;
    .end local v16    # "rowFromTo":Landroid/widget/TextView;
    .end local v18    # "rowTime":Landroid/widget/TextView;
    .end local v19    # "rowValue":Lde/schildbach/wallet/ui/CurrencyTextView;
    .end local v20    # "sent":Z
    .end local v21    # "textColor":I
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 249
    .restart local v13    # "rowConfidenceCircular":Lde/schildbach/wallet/util/CircularProgressView;
    .restart local v14    # "rowConfidenceTextual":Landroid/widget/TextView;
    .restart local v20    # "sent":Z
    :cond_3
    sget-object v24, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_5

    .line 251
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setVisibility(I)V

    .line 252
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setProgress(I)V

    .line 255
    if-eqz v6, :cond_4

    sget-object v24, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual/range {v24 .. v24}, Lcom/google/bitcoin/core/NetworkParameters;->getSpendableCoinbaseDepth()I

    move-result v24

    :goto_b
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setMaxProgress(I)V

    .line 257
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setSize(I)V

    .line 258
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setMaxSize(I)V

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorCircularBuilding:I

    move/from16 v24, v0

    const v25, -0xbbbbbc

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Lde/schildbach/wallet/util/CircularProgressView;->setColors(II)V

    goto/16 :goto_1

    .line 255
    :cond_4
    const/16 v24, 0x7

    goto :goto_b

    .line 261
    :cond_5
    sget-object v24, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_6

    .line 263
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setVisibility(I)V

    .line 264
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    const-string v24, "\u271d"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const/high16 v24, -0x10000

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 271
    :cond_6
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lde/schildbach/wallet/util/CircularProgressView;->setVisibility(I)V

    .line 272
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    const-string v24, "?"

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorInsignificant:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 283
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/google/bitcoin/wallet/DefaultCoinSelector;->isSelectable(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorSignificant:I

    move/from16 v21, v0

    .restart local v21    # "textColor":I
    :goto_c
    goto/16 :goto_2

    .end local v21    # "textColor":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorInsignificant:I

    move/from16 v21, v0

    goto :goto_c

    .line 290
    .restart local v18    # "rowTime":Landroid/widget/TextView;
    .restart local v21    # "textColor":I
    .restart local v22    # "time":Ljava/util/Date;
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 298
    .end local v22    # "time":Ljava/util/Date;
    .restart local v16    # "rowFromTo":Landroid/widget/TextView;
    :cond_a
    if-eqz v20, :cond_b

    .line 299
    const v24, 0x7f0b0109

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 301
    :cond_b
    const v24, 0x7f0b010a

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 306
    .restart local v12    # "rowCoinbase":Landroid/view/View;
    :cond_c
    const/16 v24, 0x8

    goto/16 :goto_5

    .line 310
    .restart local v11    # "rowAddress":Landroid/widget/TextView;
    :cond_d
    invoke-static/range {p2 .. p2}, Lde/schildbach/wallet/util/WalletUtils;->getFirstFromAddress(Lcom/google/bitcoin/core/Transaction;)Lcom/google/bitcoin/core/Address;

    move-result-object v3

    goto/16 :goto_6

    .line 314
    .restart local v3    # "address":Lcom/google/bitcoin/core/Address;
    :cond_e
    if-eqz v7, :cond_f

    .line 315
    move-object/from16 v0, p0

    iget-object v10, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->textInternal:Ljava/lang/String;

    .restart local v10    # "label":Ljava/lang/String;
    goto/16 :goto_7

    .line 316
    .end local v10    # "label":Ljava/lang/String;
    :cond_f
    if-eqz v3, :cond_10

    .line 317
    invoke-virtual {v3}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->resolveLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "label":Ljava/lang/String;
    goto/16 :goto_7

    .line 319
    .end local v10    # "label":Ljava/lang/String;
    :cond_10
    const-string v10, "?"

    .restart local v10    # "label":Ljava/lang/String;
    goto/16 :goto_7

    .line 321
    :cond_11
    invoke-virtual {v3}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_8

    .line 322
    :cond_12
    sget-object v24, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto/16 :goto_9

    .line 345
    .restart local v9    # "isTimeLocked":Z
    .restart local v15    # "rowExtend":Landroid/view/View;
    .restart local v17    # "rowMessage":Landroid/widget/TextView;
    .restart local v19    # "rowValue":Lde/schildbach/wallet/ui/CurrencyTextView;
    :cond_13
    if-eqz v8, :cond_14

    sget-object v24, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_14

    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v24

    if-nez v24, :cond_14

    .line 347
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 348
    const v24, 0x7f0b008a

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorInsignificant:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 351
    :cond_14
    if-nez v8, :cond_15

    sget-object v24, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_15

    invoke-virtual {v4}, Lcom/google/bitcoin/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v24

    if-nez v24, :cond_15

    .line 353
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    const v24, 0x7f0b008b

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorInsignificant:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 357
    :cond_15
    if-nez v20, :cond_16

    sget-object v24, Lcom/google/bitcoin/core/Transaction;->MIN_NONDUST_OUTPUT:Ljava/math/BigInteger;

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-gez v24, :cond_16

    .line 359
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 360
    const v24, 0x7f0b008f

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorInsignificant:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 363
    :cond_16
    if-nez v20, :cond_17

    sget-object v24, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_17

    if-eqz v9, :cond_17

    .line 365
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 366
    const v24, 0x7f0b008d

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorError:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 369
    :cond_17
    if-nez v20, :cond_18

    sget-object v24, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_18

    if-nez v9, :cond_18

    .line 371
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 372
    const v24, 0x7f0b008c

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorInsignificant:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 375
    :cond_18
    if-nez v20, :cond_1

    sget-object v24, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v24

    if-ne v5, v0, :cond_1

    .line 377
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const v24, 0x7f0b008e

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->colorError:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method public clearLabelCache()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->labelCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 406
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->notifyDataSetChanged()V

    .line 407
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 149
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->showBackupWarning:Z

    if-eqz v1, :cond_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 152
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/google/bitcoin/core/Transaction;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->showBackupWarning:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->getItem(I)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->showBackupWarning:Z

    if-eqz v0, :cond_0

    .line 168
    const-wide/16 v0, 0x0

    .line 170
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-static {v0}, Lde/schildbach/wallet/util/WalletUtils;->longHash(Lcom/google/bitcoin/core/Sha256Hash;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->showBackupWarning:Z

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "row"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->getItemViewType(I)I

    move-result v2

    .line 199
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 201
    if-nez p2, :cond_0

    .line 202
    iget-object v3, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030033

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->getItem(I)Lcom/google/bitcoin/core/Transaction;

    move-result-object v1

    .line 205
    .local v1, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual {p0, p2, v1}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->bindView(Landroid/view/View;Lcom/google/bitcoin/core/Transaction;)V

    .line 220
    .end local v1    # "tx":Lcom/google/bitcoin/core/Transaction;
    :goto_0
    return-object p2

    .line 207
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 209
    if-nez p2, :cond_2

    .line 210
    iget-object v3, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030035

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 212
    :cond_2
    const v3, 0x7f060087

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    .local v0, "messageView":Landroid/widget/TextView;
    iget-object v3, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0b0028

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    .end local v0    # "messageView":Landroid/widget/TextView;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->showEmptyText:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Lcom/google/bitcoin/core/Transaction;)V
    .locals 1
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 122
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->notifyDataSetChanged()V

    .line 126
    return-void
.end method

.method public replace(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "transactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/bitcoin/core/Transaction;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->transactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->showEmptyText:Z

    .line 135
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->notifyDataSetChanged()V

    .line 136
    return-void
.end method

.method public setPrecision(II)V
    .locals 0
    .param p1, "precision"    # I
    .param p2, "shift"    # I

    .prologue
    .line 107
    iput p1, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->precision:I

    .line 108
    iput p2, p0, Lde/schildbach/wallet/ui/TransactionsListAdapter;->shift:I

    .line 110
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->notifyDataSetChanged()V

    .line 111
    return-void
.end method
