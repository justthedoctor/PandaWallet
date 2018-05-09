.class final Lorg/bitcoin/paymentchannel/Protos$1;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 10
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8644
    invoke-static {p1}, Lorg/bitcoin/paymentchannel/Protos;->access$11002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 8645
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8647
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "ClientVersion"

    aput-object v3, v2, v6

    const-string v3, "ServerVersion"

    aput-object v3, v2, v7

    const-string v3, "Initiate"

    aput-object v3, v2, v8

    const-string v3, "ProvideRefund"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ReturnRefund"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ProvideContract"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "UpdatePayment"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Settlement"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Error"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8651
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$1802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8653
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$1800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Major"

    aput-object v3, v2, v5

    const-string v3, "Minor"

    aput-object v3, v2, v6

    const-string v3, "PreviousChannelContractHash"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$1902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8657
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$2902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8659
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$2900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Major"

    aput-object v3, v2, v5

    const-string v3, "Minor"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$3002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8663
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$3902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8665
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "MultisigKey"

    aput-object v3, v2, v5

    const-string v3, "MinAcceptedChannelSize"

    aput-object v3, v2, v6

    const-string v3, "ExpireTimeSecs"

    aput-object v3, v2, v7

    const-string v3, "MinPayment"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$4002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8669
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$5102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8671
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "MultisigKey"

    aput-object v3, v2, v5

    const-string v3, "Tx"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$5202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8675
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$6102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8677
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$6100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Signature"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$6202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8681
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$7002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8683
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Tx"

    aput-object v3, v2, v5

    const-string v3, "InitialPayment"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$7102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8687
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$8002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8689
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "ClientChangeValue"

    aput-object v3, v2, v5

    const-string v3, "Signature"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$8102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8693
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$9002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8695
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Tx"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$9102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8699
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$9902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 8701
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Code"

    aput-object v3, v2, v5

    const-string v3, "Explanation"

    aput-object v3, v2, v6

    const-string v3, "ExpectedValue"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos;->access$10002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 8705
    const/4 v0, 0x0

    return-object v0
.end method
