.class final Lorg/bitcoin/protocols/payments/Protos$1;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5972
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

    .line 5975
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos;->access$7002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5976
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5978
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Amount"

    aput-object v3, v2, v5

    const-string v3, "Script"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5982
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$1002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5984
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Network"

    aput-object v3, v2, v5

    const-string v3, "Outputs"

    aput-object v3, v2, v6

    const-string v3, "Time"

    aput-object v3, v2, v7

    const-string v3, "Expires"

    aput-object v3, v2, v8

    const-string v3, "Memo"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "PaymentUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MerchantData"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$1102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5988
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$2602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5990
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "PaymentDetailsVersion"

    aput-object v3, v2, v5

    const-string v3, "PkiType"

    aput-object v3, v2, v6

    const-string v3, "PkiData"

    aput-object v3, v2, v7

    const-string v3, "SerializedPaymentDetails"

    aput-object v3, v2, v8

    const-string v3, "Signature"

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$2702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5994
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$3902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5996
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Certificate"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$4002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 6000
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$4702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 6002
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "MerchantData"

    aput-object v3, v2, v5

    const-string v3, "Transactions"

    aput-object v3, v2, v6

    const-string v3, "RefundTo"

    aput-object v3, v2, v7

    const-string v3, "Memo"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$4802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 6006
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$6002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 6008
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Payment"

    aput-object v3, v2, v5

    const-string v3, "Memo"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos;->access$6102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 6012
    const/4 v0, 0x0

    return-object v0
.end method
