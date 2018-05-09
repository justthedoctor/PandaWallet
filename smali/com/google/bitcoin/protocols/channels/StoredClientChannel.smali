.class Lcom/google/bitcoin/protocols/channels/StoredClientChannel;
.super Ljava/lang/Object;
.source "StoredPaymentChannelClientStates.java"


# instance fields
.field active:Z

.field close:Lcom/google/bitcoin/core/Transaction;

.field contract:Lcom/google/bitcoin/core/Transaction;

.field id:Lcom/google/bitcoin/core/Sha256Hash;

.field myKey:Lcom/google/bitcoin/core/ECKey;

.field refund:Lcom/google/bitcoin/core/Transaction;

.field refundFees:Ljava/math/BigInteger;

.field valueToMe:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/core/Sha256Hash;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/Transaction;Lcom/google/bitcoin/core/ECKey;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .locals 1
    .param p1, "id"    # Lcom/google/bitcoin/core/Sha256Hash;
    .param p2, "contract"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "refund"    # Lcom/google/bitcoin/core/Transaction;
    .param p4, "myKey"    # Lcom/google/bitcoin/core/ECKey;
    .param p5, "valueToMe"    # Ljava/math/BigInteger;
    .param p6, "refundFees"    # Ljava/math/BigInteger;
    .param p7, "active"    # Z

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->active:Z

    .line 302
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->id:Lcom/google/bitcoin/core/Sha256Hash;

    .line 303
    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    .line 304
    iput-object p3, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refund:Lcom/google/bitcoin/core/Transaction;

    .line 305
    iput-object p4, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    .line 306
    iput-object p5, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->valueToMe:Ljava/math/BigInteger;

    .line 307
    iput-object p6, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refundFees:Ljava/math/BigInteger;

    .line 308
    iput-boolean p7, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->active:Z

    .line 309
    return-void
.end method


# virtual methods
.method expiryTimeSeconds()J
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refund:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/Transaction;->getLockTime()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 317
    const-string v2, "%n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "newline":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    if-nez v2, :cond_0

    const-string v0, "still open"

    .line 319
    .local v0, "closeStr":Ljava/lang/String;
    :goto_0
    const-string v3, "Stored client channel for server ID %s (%s)%n    Key:         %s%n    Value left:  %d%n    Refund fees: %d%n    Contract:  %sRefund:    %sClose:     %s"

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->id:Lcom/google/bitcoin/core/Sha256Hash;

    aput-object v2, v4, v5

    const/4 v5, 0x1

    iget-boolean v2, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->active:Z

    if-eqz v2, :cond_1

    const-string v2, "active"

    :goto_1
    aput-object v2, v4, v5

    const/4 v2, 0x2

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->myKey:Lcom/google/bitcoin/core/ECKey;

    aput-object v5, v4, v2

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->valueToMe:Ljava/math/BigInteger;

    aput-object v5, v4, v2

    const/4 v2, 0x4

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refundFees:Ljava/math/BigInteger;

    aput-object v5, v4, v2

    const/4 v2, 0x5

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget-object v5, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refund:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v5}, Lcom/google/bitcoin/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 318
    .end local v0    # "closeStr":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 319
    .restart local v0    # "closeStr":Ljava/lang/String;
    :cond_1
    const-string v2, "inactive"

    goto :goto_1
.end method
