.class public final Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ServerState.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/ServerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StoredServerPaymentChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    }
.end annotation


# static fields
.field public static final BESTVALUESIGNATURE_FIELD_NUMBER:I = 0x2

.field public static final BESTVALUETOME_FIELD_NUMBER:I = 0x1

.field public static final CLIENTOUTPUT_FIELD_NUMBER:I = 0x5

.field public static final CONTRACTTRANSACTION_FIELD_NUMBER:I = 0x4

.field public static final MYKEY_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFUNDTRANSACTIONUNLOCKTIMESECS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

.field private static final serialVersionUID:J


# instance fields
.field private bestValueSignature_:Lcom/google/protobuf/ByteString;

.field private bestValueToMe_:J

.field private bitField0_:I

.field private clientOutput_:Lcom/google/protobuf/ByteString;

.field private contractTransaction_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private myKey_:Lcom/google/protobuf/ByteString;

.field private refundTransactionUnlockTimeSecs_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 877
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$1;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$1;-><init>()V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    .line 1559
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;-><init>(Z)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    .line 1560
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->initFields()V

    .line 1561
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 803
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 997
    iput-byte v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    .line 1050
    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    .line 804
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->initFields()V

    .line 805
    const/4 v2, 0x0

    .line 806
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 809
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 810
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 811
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 812
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 817
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 819
    const/4 v0, 0x1

    goto :goto_0

    .line 814
    :sswitch_0
    const/4 v0, 0x1

    .line 815
    goto :goto_0

    .line 824
    :sswitch_1
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 825
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 855
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 856
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 861
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 862
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->makeExtensionsImmutable()V

    throw v5

    .line 829
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 830
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 857
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 858
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 835
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    goto :goto_0

    .line 839
    :sswitch_4
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 840
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 844
    :sswitch_5
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 845
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 849
    :sswitch_6
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    .line 850
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 861
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 862
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->makeExtensionsImmutable()V

    .line 864
    return-void

    .line 812
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/bitcoin/protocols/channels/ServerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/bitcoin/protocols/channels/ServerState$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessage$Builder;, "Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 780
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 997
    iput-byte v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    .line 1050
    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    .line 781
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 782
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/bitcoin/protocols/channels/ServerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lcom/google/bitcoin/protocols/channels/ServerState$1;

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 783
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 997
    iput-byte v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    .line 1050
    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    .line 783
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 775
    sget-boolean v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .param p1, "x1"    # J

    .prologue
    .line 775
    iput-wide p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .param p1, "x1"    # J

    .prologue
    .line 775
    iput-wide p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    return-wide p1
.end method

.method static synthetic access$1902(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .param p1, "x1"    # I

    .prologue
    .line 775
    iput p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1

    .prologue
    .line 787
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 867
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 990
    iput-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    .line 991
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 992
    iput-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    .line 993
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 994
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 995
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    .line 996
    return-void
.end method

.method public static newBuilder()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1145
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->access$1200()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    .prologue
    .line 1148
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilder()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1125
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1095
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1101
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1142
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1115
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1105
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1111
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method


# virtual methods
.method public getBestValueSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBestValueToMe()J
    .locals 2

    .prologue
    .line 906
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    return-wide v0
.end method

.method public getClientOutput()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1

    .prologue
    .line 791
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getMyKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRefundTransactionUnlockTimeSecs()J
    .locals 2

    .prologue
    .line 938
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1052
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    .line 1053
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1082
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1055
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1056
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 1057
    iget-wide v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1060
    :cond_1
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2

    .line 1061
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1064
    :cond_2
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_3

    .line 1065
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1068
    :cond_3
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 1069
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1072
    :cond_4
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1073
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1076
    :cond_5
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 1077
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1080
    :cond_6
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1081
    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedSerializedSize:I

    move v1, v0

    .line 1082
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBestValueSignature()Z
    .locals 2

    .prologue
    .line 916
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBestValueToMe()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 900
    iget v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientOutput()Z
    .locals 2

    .prologue
    .line 964
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContractTransaction()Z
    .locals 2

    .prologue
    .line 948
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMyKey()Z
    .locals 2

    .prologue
    .line 980
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRefundTransactionUnlockTimeSecs()Z
    .locals 2

    .prologue
    .line 932
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 872
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    const-class v2, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 999
    iget-byte v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    .line 1000
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 1023
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 1000
    goto :goto_0

    .line 1002
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasBestValueToMe()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1003
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1006
    :cond_2
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasRefundTransactionUnlockTimeSecs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1007
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1010
    :cond_3
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasContractTransaction()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1011
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1014
    :cond_4
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasClientOutput()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1015
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1018
    :cond_5
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasMyKey()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1019
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1022
    :cond_6
    iput-byte v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->memoizedIsInitialized:B

    move v2, v1

    .line 1023
    goto :goto_1
.end method

.method public newBuilderForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1146
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilder()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1155
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/bitcoin/protocols/channels/ServerState$1;)V

    .line 1156
    .local v0, "builder":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilderForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilderForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1150
    invoke-static {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilder(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->toBuilder()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->toBuilder()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1028
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getSerializedSize()I

    .line 1029
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 1030
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueToMe_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1032
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1035
    :cond_1
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 1036
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->refundTransactionUnlockTimeSecs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1038
    :cond_2
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1039
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1041
    :cond_3
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1042
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->clientOutput_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1044
    :cond_4
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1045
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1047
    :cond_5
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1048
    return-void
.end method
