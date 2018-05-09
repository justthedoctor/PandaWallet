.class public final Lorg/bitcoin/protocols/payments/Protos$Payment;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    }
.end annotation


# static fields
.field public static final MEMO_FIELD_NUMBER:I = 0x4

.field public static final MERCHANT_DATA_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFUND_TO_FIELD_NUMBER:I = 0x3

.field public static final TRANSACTIONS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Payment;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memo_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private merchantData_:Lcom/google/protobuf/ByteString;

.field private refundTo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end field

.field private transactions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4030
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Payment$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    .line 5120
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5121
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->initFields()V

    .line 5122
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 3954
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4222
    iput-byte v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    .line 4255
    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    .line 3955
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->initFields()V

    .line 3956
    const/4 v2, 0x0

    .line 3957
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 3960
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 3961
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 3962
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3963
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3968
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3970
    const/4 v0, 0x1

    goto :goto_0

    .line 3965
    :sswitch_0
    const/4 v0, 0x1

    .line 3966
    goto :goto_0

    .line 3975
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    .line 3976
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4002
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 4003
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4008
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x2

    if-ne v6, v7, :cond_1

    .line 4009
    iget-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    .line 4011
    :cond_1
    and-int/lit8 v6, v2, 0x4

    if-ne v6, v8, :cond_2

    .line 4012
    iget-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    .line 4014
    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4015
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->makeExtensionsImmutable()V

    throw v5

    .line 3980
    .restart local v3    # "tag":I
    :sswitch_2
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v7, :cond_3

    .line 3981
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    .line 3982
    or-int/lit8 v2, v2, 0x2

    .line 3984
    :cond_3
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 4004
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 4005
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

    .line 3988
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    and-int/lit8 v5, v2, 0x4

    if-eq v5, v8, :cond_4

    .line 3989
    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    .line 3990
    or-int/lit8 v2, v2, 0x4

    .line 3992
    :cond_4
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    sget-object v6, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3996
    :sswitch_4
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    .line 3997
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 4008
    .end local v3    # "tag":I
    :cond_5
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_6

    .line 4009
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    .line 4011
    :cond_6
    and-int/lit8 v5, v2, 0x4

    if-ne v5, v8, :cond_7

    .line 4012
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    .line 4014
    :cond_7
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4015
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->makeExtensionsImmutable()V

    .line 4017
    return-void

    .line 3963
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lorg/bitcoin/protocols/payments/Protos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3926
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3931
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 4222
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    .line 4255
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    .line 3932
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3933
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 3926
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3934
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4222
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    .line 4255
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    .line 3934
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5200()Z
    .locals 1

    .prologue
    .line 3926
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5402(Lorg/bitcoin/protocols/payments/Protos$Payment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3926
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    .line 3926
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 3926
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    .line 3926
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5602(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 3926
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5700(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    .line 3926
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5702(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3926
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lorg/bitcoin/protocols/payments/Protos$Payment;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$Payment;
    .param p1, "x1"    # I

    .prologue
    .line 3926
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    return p1
.end method

.method static synthetic access$5900()Z
    .locals 1

    .prologue
    .line 3926
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .prologue
    .line 3938
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4020
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 4217
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    .line 4219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    .line 4220
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    .line 4221
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 4347
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->access$5000()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    .line 4350
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4327
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4333
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4297
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4303
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4338
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4344
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4317
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4323
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4307
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4313
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 3926
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3926
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .prologue
    .line 3942
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4182
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    .line 4183
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4184
    check-cast v1, Ljava/lang/String;

    .line 4192
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 4186
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4188
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4189
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4190
    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 4192
    goto :goto_0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4204
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    .line 4205
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4206
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4209
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    .line 4212
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getMerchantData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4067
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4042
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4147
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public getRefundToCount()I
    .locals 1

    .prologue
    .line 4137
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRefundToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4116
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    return-object v0
.end method

.method public getRefundToOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4158
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    return-object v0
.end method

.method public getRefundToOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4127
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4257
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    .line 4258
    .local v2, "size":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 4284
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 4260
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_0
    const/4 v2, 0x0

    .line 4261
    iget v4, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 4262
    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4266
    :cond_1
    const/4 v0, 0x0

    .line 4267
    .local v0, "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 4268
    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 4267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4271
    :cond_2
    add-int/2addr v2, v0

    .line 4272
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getTransactionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 4274
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 4275
    const/4 v5, 0x3

    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4274
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4278
    :cond_3
    iget v4, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 4279
    const/4 v4, 0x4

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 4282
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 4283
    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    move v3, v2

    .line 4284
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto :goto_0
.end method

.method public getTransactions(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4102
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransactionsCount()I
    .locals 1

    .prologue
    .line 4092
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4082
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 3949
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMemo()Z
    .locals 2

    .prologue
    .line 4172
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

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

.method public hasMerchantData()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4057
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 4025
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$Payment;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4224
    iget-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    .line 4225
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 4234
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 4225
    goto :goto_0

    .line 4227
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getRefundToCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 4228
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoin/protocols/payments/Protos$Output;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4229
    iput-byte v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    move v2, v3

    .line 4230
    goto :goto_0

    .line 4227
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4233
    :cond_3
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3926
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3926
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3926
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 4348
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 4357
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 4358
    .local v0, "builder":Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3926
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3926
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .prologue
    .line 4352
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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
    .line 4291
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4239
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getSerializedSize()I

    .line 4240
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 4241
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4243
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4244
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4246
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4247
    const/4 v2, 0x3

    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4246
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4249
    :cond_2
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_3

    .line 4250
    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4252
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 4253
    return-void
.end method
