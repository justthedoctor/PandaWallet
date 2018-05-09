.class Lcom/google/bitcoin/core/Wallet$FeeCalculation;
.super Ljava/lang/Object;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeeCalculation"
.end annotation


# instance fields
.field private bestChangeOutput:Lcom/google/bitcoin/core/TransactionOutput;

.field private bestCoinSelection:Lcom/google/bitcoin/wallet/CoinSelection;

.field final synthetic this$0:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Wallet$SendRequest;Ljava/math/BigInteger;Ljava/util/List;ZLjava/util/LinkedList;)V
    .locals 30
    .param p2, "req"    # Lcom/google/bitcoin/core/Wallet$SendRequest;
    .param p3, "value"    # Ljava/math/BigInteger;
    .param p5, "needAtLeastReferenceFee"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet$SendRequest;",
            "Ljava/math/BigInteger;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/TransactionInput;",
            ">;Z",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/bitcoin/core/InsufficientMoneyException;
        }
    .end annotation

    .prologue
    .line 3417
    .local p4, "originalInputs":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/TransactionInput;>;"
    .local p6, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/bitcoin/core/TransactionOutput;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->this$0:Lcom/google/bitcoin/core/Wallet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3418
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3426
    const/4 v3, 0x0

    .line 3427
    .local v3, "additionalValueForNextCategory":Ljava/math/BigInteger;
    const/16 v22, 0x0

    .line 3428
    .local v22, "selection3":Lcom/google/bitcoin/wallet/CoinSelection;
    const/16 v20, 0x0

    .line 3429
    .local v20, "selection2":Lcom/google/bitcoin/wallet/CoinSelection;
    const/16 v21, 0x0

    .line 3430
    .local v21, "selection2Change":Lcom/google/bitcoin/core/TransactionOutput;
    const/16 v18, 0x0

    .line 3431
    .local v18, "selection1":Lcom/google/bitcoin/wallet/CoinSelection;
    const/16 v19, 0x0

    .line 3434
    .local v19, "selection1Change":Lcom/google/bitcoin/core/TransactionOutput;
    const/4 v14, 0x0

    .line 3435
    .local v14, "lastCalculatedSize":I
    const/16 v25, 0x0

    .line 3437
    .local v25, "valueMissing":Ljava/math/BigInteger;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->resetTxInputs(Lcom/google/bitcoin/core/Wallet$SendRequest;Ljava/util/List;)V

    .line 3439
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->fee:Ljava/math/BigInteger;

    move-object/from16 v27, v0

    if-nez v27, :cond_4

    sget-object v10, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 3440
    .local v10, "fees":Ljava/math/BigInteger;
    :goto_1
    if-lez v14, :cond_5

    .line 3442
    div-int/lit16 v0, v14, 0x3e8

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v27

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->feePerKb:Ljava/math/BigInteger;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 3446
    :goto_2
    if-eqz p5, :cond_1

    sget-object v27, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v27

    if-gez v27, :cond_1

    .line 3447
    sget-object v10, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    .line 3449
    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    .line 3450
    .local v26, "valueNeeded":Ljava/math/BigInteger;
    if-eqz v3, :cond_2

    .line 3451
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    .line 3452
    :cond_2
    move-object v4, v3

    .line 3455
    .local v4, "additionalValueSelected":Ljava/math/BigInteger;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    move-object/from16 v27, v0

    if-nez v27, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    move-object/from16 v23, v0

    .line 3457
    .local v23, "selector":Lcom/google/bitcoin/wallet/CoinSelector;
    :goto_3
    new-instance v27, Ljava/util/LinkedList;

    move-object/from16 v0, v27

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lcom/google/bitcoin/wallet/CoinSelector;->select(Ljava/math/BigInteger;Ljava/util/LinkedList;)Lcom/google/bitcoin/wallet/CoinSelection;

    move-result-object v17

    .line 3459
    .local v17, "selection":Lcom/google/bitcoin/wallet/CoinSelection;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v27

    if-gez v27, :cond_7

    .line 3460
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    .line 3562
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->resetTxInputs(Lcom/google/bitcoin/core/Wallet$SendRequest;Ljava/util/List;)V

    .line 3564
    if-nez v22, :cond_1a

    if-nez v20, :cond_1a

    if-nez v18, :cond_1a

    .line 3565
    invoke-static/range {v25 .. v25}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3566
    invoke-static {}, Lcom/google/bitcoin/core/Wallet;->access$900()Lorg/slf4j/Logger;

    move-result-object v27

    const-string v28, "Insufficient value in wallet for send: needed {} more"

    invoke-static/range {v25 .. v25}, Lcom/google/bitcoin/core/Utils;->bitcoinValueToFriendlyString(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v27 .. v29}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3567
    new-instance v27, Lcom/google/bitcoin/core/InsufficientMoneyException;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/bitcoin/core/InsufficientMoneyException;-><init>(Ljava/math/BigInteger;)V

    throw v27

    .line 3439
    .end local v4    # "additionalValueSelected":Ljava/math/BigInteger;
    .end local v10    # "fees":Ljava/math/BigInteger;
    .end local v17    # "selection":Lcom/google/bitcoin/wallet/CoinSelection;
    .end local v23    # "selector":Lcom/google/bitcoin/wallet/CoinSelector;
    .end local v26    # "valueNeeded":Ljava/math/BigInteger;
    :cond_4
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->fee:Ljava/math/BigInteger;

    goto/16 :goto_1

    .line 3444
    .restart local v10    # "fees":Ljava/math/BigInteger;
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->feePerKb:Ljava/math/BigInteger;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    goto/16 :goto_2

    .line 3455
    .restart local v4    # "additionalValueSelected":Ljava/math/BigInteger;
    .restart local v26    # "valueNeeded":Ljava/math/BigInteger;
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->coinSelector:Lcom/google/bitcoin/wallet/CoinSelector;

    move-object/from16 v23, v0

    goto :goto_3

    .line 3463
    .restart local v17    # "selection":Lcom/google/bitcoin/wallet/CoinSelection;
    .restart local v23    # "selector":Lcom/google/bitcoin/wallet/CoinSelector;
    :cond_7
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/bitcoin/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->size()I

    move-result v27

    if-gtz v27, :cond_8

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_d

    :cond_8
    const/16 v27, 0x1

    :goto_4
    invoke-static/range {v27 .. v27}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3471
    const/4 v8, 0x0

    .line 3472
    .local v8, "eitherCategory2Or3":Z
    const/4 v13, 0x0

    .line 3474
    .local v13, "isCategory3":Z
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 3475
    .local v5, "change":Ljava/math/BigInteger;
    if-eqz v4, :cond_9

    .line 3476
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 3479
    :cond_9
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->ensureMinRequiredFee:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    sget-object v27, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a

    sget-object v27, Lcom/google/bitcoin/core/Utils;->CENT:Ljava/math/BigInteger;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v27

    if-gez v27, :cond_a

    sget-object v27, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v27

    if-gez v27, :cond_a

    .line 3482
    const/4 v8, 0x1

    .line 3483
    sget-object v3, Lcom/google/bitcoin/core/Utils;->CENT:Ljava/math/BigInteger;

    .line 3485
    sget-object v27, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 3488
    :cond_a
    const/16 v24, 0x0

    .line 3489
    .local v24, "size":I
    const/4 v7, 0x0

    .line 3490
    .local v7, "changeOutput":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v27

    if-lez v27, :cond_f

    .line 3494
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->changeAddress:Lcom/google/bitcoin/core/Address;

    .line 3495
    .local v6, "changeAddress":Lcom/google/bitcoin/core/Address;
    if-nez v6, :cond_b

    .line 3496
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->getChangeAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v6

    .line 3497
    :cond_b
    new-instance v7, Lcom/google/bitcoin/core/TransactionOutput;

    .end local v7    # "changeOutput":Lcom/google/bitcoin/core/TransactionOutput;
    invoke-static/range {p1 .. p1}, Lcom/google/bitcoin/core/Wallet;->access$700(Lcom/google/bitcoin/core/Wallet;)Lcom/google/bitcoin/core/NetworkParameters;

    move-result-object v27

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v7, v0, v1, v5, v6}, Lcom/google/bitcoin/core/TransactionOutput;-><init>(Lcom/google/bitcoin/core/NetworkParameters;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Lcom/google/bitcoin/core/Address;)V

    .line 3499
    .restart local v7    # "changeOutput":Lcom/google/bitcoin/core/TransactionOutput;
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->ensureMinRequiredFee:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    sget-object v27, Lcom/google/bitcoin/core/Transaction;->MIN_NONDUST_OUTPUT:Ljava/math/BigInteger;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v27

    if-ltz v27, :cond_e

    .line 3501
    const/4 v13, 0x1

    .line 3502
    sget-object v27, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    sget-object v28, Lcom/google/bitcoin/core/Transaction;->MIN_NONDUST_OUTPUT:Ljava/math/BigInteger;

    sget-object v29, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v28 .. v29}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 3519
    .end local v6    # "changeAddress":Lcom/google/bitcoin/core/Address;
    :cond_c
    :goto_5
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/bitcoin/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/bitcoin/core/TransactionOutput;

    .line 3520
    .local v16, "output":Lcom/google/bitcoin/core/TransactionOutput;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionOutput;)Lcom/google/bitcoin/core/TransactionInput;

    move-result-object v12

    .line 3522
    .local v12, "input":Lcom/google/bitcoin/core/TransactionInput;
    invoke-virtual {v12}, Lcom/google/bitcoin/core/TransactionInput;->getScriptBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-nez v27, :cond_10

    const/16 v27, 0x1

    :goto_7
    invoke-static/range {v27 .. v27}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_6

    .line 3463
    .end local v5    # "change":Ljava/math/BigInteger;
    .end local v7    # "changeOutput":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v8    # "eitherCategory2Or3":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v13    # "isCategory3":Z
    .end local v16    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v24    # "size":I
    :cond_d
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 3505
    .restart local v5    # "change":Ljava/math/BigInteger;
    .restart local v6    # "changeAddress":Lcom/google/bitcoin/core/Address;
    .restart local v7    # "changeOutput":Lcom/google/bitcoin/core/TransactionOutput;
    .restart local v8    # "eitherCategory2Or3":Z
    .restart local v13    # "isCategory3":Z
    .restart local v24    # "size":I
    :cond_e
    invoke-virtual {v7}, Lcom/google/bitcoin/core/TransactionOutput;->bitcoinSerialize()[B

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v28

    add-int v27, v27, v28

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-static/range {v28 .. v28}, Lcom/google/bitcoin/core/VarInt;->sizeOf(I)I

    move-result v28

    sub-int v27, v27, v28

    add-int v24, v24, v27

    .line 3507
    if-nez v8, :cond_c

    .line 3508
    const/4 v3, 0x0

    goto :goto_5

    .line 3511
    .end local v6    # "changeAddress":Lcom/google/bitcoin/core/Address;
    :cond_f
    if-eqz v8, :cond_c

    .line 3513
    const/4 v13, 0x1

    .line 3514
    sget-object v27, Lcom/google/bitcoin/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Ljava/math/BigInteger;

    sget-object v28, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_5

    .line 3522
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .restart local v16    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_10
    const/16 v27, 0x0

    goto :goto_7

    .line 3527
    .end local v12    # "input":Lcom/google/bitcoin/core/TransactionInput;
    .end local v16    # "output":Lcom/google/bitcoin/core/TransactionOutput;
    :cond_11
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/Transaction;->bitcoinSerialize()[B

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v24, v24, v27

    .line 3528
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/bitcoin/core/Wallet;->access$800(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/wallet/CoinSelection;)I

    move-result v27

    add-int v24, v24, v27

    .line 3529
    move/from16 v0, v24

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    div-int/lit16 v0, v14, 0x3e8

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_12

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/bitcoin/core/Wallet$SendRequest;->feePerKb:Ljava/math/BigInteger;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/math/BigInteger;->signum()I

    move-result v27

    if-lez v27, :cond_12

    .line 3530
    move/from16 v14, v24

    .line 3532
    move-object v3, v4

    .line 3533
    goto/16 :goto_0

    .line 3536
    :cond_12
    if-eqz v13, :cond_14

    .line 3537
    if-nez v22, :cond_13

    .line 3538
    move-object/from16 v22, v17

    .line 3554
    :cond_13
    :goto_8
    if-eqz v3, :cond_3

    .line 3555
    if-eqz v4, :cond_0

    .line 3556
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v27

    if-lez v27, :cond_19

    const/16 v27, 0x1

    :goto_9
    invoke-static/range {v27 .. v27}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 3539
    :cond_14
    if-eqz v8, :cond_16

    .line 3542
    if-nez v20, :cond_15

    const/16 v27, 0x1

    :goto_a
    invoke-static/range {v27 .. v27}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3543
    sget-object v27, Lcom/google/bitcoin/core/Utils;->CENT:Ljava/math/BigInteger;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3544
    move-object/from16 v20, v17

    .line 3545
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "selection2Change":Lcom/google/bitcoin/core/TransactionOutput;
    check-cast v21, Lcom/google/bitcoin/core/TransactionOutput;

    .restart local v21    # "selection2Change":Lcom/google/bitcoin/core/TransactionOutput;
    goto :goto_8

    .line 3542
    :cond_15
    const/16 v27, 0x0

    goto :goto_a

    .line 3548
    :cond_16
    if-nez v18, :cond_17

    const/16 v27, 0x1

    :goto_b
    invoke-static/range {v27 .. v27}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3549
    if-nez v3, :cond_18

    const/16 v27, 0x1

    :goto_c
    invoke-static/range {v27 .. v27}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3550
    move-object/from16 v18, v17

    .line 3551
    move-object/from16 v19, v7

    goto :goto_8

    .line 3548
    :cond_17
    const/16 v27, 0x0

    goto :goto_b

    .line 3549
    :cond_18
    const/16 v27, 0x0

    goto :goto_c

    .line 3556
    :cond_19
    const/16 v27, 0x0

    goto :goto_9

    .line 3570
    .end local v5    # "change":Ljava/math/BigInteger;
    .end local v7    # "changeOutput":Lcom/google/bitcoin/core/TransactionOutput;
    .end local v8    # "eitherCategory2Or3":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "isCategory3":Z
    .end local v24    # "size":I
    :cond_1a
    const/4 v15, 0x0

    .line 3571
    .local v15, "lowestFee":Ljava/math/BigInteger;
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestCoinSelection:Lcom/google/bitcoin/wallet/CoinSelection;

    .line 3572
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestChangeOutput:Lcom/google/bitcoin/core/TransactionOutput;

    .line 3573
    if-eqz v18, :cond_1b

    .line 3574
    if-eqz v19, :cond_20

    .line 3575
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    move-object/from16 v27, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 3578
    :goto_d
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestCoinSelection:Lcom/google/bitcoin/wallet/CoinSelection;

    .line 3579
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestChangeOutput:Lcom/google/bitcoin/core/TransactionOutput;

    .line 3582
    :cond_1b
    if-eqz v20, :cond_1d

    .line 3583
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    move-object/from16 v28, v0

    invoke-static/range {v21 .. v21}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-virtual/range {v27 .. v27}, Lcom/google/bitcoin/core/TransactionOutput;->getValue()Ljava/math/BigInteger;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 3584
    .local v9, "fee":Ljava/math/BigInteger;
    if-eqz v15, :cond_1c

    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v27

    if-gez v27, :cond_1d

    .line 3585
    :cond_1c
    move-object v15, v9

    .line 3586
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestCoinSelection:Lcom/google/bitcoin/wallet/CoinSelection;

    .line 3587
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestChangeOutput:Lcom/google/bitcoin/core/TransactionOutput;

    .line 3591
    .end local v9    # "fee":Ljava/math/BigInteger;
    :cond_1d
    if-eqz v22, :cond_1f

    .line 3592
    if-eqz v15, :cond_1e

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v27

    if-gez v27, :cond_1f

    .line 3593
    :cond_1e
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestCoinSelection:Lcom/google/bitcoin/wallet/CoinSelection;

    .line 3594
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestChangeOutput:Lcom/google/bitcoin/core/TransactionOutput;

    .line 3597
    :cond_1f
    return-void

    .line 3577
    :cond_20
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    goto :goto_d
.end method

.method static synthetic access$400(Lcom/google/bitcoin/core/Wallet$FeeCalculation;)Lcom/google/bitcoin/wallet/CoinSelection;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/Wallet$FeeCalculation;

    .prologue
    .line 3412
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestCoinSelection:Lcom/google/bitcoin/wallet/CoinSelection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/bitcoin/core/Wallet$FeeCalculation;)Lcom/google/bitcoin/core/TransactionOutput;
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/core/Wallet$FeeCalculation;

    .prologue
    .line 3412
    iget-object v0, p0, Lcom/google/bitcoin/core/Wallet$FeeCalculation;->bestChangeOutput:Lcom/google/bitcoin/core/TransactionOutput;

    return-object v0
.end method

.method private resetTxInputs(Lcom/google/bitcoin/core/Wallet$SendRequest;Ljava/util/List;)V
    .locals 3
    .param p1, "req"    # Lcom/google/bitcoin/core/Wallet$SendRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/bitcoin/core/Wallet$SendRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/TransactionInput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3600
    .local p2, "originalInputs":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/TransactionInput;>;"
    iget-object v2, p1, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->clearInputs()V

    .line 3601
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/core/TransactionInput;

    .line 3602
    .local v1, "input":Lcom/google/bitcoin/core/TransactionInput;
    iget-object v2, p1, Lcom/google/bitcoin/core/Wallet$SendRequest;->tx:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2, v1}, Lcom/google/bitcoin/core/Transaction;->addInput(Lcom/google/bitcoin/core/TransactionInput;)Lcom/google/bitcoin/core/TransactionInput;

    goto :goto_0

    .line 3603
    .end local v1    # "input":Lcom/google/bitcoin/core/TransactionInput;
    :cond_0
    return-void
.end method
