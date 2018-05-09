.class final Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BlockListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/BlockListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BlockListAdapter"
.end annotation


# static fields
.field private static final ROW_BASE_CHILD_COUNT:I = 0x2

.field private static final ROW_INSERT_INDEX:I = 0x1


# instance fields
.field private final blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lde/schildbach/wallet/ui/BlockListFragment;

.field private final transactionsAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;


# direct methods
.method private constructor <init>(Lde/schildbach/wallet/ui/BlockListFragment;)V
    .locals 5

    .prologue
    .line 232
    iput-object p1, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 236
    new-instance v0, Lde/schildbach/wallet/ui/TransactionsListAdapter;

    iget-object v1, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/BlockListFragment;->access$500(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v1

    iget-object v2, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/BlockListFragment;->access$600(Lde/schildbach/wallet/ui/BlockListFragment;)Lcom/google/bitcoin/core/Wallet;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v3}, Lde/schildbach/wallet/ui/BlockListFragment;->access$700(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/WalletApplication;

    move-result-object v3

    invoke-virtual {v3}, Lde/schildbach/wallet/WalletApplication;->maxConnectedPeers()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lde/schildbach/wallet/ui/TransactionsListAdapter;-><init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;IZ)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->transactionsAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->blocks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lde/schildbach/wallet/ui/BlockListFragment;Lde/schildbach/wallet/ui/BlockListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lde/schildbach/wallet/ui/BlockListFragment;
    .param p2, "x1"    # Lde/schildbach/wallet/ui/BlockListFragment$1;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;-><init>(Lde/schildbach/wallet/ui/BlockListFragment;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/BlockListFragment;->access$400(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->notifyDataSetChanged()V

    .line 246
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/google/bitcoin/core/StoredBlock;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->blocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/StoredBlock;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->getItem(I)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->blocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/StoredBlock;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v0

    invoke-static {v0}, Lde/schildbach/wallet/util/WalletUtils;->longHash(Lcom/google/bitcoin/core/Sha256Hash;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 284
    if-nez p2, :cond_1

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lde/schildbach/wallet/ui/BlockListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f030019

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 289
    .local v17, "row":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->getItem(I)Lcom/google/bitcoin/core/StoredBlock;

    move-result-object v21

    .line 290
    .local v21, "storedBlock":Lcom/google/bitcoin/core/StoredBlock;
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredBlock;->getHeader()Lcom/google/bitcoin/core/Block;

    move-result-object v12

    .line 292
    .local v12, "header":Lcom/google/bitcoin/core/Block;
    const v2, 0x7f060032

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 293
    .local v19, "rowHeight":Landroid/widget/TextView;
    invoke-virtual/range {v21 .. v21}, Lcom/google/bitcoin/core/StoredBlock;->getHeight()I

    move-result v13

    .line 294
    .local v13, "height":I
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const v2, 0x7f060033

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 297
    .local v20, "rowTime":Landroid/widget/TextView;
    invoke-virtual {v12}, Lcom/google/bitcoin/core/Block;->getTimeSeconds()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v3, v5, v7

    .line 298
    .local v3, "timeMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/BlockListFragment;->access$500(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-result-object v2

    const-wide/32 v5, 0xea60

    const-wide/32 v7, 0x240c8400

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const v2, 0x7f060034

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 301
    .local v18, "rowHash":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-static {v2, v5, v6, v7, v8}, Lde/schildbach/wallet/util/WalletUtils;->formatHash(Ljava/lang/String;Ljava/lang/String;IIC)Landroid/text/Editable;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v22, v2, -0x2

    .line 304
    .local v22, "transactionChildCount":I
    const/4 v15, 0x0

    .line 306
    .local v15, "iTransactionView":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/BlockListFragment;->access$800(Lde/schildbach/wallet/ui/BlockListFragment;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/BlockListFragment;->access$900(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lde/schildbach/wallet/Configuration;->getBtcPrecision()I

    move-result v10

    .line 309
    .local v10, "btcPrecision":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/BlockListFragment;->access$900(Lde/schildbach/wallet/ui/BlockListFragment;)Lde/schildbach/wallet/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lde/schildbach/wallet/Configuration;->getBtcShift()I

    move-result v11

    .line 311
    .local v11, "btcShift":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->transactionsAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    invoke-virtual {v2, v10, v11}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->setPrecision(II)V

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/BlockListFragment;->access$800(Lde/schildbach/wallet/ui/BlockListFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/bitcoin/core/Transaction;

    .line 315
    .local v23, "tx":Lcom/google/bitcoin/core/Transaction;
    invoke-virtual/range {v23 .. v23}, Lcom/google/bitcoin/core/Transaction;->getAppearsInHashes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v12}, Lcom/google/bitcoin/core/Block;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    move/from16 v0, v22

    if-ge v15, v0, :cond_2

    .line 320
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 328
    .local v24, "view":Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->transactionsAdapter:Lde/schildbach/wallet/ui/TransactionsListAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Lde/schildbach/wallet/ui/TransactionsListAdapter;->bindView(Landroid/view/View;Lcom/google/bitcoin/core/Transaction;)V

    .line 330
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v3    # "timeMs":J
    .end local v10    # "btcPrecision":I
    .end local v11    # "btcShift":I
    .end local v12    # "header":Lcom/google/bitcoin/core/Block;
    .end local v13    # "height":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "iTransactionView":I
    .end local v17    # "row":Landroid/view/ViewGroup;
    .end local v18    # "rowHash":Landroid/widget/TextView;
    .end local v19    # "rowHeight":Landroid/widget/TextView;
    .end local v20    # "rowTime":Landroid/widget/TextView;
    .end local v21    # "storedBlock":Lcom/google/bitcoin/core/StoredBlock;
    .end local v22    # "transactionChildCount":I
    .end local v23    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v24    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v17, p2

    .line 287
    check-cast v17, Landroid/view/ViewGroup;

    .restart local v17    # "row":Landroid/view/ViewGroup;
    goto/16 :goto_0

    .line 324
    .restart local v3    # "timeMs":J
    .restart local v10    # "btcPrecision":I
    .restart local v11    # "btcShift":I
    .restart local v12    # "header":Lcom/google/bitcoin/core/Block;
    .restart local v13    # "height":I
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "iTransactionView":I
    .restart local v18    # "rowHash":Landroid/widget/TextView;
    .restart local v19    # "rowHeight":Landroid/widget/TextView;
    .restart local v20    # "rowTime":Landroid/widget/TextView;
    .restart local v21    # "storedBlock":Lcom/google/bitcoin/core/StoredBlock;
    .restart local v22    # "transactionChildCount":I
    .restart local v23    # "tx":Lcom/google/bitcoin/core/Transaction;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->this$0:Lde/schildbach/wallet/ui/BlockListFragment;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lde/schildbach/wallet/ui/BlockListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f030034

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 325
    .restart local v24    # "view":Landroid/view/View;
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 335
    .end local v10    # "btcPrecision":I
    .end local v11    # "btcShift":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v23    # "tx":Lcom/google/bitcoin/core/Transaction;
    .end local v24    # "view":Landroid/view/View;
    :cond_3
    sub-int v16, v22, v15

    .line 336
    .local v16, "leftoverTransactionViews":I
    if-lez v16, :cond_4

    .line 337
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 339
    :cond_4
    return-object v17
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    return v0
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
            "Lcom/google/bitcoin/core/StoredBlock;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/bitcoin/core/StoredBlock;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->blocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/BlockListFragment$BlockListAdapter;->notifyDataSetChanged()V

    .line 254
    return-void
.end method
