.class Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;
.super Ljava/util/TimerTask;
.source "StoredPaymentChannelClientStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->putChannel(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

.field final synthetic val$channel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;Lcom/google/bitcoin/protocols/channels/StoredClientChannel;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;->this$0:Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;->val$channel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;->this$0:Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;->val$channel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->removeChannel(Lcom/google/bitcoin/protocols/channels/StoredClientChannel;)V

    .line 176
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;->this$0:Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->access$000(Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;)Lcom/google/bitcoin/core/TransactionBroadcaster;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;->val$channel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v1, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->contract:Lcom/google/bitcoin/core/Transaction;

    invoke-interface {v0, v1}, Lcom/google/bitcoin/core/TransactionBroadcaster;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 177
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;->this$0:Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;->access$000(Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates;)Lcom/google/bitcoin/core/TransactionBroadcaster;

    move-result-object v0

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelClientStates$1;->val$channel:Lcom/google/bitcoin/protocols/channels/StoredClientChannel;

    iget-object v1, v1, Lcom/google/bitcoin/protocols/channels/StoredClientChannel;->refund:Lcom/google/bitcoin/core/Transaction;

    invoke-interface {v0, v1}, Lcom/google/bitcoin/core/TransactionBroadcaster;->broadcastTransaction(Lcom/google/bitcoin/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 178
    return-void
.end method
