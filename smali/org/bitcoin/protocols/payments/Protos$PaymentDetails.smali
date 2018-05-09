.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    }
.end annotation


# static fields
.field public static final EXPIRES_FIELD_NUMBER:I = 0x4

.field public static final MEMO_FIELD_NUMBER:I = 0x5

.field public static final MERCHANT_DATA_FIELD_NUMBER:I = 0x7

.field public static final NETWORK_FIELD_NUMBER:I = 0x1

.field public static final OUTPUTS_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_URL_FIELD_NUMBER:I = 0x6

.field public static final TIME_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private expires_:J

.field private memo_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private merchantData_:Lcom/google/protobuf/ByteString;

.field private network_:Ljava/lang/Object;

.field private outputs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end field

.field private paymentUrl_:Ljava/lang/Object;

.field private time_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 870
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    .line 2327
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .line 2328
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->initFields()V

    .line 2329
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x2

    .line 785
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1188
    iput-byte v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    .line 1234
    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    .line 786
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->initFields()V

    .line 787
    const/4 v2, 0x0

    .line 788
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 791
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 792
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 793
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 794
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 799
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 801
    const/4 v0, 0x1

    goto :goto_0

    .line 796
    :sswitch_0
    const/4 v0, 0x1

    .line 797
    goto :goto_0

    .line 806
    :sswitch_1
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 807
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 845
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 846
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    and-int/lit8 v6, v2, 0x2

    if-ne v6, v7, :cond_1

    .line 852
    iget-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    .line 854
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 855
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->makeExtensionsImmutable()V

    throw v5

    .line 811
    .restart local v3    # "tag":I
    :sswitch_2
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v7, :cond_2

    .line 812
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    .line 813
    or-int/lit8 v2, v2, 0x2

    .line 815
    :cond_2
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    sget-object v6, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 847
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 848
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

    .line 819
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "tag":I
    :sswitch_3
    :try_start_4
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 820
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    goto :goto_0

    .line 824
    :sswitch_4
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 825
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    goto :goto_0

    .line 829
    :sswitch_5
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 830
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 834
    :sswitch_6
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 835
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 839
    :sswitch_7
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 840
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 851
    .end local v3    # "tag":I
    :cond_3
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_4

    .line 852
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    .line 854
    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 855
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->makeExtensionsImmutable()V

    .line 857
    return-void

    .line 794
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 757
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 762
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1188
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    .line 1234
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    .line 763
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 764
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 765
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1188
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    .line 1234
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    .line 765
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 757
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1700(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .prologue
    .line 757
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 757
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .prologue
    .line 757
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 757
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .param p1, "x1"    # J

    .prologue
    .line 757
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    return-wide p1
.end method

.method static synthetic access$2002(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .param p1, "x1"    # J

    .prologue
    .line 757
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    return-wide p1
.end method

.method static synthetic access$2100(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .prologue
    .line 757
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 757
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .prologue
    .line 757
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 757
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 757
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2402(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .param p1, "x1"    # I

    .prologue
    .line 757
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    return p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 757
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1

    .prologue
    .line 769
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 860
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1180
    const-string v0, "main"

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    .line 1181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    .line 1182
    iput-wide v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    .line 1183
    iput-wide v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    .line 1184
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    .line 1185
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    .line 1186
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 1187
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 1333
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->access$1300()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .prologue
    .line 1336
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1313
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1319
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1283
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1289
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1324
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1330
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1303
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1309
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1293
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1299
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1

    .prologue
    .line 773
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .prologue
    .line 1042
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    return-wide v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1066
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    .line 1067
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1068
    check-cast v1, Ljava/lang/String;

    .line 1076
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1070
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1072
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1073
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1074
    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1076
    goto :goto_0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1088
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    .line 1089
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1090
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1093
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    .line 1096
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
    .line 1176
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 4

    .prologue
    .line 907
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    .line 908
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 909
    check-cast v1, Ljava/lang/String;

    .line 917
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 911
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 913
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 914
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 915
    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 917
    goto :goto_0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 929
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    .line 930
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 931
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 934
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    .line 937
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

.method public getOutputs(I)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 983
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object v0
.end method

.method public getOutputsCount()I
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
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
    .line 952
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    return-object v0
.end method

.method public getOutputsOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 994
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    return-object v0
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
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
    .line 963
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1121
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    .line 1122
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1123
    check-cast v1, Ljava/lang/String;

    .line 1131
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1125
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1127
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1128
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1129
    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1131
    goto :goto_0
.end method

.method public getPaymentUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1143
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    .line 1144
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1145
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1148
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    .line 1151
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

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1236
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    .line 1237
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1270
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1239
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1240
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1241
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1244
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1245
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1248
    :cond_2
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3

    .line 1249
    const/4 v3, 0x3

    iget-wide v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1252
    :cond_3
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_4

    .line 1253
    iget-wide v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    invoke-static {v6, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1256
    :cond_4
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 1257
    const/4 v3, 0x5

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1260
    :cond_5
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 1261
    const/4 v3, 0x6

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1264
    :cond_6
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_7

    .line 1265
    const/4 v3, 0x7

    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1268
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1269
    iput v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    move v2, v1

    .line 1270
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 1018
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExpires()Z
    .locals 2

    .prologue
    .line 1032
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

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

.method public hasMemo()Z
    .locals 2

    .prologue
    .line 1056
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

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

.method public hasMerchantData()Z
    .locals 2

    .prologue
    .line 1166
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

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

.method public hasNetwork()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 897
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPaymentUrl()Z
    .locals 2

    .prologue
    .line 1111
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    .prologue
    .line 1008
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 865
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1190
    iget-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    .line 1191
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 1204
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1191
    goto :goto_0

    .line 1193
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasTime()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1194
    iput-byte v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    move v2, v3

    .line 1195
    goto :goto_0

    .line 1197
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1198
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputs(I)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoin/protocols/payments/Protos$Output;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1199
    iput-byte v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    move v2, v3

    .line 1200
    goto :goto_0

    .line 1197
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1203
    :cond_4
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 1334
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1343
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 1344
    .local v0, "builder":Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .prologue
    .line 1338
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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
    .line 1277
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

    .line 1209
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getSerializedSize()I

    .line 1210
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1211
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1213
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1214
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1216
    :cond_1
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1217
    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1219
    :cond_2
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1220
    iget-wide v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1222
    :cond_3
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 1223
    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1225
    :cond_4
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 1226
    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1228
    :cond_5
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 1229
    const/4 v1, 0x7

    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1231
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1232
    return-void
.end method
