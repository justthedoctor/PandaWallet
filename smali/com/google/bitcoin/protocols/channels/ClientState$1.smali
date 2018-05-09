.class final Lcom/google/bitcoin/protocols/channels/ClientState$1;
.super Ljava/lang/Object;
.source "ClientState.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/ClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 6
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1742
    invoke-static {p1}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$2402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1743
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1745
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Channels"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1749
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 1751
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v4

    const-string v3, "ContractTransaction"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "RefundTransaction"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "MyKey"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "ValueToMe"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "RefundFees"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "CloseTransactionHash"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$1002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 1755
    const/4 v0, 0x0

    return-object v0
.end method
