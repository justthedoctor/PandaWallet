.class Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$1;
.super Ljava/lang/Object;
.source "PaymentChannelServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->receiveContractMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

.field final synthetic val$multisigContract:Lcom/google/bitcoin/core/Transaction;

.field final synthetic val$providedContract:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;


# direct methods
.method constructor <init>(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/bitcoin/core/Transaction;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    iput-object p2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$1;->val$providedContract:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    iput-object p3, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$1;->val$multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$1;->this$0:Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$1;->val$providedContract:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer$1;->val$multisigContract:Lcom/google/bitcoin/core/Transaction;

    invoke-virtual {v2}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;->access$000(Lcom/google/bitcoin/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/bitcoin/core/Sha256Hash;)V

    .line 305
    return-void
.end method
