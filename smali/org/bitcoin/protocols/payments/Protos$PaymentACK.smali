.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentACKOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentACK"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    }
.end annotation


# static fields
.field public static final MEMO_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentACK;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memo_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5276
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    .line 5907
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    .line 5908
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->initFields()V

    .line 5909
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
    const/4 v6, -0x1

    .line 5214
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5385
    iput-byte v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    .line 5414
    iput v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    .line 5215
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->initFields()V

    .line 5216
    const/4 v2, 0x0

    .line 5217
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 5220
    .local v5, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 5221
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 5222
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 5223
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 5228
    invoke-virtual {p0, p1, v5, p2, v4}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5230
    const/4 v0, 0x1

    goto :goto_0

    .line 5225
    :sswitch_0
    const/4 v0, 0x1

    .line 5226
    goto :goto_0

    .line 5235
    :sswitch_1
    const/4 v3, 0x0

    .line 5236
    .local v3, "subBuilder":Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    iget v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 5237
    iget-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v6}, Lorg/bitcoin/protocols/payments/Protos$Payment;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v3

    .line 5239
    :cond_1
    sget-object v6, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lorg/bitcoin/protocols/payments/Protos$Payment;

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5240
    if-eqz v3, :cond_2

    .line 5241
    iget-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v3, v6}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 5242
    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5244
    :cond_2
    iget v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5254
    .end local v3    # "subBuilder":Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .end local v4    # "tag":I
    :catch_0
    move-exception v1

    .line 5255
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5260
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5261
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->makeExtensionsImmutable()V

    throw v6

    .line 5248
    .restart local v4    # "tag":I
    :sswitch_2
    :try_start_2
    iget v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    .line 5249
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 5256
    .end local v4    # "tag":I
    :catch_1
    move-exception v1

    .line 5257
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5260
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5261
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->makeExtensionsImmutable()V

    .line 5263
    return-void

    .line 5223
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 5186
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5191
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 5385
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    .line 5414
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    .line 5192
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5193
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/protocols/payments/Protos$1;

    .prologue
    .line 5186
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 5194
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 5385
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    .line 5414
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    .line 5194
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$6500()Z
    .locals 1

    .prologue
    .line 5186
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6702(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .param p1, "x1"    # Lorg/bitcoin/protocols/payments/Protos$Payment;

    .prologue
    .line 5186
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p1
.end method

.method static synthetic access$6800(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    .prologue
    .line 5186
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6802(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 5186
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6902(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .param p1, "x1"    # I

    .prologue
    .line 5186
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1

    .prologue
    .line 5198
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5266
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 5382
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5383
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    .line 5384
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .prologue
    .line 5493
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->access$6300()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    .prologue
    .line 5496
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5473
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5479
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5443
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5449
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5484
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5490
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5463
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5469
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5453
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5459
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5186
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5186
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1

    .prologue
    .line 5202
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5347
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    .line 5348
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5349
    check-cast v1, Ljava/lang/String;

    .line 5357
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 5351
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5353
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5354
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5355
    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 5357
    goto :goto_0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5369
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    .line 5370
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5371
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5374
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    .line 5377
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentACK;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5288
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .prologue
    .line 5313
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public getPaymentOrBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;
    .locals 1

    .prologue
    .line 5323
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5416
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    .line 5417
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5430
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 5419
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 5420
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 5421
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5424
    :cond_1
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 5425
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5428
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 5429
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    move v1, v0

    .line 5430
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 5209
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMemo()Z
    .locals 2

    .prologue
    .line 5337
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

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

.method public hasPayment()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5303
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

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
    .line 5271
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5387
    iget-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    .line 5388
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 5399
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 5388
    goto :goto_0

    .line 5390
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->hasPayment()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5391
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    move v1, v2

    .line 5392
    goto :goto_0

    .line 5394
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$Payment;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5395
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    move v1, v2

    .line 5396
    goto :goto_0

    .line 5398
    :cond_3
    iput-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5186
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5186
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5186
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .prologue
    .line 5494
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 5503
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 5504
    .local v0, "builder":Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5186
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5186
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .prologue
    .line 5498
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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
    .line 5437
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5404
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getSerializedSize()I

    .line 5405
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5406
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5408
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5409
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5411
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 5412
    return-void
.end method
