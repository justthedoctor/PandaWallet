.class Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates$1;
.super Ljava/util/TimerTask;
.source "StoredPaymentChannelServerStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->putChannel(Lcom/google/bitcoin/protocols/channels/StoredServerChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

.field final synthetic val$channel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;Lcom/google/bitcoin/protocols/channels/StoredServerChannel;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates$1;->this$0:Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates$1;->val$channel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Auto-closing channel: {}"

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates$1;->val$channel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates$1;->this$0:Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates$1;->val$channel:Lcom/google/bitcoin/protocols/channels/StoredServerChannel;

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/StoredPaymentChannelServerStates;->closeChannel(Lcom/google/bitcoin/protocols/channels/StoredServerChannel;)V

    .line 129
    return-void
.end method
