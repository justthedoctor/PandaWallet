.class public Lcom/google/bitcoin/script/ScriptBuilder;
.super Ljava/lang/Object;
.source "ScriptBuilder.java"


# instance fields
.field private chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/script/ScriptChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/script/ScriptBuilder;->chunks:Ljava/util/List;

    .line 42
    return-void
.end method

.method public static createInputScript(Lcom/google/bitcoin/crypto/TransactionSignature;)Lcom/google/bitcoin/script/Script;
    .locals 2
    .param p0, "signature"    # Lcom/google/bitcoin/crypto/TransactionSignature;

    .prologue
    .line 100
    new-instance v0, Lcom/google/bitcoin/script/ScriptBuilder;

    invoke-direct {v0}, Lcom/google/bitcoin/script/ScriptBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->build()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    return-object v0
.end method

.method public static createInputScript(Lcom/google/bitcoin/crypto/TransactionSignature;Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/script/Script;
    .locals 3
    .param p0, "signature"    # Lcom/google/bitcoin/crypto/TransactionSignature;
    .param p1, "pubKey"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v0

    .line 95
    .local v0, "pubkeyBytes":[B
    new-instance v1, Lcom/google/bitcoin/script/ScriptBuilder;

    invoke-direct {v1}, Lcom/google/bitcoin/script/ScriptBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/bitcoin/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/bitcoin/script/ScriptBuilder;->build()Lcom/google/bitcoin/script/Script;

    move-result-object v1

    return-object v1
.end method

.method public static createMultiSigInputScript(Ljava/util/List;)Lcom/google/bitcoin/script/Script;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/crypto/TransactionSignature;",
            ">;)",
            "Lcom/google/bitcoin/script/Script;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/crypto/TransactionSignature;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/bitcoin/script/ScriptBuilder;->createP2SHMultiSigInputScript(Ljava/util/List;[B)Lcom/google/bitcoin/script/Script;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createMultiSigInputScript([Lcom/google/bitcoin/crypto/TransactionSignature;)Lcom/google/bitcoin/script/Script;
    .locals 1
    .param p0, "signatures"    # [Lcom/google/bitcoin/crypto/TransactionSignature;

    .prologue
    .line 125
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->createMultiSigInputScript(Ljava/util/List;)Lcom/google/bitcoin/script/Script;

    move-result-object v0

    return-object v0
.end method

.method public static createMultiSigInputScriptBytes(Ljava/util/List;)Lcom/google/bitcoin/script/Script;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/bitcoin/script/Script;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/bitcoin/script/ScriptBuilder;->createMultiSigInputScriptBytes(Ljava/util/List;[B)Lcom/google/bitcoin/script/Script;

    move-result-object v0

    return-object v0
.end method

.method public static createMultiSigInputScriptBytes(Ljava/util/List;[B)Lcom/google/bitcoin/script/Script;
    .locals 6
    .param p1, "multisigProgramBytes"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;[B)",
            "Lcom/google/bitcoin/script/Script;"
        }
    .end annotation

    .prologue
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v4, 0x0

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x10

    if-gt v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 148
    new-instance v0, Lcom/google/bitcoin/script/ScriptBuilder;

    invoke-direct {v0}, Lcom/google/bitcoin/script/ScriptBuilder;-><init>()V

    .line 149
    .local v0, "builder":Lcom/google/bitcoin/script/ScriptBuilder;
    invoke-virtual {v0, v4}, Lcom/google/bitcoin/script/ScriptBuilder;->smallNum(I)Lcom/google/bitcoin/script/ScriptBuilder;

    .line 150
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 151
    .local v2, "signature":[B
    invoke-virtual {v0, v2}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    goto :goto_1

    .end local v0    # "builder":Lcom/google/bitcoin/script/ScriptBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "signature":[B
    :cond_0
    move v3, v4

    .line 147
    goto :goto_0

    .line 152
    .restart local v0    # "builder":Lcom/google/bitcoin/script/ScriptBuilder;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {v0, p1}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    .line 154
    :cond_2
    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->build()Lcom/google/bitcoin/script/Script;

    move-result-object v3

    return-object v3
.end method

.method public static createMultiSigOutputScript(ILjava/util/List;)Lcom/google/bitcoin/script/Script;
    .locals 7
    .param p0, "threshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;)",
            "Lcom/google/bitcoin/script/Script;"
        }
    .end annotation

    .prologue
    .local p1, "pubkeys":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/core/ECKey;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 105
    if-lez p0, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gt p0, v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0x10

    if-gt v3, v6, :cond_2

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 108
    new-instance v0, Lcom/google/bitcoin/script/ScriptBuilder;

    invoke-direct {v0}, Lcom/google/bitcoin/script/ScriptBuilder;-><init>()V

    .line 109
    .local v0, "builder":Lcom/google/bitcoin/script/ScriptBuilder;
    invoke-virtual {v0, p0}, Lcom/google/bitcoin/script/ScriptBuilder;->smallNum(I)Lcom/google/bitcoin/script/ScriptBuilder;

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/core/ECKey;

    .line 111
    .local v2, "key":Lcom/google/bitcoin/core/ECKey;
    invoke-virtual {v2}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    goto :goto_3

    .end local v0    # "builder":Lcom/google/bitcoin/script/ScriptBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lcom/google/bitcoin/core/ECKey;
    :cond_0
    move v3, v5

    .line 105
    goto :goto_0

    :cond_1
    move v3, v5

    .line 106
    goto :goto_1

    :cond_2
    move v4, v5

    .line 107
    goto :goto_2

    .line 113
    .restart local v0    # "builder":Lcom/google/bitcoin/script/ScriptBuilder;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/script/ScriptBuilder;->smallNum(I)Lcom/google/bitcoin/script/ScriptBuilder;

    .line 114
    const/16 v3, 0xae

    invoke-virtual {v0, v3}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    .line 115
    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->build()Lcom/google/bitcoin/script/Script;

    move-result-object v3

    return-object v3
.end method

.method public static createOutputScript(Lcom/google/bitcoin/core/Address;)Lcom/google/bitcoin/script/Script;
    .locals 3
    .param p0, "to"    # Lcom/google/bitcoin/core/Address;

    .prologue
    const/16 v2, 0xa9

    .line 68
    invoke-virtual {p0}, Lcom/google/bitcoin/core/Address;->isP2SHAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/google/bitcoin/script/ScriptBuilder;

    invoke-direct {v0}, Lcom/google/bitcoin/script/ScriptBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Address;->getHash160()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->build()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/bitcoin/script/ScriptBuilder;

    invoke-direct {v0}, Lcom/google/bitcoin/script/ScriptBuilder;-><init>()V

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/core/Address;->getHash160()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->build()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    goto :goto_0
.end method

.method public static createOutputScript(Lcom/google/bitcoin/core/ECKey;)Lcom/google/bitcoin/script/Script;
    .locals 2
    .param p0, "key"    # Lcom/google/bitcoin/core/ECKey;

    .prologue
    .line 89
    new-instance v0, Lcom/google/bitcoin/script/ScriptBuilder;

    invoke-direct {v0}, Lcom/google/bitcoin/script/ScriptBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/bitcoin/core/ECKey;->getPubKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->build()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    return-object v0
.end method

.method public static createP2SHMultiSigInputScript(Ljava/util/List;[B)Lcom/google/bitcoin/script/Script;
    .locals 4
    .param p1, "multisigProgramBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/crypto/TransactionSignature;",
            ">;[B)",
            "Lcom/google/bitcoin/script/Script;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<Lcom/google/bitcoin/crypto/TransactionSignature;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v2, "sigs":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/bitcoin/crypto/TransactionSignature;

    .line 138
    .local v1, "signature":Lcom/google/bitcoin/crypto/TransactionSignature;
    invoke-virtual {v1}, Lcom/google/bitcoin/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v1    # "signature":Lcom/google/bitcoin/crypto/TransactionSignature;
    :cond_0
    invoke-static {v2, p1}, Lcom/google/bitcoin/script/ScriptBuilder;->createMultiSigInputScriptBytes(Ljava/util/List;[B)Lcom/google/bitcoin/script/Script;

    move-result-object v3

    return-object v3
.end method

.method public static createP2SHOutputScript([B)Lcom/google/bitcoin/script/Script;
    .locals 2
    .param p0, "hash"    # [B

    .prologue
    .line 163
    array-length v0, p0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 164
    new-instance v0, Lcom/google/bitcoin/script/ScriptBuilder;

    invoke-direct {v0}, Lcom/google/bitcoin/script/ScriptBuilder;-><init>()V

    const/16 v1, 0xa9

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/script/ScriptBuilder;->data([B)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/script/ScriptBuilder;->op(I)Lcom/google/bitcoin/script/ScriptBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/script/ScriptBuilder;->build()Lcom/google/bitcoin/script/Script;

    move-result-object v0

    return-object v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/google/bitcoin/script/Script;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/bitcoin/script/Script;

    iget-object v1, p0, Lcom/google/bitcoin/script/ScriptBuilder;->chunks:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/google/bitcoin/script/Script;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public data([B)Lcom/google/bitcoin/script/ScriptBuilder;
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 50
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 51
    .local v0, "copy":[B
    iget-object v1, p0, Lcom/google/bitcoin/script/ScriptBuilder;->chunks:Ljava/util/List;

    new-instance v2, Lcom/google/bitcoin/script/ScriptChunk;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/google/bitcoin/script/ScriptChunk;-><init>(Z[B)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-object p0
.end method

.method public op(I)Lcom/google/bitcoin/script/ScriptBuilder;
    .locals 6
    .param p1, "opcode"    # I

    .prologue
    const/4 v5, 0x1

    .line 45
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptBuilder;->chunks:Ljava/util/List;

    new-instance v1, Lcom/google/bitcoin/script/ScriptChunk;

    new-array v2, v5, [B

    const/4 v3, 0x0

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    invoke-direct {v1, v5, v2}, Lcom/google/bitcoin/script/ScriptChunk;-><init>(Z[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-object p0
.end method

.method public smallNum(I)Lcom/google/bitcoin/script/ScriptBuilder;
    .locals 6
    .param p1, "num"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 56
    if-ltz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot encode negative numbers with smallNum"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 57
    const/16 v0, 0x10

    if-gt p1, v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Cannot encode numbers larger than 16 with smallNum"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/google/bitcoin/script/ScriptBuilder;->chunks:Ljava/util/List;

    new-instance v3, Lcom/google/bitcoin/script/ScriptChunk;

    new-array v4, v1, [B

    invoke-static {p1}, Lcom/google/bitcoin/script/Script;->encodeToOpN(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    invoke-direct {v3, v1, v4}, Lcom/google/bitcoin/script/ScriptChunk;-><init>(Z[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-object p0

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0

    :cond_1
    move v0, v2

    .line 57
    goto :goto_1
.end method
