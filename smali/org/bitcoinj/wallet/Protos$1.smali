.class final Lorg/bitcoinj/wallet/Protos$1;
.super Ljava/lang/Object;
.source "Protos.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13859
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

    .line 13862
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos;->access$15402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13863
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13865
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "IpAddress"

    aput-object v3, v2, v5

    const-string v3, "Port"

    aput-object v3, v2, v6

    const-string v3, "Services"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13869
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$1102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13871
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "InitialisationVector"

    aput-object v3, v2, v5

    const-string v3, "EncryptedPrivateKey"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$1202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13875
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$2102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13877
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "PrivateKey"

    aput-object v3, v2, v6

    const-string v3, "EncryptedPrivateKey"

    aput-object v3, v2, v7

    const-string v3, "PublicKey"

    aput-object v3, v2, v8

    const-string v3, "Label"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CreationTimestamp"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$2202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13881
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$3502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13883
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Program"

    aput-object v3, v2, v5

    const-string v3, "CreationTimestamp"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$3602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13887
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$4502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13889
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "TransactionOutPointHash"

    aput-object v3, v2, v5

    const-string v3, "TransactionOutPointIndex"

    aput-object v3, v2, v6

    const-string v3, "ScriptBytes"

    aput-object v3, v2, v7

    const-string v3, "Sequence"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$4602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13893
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$5702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13895
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$5700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Value"

    aput-object v3, v2, v5

    const-string v3, "ScriptBytes"

    aput-object v3, v2, v6

    const-string v3, "SpentByTransactionHash"

    aput-object v3, v2, v7

    const-string v3, "SpentByTransactionIndex"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$5802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13899
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$6902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13901
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$6900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "AppearedAtHeight"

    aput-object v3, v2, v6

    const-string v3, "OverridingTransaction"

    aput-object v3, v2, v7

    const-string v3, "Depth"

    aput-object v3, v2, v8

    const-string v3, "WorkDone"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "BroadcastBy"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Source"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$7002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13905
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$8502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13907
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$8500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Hash"

    aput-object v3, v2, v6

    const-string v3, "Pool"

    aput-object v3, v2, v7

    const-string v3, "LockTime"

    aput-object v3, v2, v8

    const-string v3, "UpdatedAt"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "TransactionInput"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "TransactionOutput"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "BlockHash"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "BlockRelativityOffsets"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Confidence"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Purpose"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$8602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13911
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$10602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13913
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$10600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Salt"

    aput-object v3, v2, v5

    const-string v3, "N"

    aput-object v3, v2, v6

    const-string v3, "R"

    aput-object v3, v2, v7

    const-string v3, "P"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$10702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13917
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$11802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13919
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$11800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Data"

    aput-object v3, v2, v6

    const-string v3, "Mandatory"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$11902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13923
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$12902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 13925
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$12900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "NetworkIdentifier"

    aput-object v3, v2, v5

    const-string v3, "LastSeenBlockHash"

    aput-object v3, v2, v6

    const-string v3, "LastSeenBlockHeight"

    aput-object v3, v2, v7

    const-string v3, "LastSeenBlockTimeSecs"

    aput-object v3, v2, v8

    const-string v3, "Key"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Transaction"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "WatchedScript"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "EncryptionType"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "EncryptionParameters"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Version"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Extension"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Description"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "KeyRotationTime"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos;->access$13002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 13929
    const/4 v0, 0x0

    return-object v0
.end method
