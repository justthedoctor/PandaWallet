.class public final Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ClientState.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/ClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StoredClientPaymentChannel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    }
.end annotation


# static fields
.field public static final CLOSETRANSACTIONHASH_FIELD_NUMBER:I = 0x7

.field public static final CONTRACTTRANSACTION_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MYKEY_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFUNDFEES_FIELD_NUMBER:I = 0x6

.field public static final REFUNDTRANSACTION_FIELD_NUMBER:I = 0x3

.field public static final VALUETOME_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private closeTransactionHash_:Lcom/google/protobuf/ByteString;

.field private contractTransaction_:Lcom/google/protobuf/ByteString;

.field private id_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private myKey_:Lcom/google/protobuf/ByteString;

.field private refundFees_:J

.field private refundTransaction_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private valueToMe_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 905
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$1;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$1;-><init>()V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    .line 1701
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;-><init>(Z)V

    sput-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    .line 1702
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->initFields()V

    .line 1703
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

    .line 826
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1054
    iput-byte v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    .line 1114
    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    .line 827
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->initFields()V

    .line 828
    const/4 v2, 0x0

    .line 829
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 832
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 833
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 834
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 835
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 840
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 842
    const/4 v0, 0x1

    goto :goto_0

    .line 837
    :sswitch_0
    const/4 v0, 0x1

    .line 838
    goto :goto_0

    .line 847
    :sswitch_1
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 848
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 883
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 884
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 890
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->makeExtensionsImmutable()V

    throw v5

    .line 852
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 853
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 885
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 886
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

    .line 857
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 858
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 862
    :sswitch_4
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 863
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 867
    :sswitch_5
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 868
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    goto :goto_0

    .line 872
    :sswitch_6
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 873
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    goto :goto_0

    .line 877
    :sswitch_7
    iget v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    .line 878
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 889
    .end local v3    # "tag":I
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 890
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->makeExtensionsImmutable()V

    .line 892
    return-void

    .line 835
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/bitcoin/protocols/channels/ClientState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/bitcoin/protocols/channels/ClientState$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 803
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1054
    iput-byte v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    .line 1114
    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    .line 804
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 805
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/bitcoin/protocols/channels/ClientState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lcom/google/bitcoin/protocols/channels/ClientState$1;

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 806
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1054
    iput-byte v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    .line 1114
    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    .line 806
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 798
    sget-boolean v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .param p1, "x1"    # J

    .prologue
    .line 798
    iput-wide p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .param p1, "x1"    # J

    .prologue
    .line 798
    iput-wide p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .param p1, "x1"    # I

    .prologue
    .line 798
    iput p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1

    .prologue
    .line 810
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 895
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1046
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    .line 1047
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1048
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1049
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1050
    iput-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    .line 1051
    iput-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    .line 1052
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 1053
    return-void
.end method

.method public static newBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1213
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->access$1200()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    .prologue
    .line 1216
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1193
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1163
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1169
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1204
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1210
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1183
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1189
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1173
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1179
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method


# virtual methods
.method public getCloseTransactionHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1

    .prologue
    .line 814
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->defaultInstance:Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMyKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    sget-object v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRefundFees()J
    .locals 2

    .prologue
    .line 1014
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    return-wide v0
.end method

.method public getRefundTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1116
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    .line 1117
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1150
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1119
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1120
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 1121
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1124
    :cond_1
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 1125
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1128
    :cond_2
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 1129
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1132
    :cond_3
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 1133
    iget-object v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1136
    :cond_4
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1137
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1140
    :cond_5
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 1141
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1144
    :cond_6
    iget v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 1145
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1148
    :cond_7
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1149
    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedSerializedSize:I

    move v1, v0

    .line 1150
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValueToMe()J
    .locals 2

    .prologue
    .line 998
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    return-wide v0
.end method

.method public hasCloseTransactionHash()Z
    .locals 2

    .prologue
    .line 1030
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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
    .line 944
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 928
    iget v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMyKey()Z
    .locals 2

    .prologue
    .line 976
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasRefundFees()Z
    .locals 2

    .prologue
    .line 1008
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasRefundTransaction()Z
    .locals 2

    .prologue
    .line 960
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method public hasValueToMe()Z
    .locals 2

    .prologue
    .line 992
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 900
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    const-class v2, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1056
    iget-byte v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    .line 1057
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 1084
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 1057
    goto :goto_0

    .line 1059
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1060
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1063
    :cond_2
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasContractTransaction()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1064
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1067
    :cond_3
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasRefundTransaction()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1068
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1071
    :cond_4
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasMyKey()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1072
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1075
    :cond_5
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasValueToMe()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1076
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1079
    :cond_6
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasRefundFees()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1080
    iput-byte v2, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    goto :goto_1

    .line 1083
    :cond_7
    iput-byte v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->memoizedIsInitialized:B

    move v2, v1

    .line 1084
    goto :goto_1
.end method

.method public newBuilderForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1214
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1223
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/bitcoin/protocols/channels/ClientState$1;)V

    .line 1224
    .local v0, "builder":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilderForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 798
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilderForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1218
    invoke-static {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilder(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->toBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->toBuilder()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

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
    .line 1157
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1089
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getSerializedSize()I

    .line 1090
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->id_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1093
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1096
    :cond_1
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1097
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundTransaction_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1099
    :cond_2
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1100
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1102
    :cond_3
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1103
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->valueToMe_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1105
    :cond_4
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1106
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->refundFees_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1108
    :cond_5
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1109
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1111
    :cond_6
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1112
    return-void
.end method
