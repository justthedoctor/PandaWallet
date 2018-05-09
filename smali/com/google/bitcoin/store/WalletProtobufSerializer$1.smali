.class synthetic Lcom/google/bitcoin/store/WalletProtobufSerializer$1;
.super Ljava/lang/Object;
.source "WalletProtobufSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/store/WalletProtobufSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$bitcoin$core$Transaction$Purpose:[I

.field static final synthetic $SwitchMap$com$google$bitcoin$core$TransactionConfidence$Source:[I

.field static final synthetic $SwitchMap$com$google$bitcoin$wallet$WalletTransaction$Pool:[I

.field static final synthetic $SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

.field static final synthetic $SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

.field static final synthetic $SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

.field static final synthetic $SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 692
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

    :try_start_0
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_SELF:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_NETWORK:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_19

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Source:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->SOURCE_UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_18

    .line 634
    :goto_2
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->values()[Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    :try_start_3
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->BUILDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_17

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->DEAD:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_16

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->NOT_IN_BEST_CHAIN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_15

    :goto_5
    :try_start_6
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->PENDING:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_14

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$TransactionConfidence$Type:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$TransactionConfidence$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_13

    .line 584
    :goto_7
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->values()[Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    :try_start_8
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->DEAD:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_12

    :goto_8
    :try_start_9
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_11

    :goto_9
    :try_start_a
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->SPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_10

    :goto_a
    :try_start_b
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_f

    :goto_b
    :try_start_c
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_e

    :goto_c
    :try_start_d
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Pool:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->PENDING_INACTIVE:Lorg/bitcoinj/wallet/Protos$Transaction$Pool;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 561
    :goto_d
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->values()[Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    :try_start_e
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->UNKNOWN:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_c

    :goto_e
    :try_start_f
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_b

    :goto_f
    :try_start_10
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$org$bitcoinj$wallet$Protos$Transaction$Purpose:[I

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$Transaction$Purpose;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_a

    .line 327
    :goto_10
    invoke-static {}, Lcom/google/bitcoin/core/TransactionConfidence$Source;->values()[Lcom/google/bitcoin/core/TransactionConfidence$Source;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$TransactionConfidence$Source:[I

    :try_start_11
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$TransactionConfidence$Source:[I

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Source;->SELF:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionConfidence$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_9

    :goto_11
    :try_start_12
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$TransactionConfidence$Source:[I

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Source;->NETWORK:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionConfidence$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_8

    :goto_12
    :try_start_13
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$TransactionConfidence$Source:[I

    sget-object v1, Lcom/google/bitcoin/core/TransactionConfidence$Source;->UNKNOWN:Lcom/google/bitcoin/core/TransactionConfidence$Source;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/TransactionConfidence$Source;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_7

    .line 296
    :goto_13
    invoke-static {}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->values()[Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$wallet$WalletTransaction$Pool:[I

    :try_start_14
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$wallet$WalletTransaction$Pool:[I

    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->UNSPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {v1}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_6

    :goto_14
    :try_start_15
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$wallet$WalletTransaction$Pool:[I

    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->SPENT:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {v1}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_5

    :goto_15
    :try_start_16
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$wallet$WalletTransaction$Pool:[I

    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->DEAD:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {v1}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_4

    :goto_16
    :try_start_17
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$wallet$WalletTransaction$Pool:[I

    sget-object v1, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->PENDING:Lcom/google/bitcoin/wallet/WalletTransaction$Pool;

    invoke-virtual {v1}, Lcom/google/bitcoin/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_3

    .line 283
    :goto_17
    invoke-static {}, Lcom/google/bitcoin/core/Transaction$Purpose;->values()[Lcom/google/bitcoin/core/Transaction$Purpose;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$Transaction$Purpose:[I

    :try_start_18
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$Transaction$Purpose:[I

    sget-object v1, Lcom/google/bitcoin/core/Transaction$Purpose;->UNKNOWN:Lcom/google/bitcoin/core/Transaction$Purpose;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction$Purpose;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_2

    :goto_18
    :try_start_19
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$Transaction$Purpose:[I

    sget-object v1, Lcom/google/bitcoin/core/Transaction$Purpose;->USER_PAYMENT:Lcom/google/bitcoin/core/Transaction$Purpose;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction$Purpose;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/google/bitcoin/store/WalletProtobufSerializer$1;->$SwitchMap$com$google$bitcoin$core$Transaction$Purpose:[I

    sget-object v1, Lcom/google/bitcoin/core/Transaction$Purpose;->KEY_ROTATION:Lcom/google/bitcoin/core/Transaction$Purpose;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Transaction$Purpose;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_0

    :goto_1a
    return-void

    :catch_0
    move-exception v0

    goto :goto_1a

    :catch_1
    move-exception v0

    goto :goto_19

    :catch_2
    move-exception v0

    goto :goto_18

    .line 296
    :catch_3
    move-exception v0

    goto :goto_17

    :catch_4
    move-exception v0

    goto :goto_16

    :catch_5
    move-exception v0

    goto :goto_15

    :catch_6
    move-exception v0

    goto :goto_14

    .line 327
    :catch_7
    move-exception v0

    goto :goto_13

    :catch_8
    move-exception v0

    goto :goto_12

    :catch_9
    move-exception v0

    goto/16 :goto_11

    .line 561
    :catch_a
    move-exception v0

    goto/16 :goto_10

    :catch_b
    move-exception v0

    goto/16 :goto_f

    :catch_c
    move-exception v0

    goto/16 :goto_e

    .line 584
    :catch_d
    move-exception v0

    goto/16 :goto_d

    :catch_e
    move-exception v0

    goto/16 :goto_c

    :catch_f
    move-exception v0

    goto/16 :goto_b

    :catch_10
    move-exception v0

    goto/16 :goto_a

    :catch_11
    move-exception v0

    goto/16 :goto_9

    :catch_12
    move-exception v0

    goto/16 :goto_8

    .line 634
    :catch_13
    move-exception v0

    goto/16 :goto_7

    :catch_14
    move-exception v0

    goto/16 :goto_6

    :catch_15
    move-exception v0

    goto/16 :goto_5

    :catch_16
    move-exception v0

    goto/16 :goto_4

    :catch_17
    move-exception v0

    goto/16 :goto_3

    .line 692
    :catch_18
    move-exception v0

    goto/16 :goto_2

    :catch_19
    move-exception v0

    goto/16 :goto_1

    :catch_1a
    move-exception v0

    goto/16 :goto_0
.end method
