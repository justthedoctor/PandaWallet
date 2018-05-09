.class Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;
.super Lcom/google/bitcoin/core/AbstractWalletEventListener;
.source "PaymentChannelClientState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->initWalletListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-direct {p0}, Lcom/google/bitcoin/core/AbstractWalletEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoinsReceived(Lcom/google/bitcoin/core/Wallet;Lcom/google/bitcoin/core/Transaction;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 5
    .param p1, "wallet"    # Lcom/google/bitcoin/core/Wallet;
    .param p2, "tx"    # Lcom/google/bitcoin/core/Transaction;
    .param p3, "prevBalance"    # Ljava/math/BigInteger;
    .param p4, "newBalance"    # Ljava/math/BigInteger;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 192
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v0, p2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->isSettlementTransaction(Lcom/google/bitcoin/core/Transaction;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v2, "Close: transaction {} closed contract {}"

    invoke-virtual {p2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v3

    iget-object v4, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-static {v4}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)Lcom/google/bitcoin/core/Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    sget-object v2, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;->CLOSED:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    invoke-static {v0, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->access$202(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;)Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$State;

    .line 186
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->access$300(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 187
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->access$300(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    move-result-object v0

    iput-object p2, v0, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->close:Lcom/google/bitcoin/core/Transaction;

    .line 188
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->access$400(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V

    .line 189
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;->access$500(Lcom/google/bitcoin/protocols/channels/PaymentChannelClientState;)V

    .line 191
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
