.class public final Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TwoWayChannelMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;,
        Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    }
.end annotation


# static fields
.field public static final CLIENT_VERSION_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0xa

.field public static final INITIATE_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDE_CONTRACT_FIELD_NUMBER:I = 0x7

.field public static final PROVIDE_REFUND_FIELD_NUMBER:I = 0x5

.field public static final RETURN_REFUND_FIELD_NUMBER:I = 0x6

.field public static final SERVER_VERSION_FIELD_NUMBER:I = 0x3

.field public static final SETTLEMENT_FIELD_NUMBER:I = 0x9

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final UPDATE_PAYMENT_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

.field private error_:Lorg/bitcoin/paymentchannel/Protos$Error;

.field private initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

.field private provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

.field private returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

.field private serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

.field private settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

.field private type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 383
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 2596
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .line 2597
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initFields()V

    .line 2598
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 211
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 884
    iput-byte v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    .line 981
    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    .line 212
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initFields()V

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 217
    .local v6, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 218
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_14

    .line 219
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 220
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 225
    invoke-virtual {p0, p1, v6, p2, v5}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 227
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :sswitch_0
    const/4 v0, 0x1

    .line 223
    goto :goto_0

    .line 232
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 233
    .local v3, "rawValue":I
    invoke-static {v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->valueOf(I)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v7

    .line 234
    .local v7, "value":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    if-nez v7, :cond_1

    .line 235
    const/4 v8, 0x1

    invoke-virtual {v6, v8, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 361
    .end local v3    # "rawValue":I
    .end local v5    # "tag":I
    .end local v7    # "value":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->makeExtensionsImmutable()V

    throw v8

    .line 237
    .restart local v3    # "rawValue":I
    .restart local v5    # "tag":I
    .restart local v7    # "value":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    :cond_1
    :try_start_2
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    .line 238
    iput-object v7, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 363
    .end local v3    # "rawValue":I
    .end local v5    # "tag":I
    .end local v7    # "value":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    :catch_1
    move-exception v1

    .line 364
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "tag":I
    :sswitch_2
    const/4 v4, 0x0

    .line 244
    .local v4, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    :try_start_4
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v8, v8, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 245
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v4

    .line 247
    :cond_2
    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 248
    if-eqz v4, :cond_3

    .line 249
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-virtual {v4, v8}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 250
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 252
    :cond_3
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto :goto_0

    .line 256
    .end local v4    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    :sswitch_3
    const/4 v4, 0x0

    .line 257
    .local v4, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v8, v8, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 258
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v4

    .line 260
    :cond_4
    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 261
    if-eqz v4, :cond_5

    .line 262
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-virtual {v4, v8}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .line 263
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 265
    :cond_5
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 269
    .end local v4    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    :sswitch_4
    const/4 v4, 0x0

    .line 270
    .local v4, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v8, v8, 0x8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    .line 271
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v4

    .line 273
    :cond_6
    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 274
    if-eqz v4, :cond_7

    .line 275
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-virtual {v4, v8}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 276
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 278
    :cond_7
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 282
    .end local v4    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;
    :sswitch_5
    const/4 v4, 0x0

    .line 283
    .local v4, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v8, v8, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_8

    .line 284
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v4

    .line 286
    :cond_8
    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 287
    if-eqz v4, :cond_9

    .line 288
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-virtual {v4, v8}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .line 289
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 291
    :cond_9
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 295
    .end local v4    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    :sswitch_6
    const/4 v4, 0x0

    .line 296
    .local v4, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v8, v8, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_a

    .line 297
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v4

    .line 299
    :cond_a
    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 300
    if-eqz v4, :cond_b

    .line 301
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-virtual {v4, v8}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    .line 302
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 304
    :cond_b
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 308
    .end local v4    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    :sswitch_7
    const/4 v4, 0x0

    .line 309
    .local v4, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v8, v8, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_c

    .line 310
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v4

    .line 312
    :cond_c
    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 313
    if-eqz v4, :cond_d

    .line 314
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-virtual {v4, v8}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 315
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 317
    :cond_d
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 321
    .end local v4    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    :sswitch_8
    const/4 v4, 0x0

    .line 322
    .local v4, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v8, v8, 0x80

    const/16 v9, 0x80

    if-ne v8, v9, :cond_e

    .line 323
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v4

    .line 325
    :cond_e
    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 326
    if-eqz v4, :cond_f

    .line 327
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {v4, v8}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 328
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 330
    :cond_f
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 334
    .end local v4    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    :sswitch_9
    const/4 v4, 0x0

    .line 335
    .local v4, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v8, v8, 0x100

    const/16 v9, 0x100

    if-ne v8, v9, :cond_10

    .line 336
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v4

    .line 338
    :cond_10
    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 339
    if-eqz v4, :cond_11

    .line 340
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-virtual {v4, v8}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    .line 341
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 343
    :cond_11
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 347
    .end local v4    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    :sswitch_a
    const/4 v4, 0x0

    .line 348
    .local v4, "subBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v8, v8, 0x200

    const/16 v9, 0x200

    if-ne v8, v9, :cond_12

    .line 349
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-virtual {v8}, Lorg/bitcoin/paymentchannel/Protos$Error;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v4

    .line 351
    :cond_12
    sget-object v8, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoin/paymentchannel/Protos$Error;

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 352
    if-eqz v4, :cond_13

    .line 353
    iget-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-virtual {v4, v8}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 354
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 356
    :cond_13
    iget v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 367
    .end local v4    # "subBuilder":Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .end local v5    # "tag":I
    :cond_14
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 368
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->makeExtensionsImmutable()V

    .line 370
    return-void

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lorg/bitcoin/paymentchannel/Protos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 188
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 884
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    .line 981
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    .line 189
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoin/paymentchannel/Protos$1;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 191
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 884
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    .line 981
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    .line 191
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p1
.end method

.method static synthetic access$1202(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p1
.end method

.method static synthetic access$1402(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$Error;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p1
.end method

.method static synthetic access$1702(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # I

    .prologue
    .line 183
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 183
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p1
.end method

.method static synthetic access$802(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p1
.end method

.method static synthetic access$902(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .param p1, "x1"    # Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 873
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 874
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 875
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 876
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 877
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 878
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 879
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 880
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 881
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 882
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 883
    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1092
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->access$300()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .prologue
    .line 1095
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1072
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1078
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1042
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1048
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1083
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1062
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1052
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1058
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method


# virtual methods
.method public getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public getClientVersionOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public getError()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public getErrorOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public getInitiateOrBuilder()Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public getProvideContractOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public getProvideRefundOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public getReturnRefundOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 983
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    .line 984
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1029
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 986
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 987
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 988
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 991
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 992
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 995
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 996
    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 999
    :cond_3
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 1000
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1003
    :cond_4
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1004
    const/4 v2, 0x5

    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1007
    :cond_5
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 1008
    const/4 v2, 0x6

    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1011
    :cond_6
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 1012
    const/4 v2, 0x7

    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1015
    :cond_7
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 1016
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1019
    :cond_8
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 1020
    const/16 v2, 0x9

    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1023
    :cond_9
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 1024
    const/16 v2, 0xa

    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1027
    :cond_a
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1028
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 1029
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public getServerVersionOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public getSettlementOrBuilder()Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getUpdatePaymentOrBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public hasClientVersion()Z
    .locals 2

    .prologue
    .line 673
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasError()Z
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInitiate()Z
    .locals 2

    .prologue
    .line 725
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasProvideContract()Z
    .locals 2

    .prologue
    .line 791
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasProvideRefund()Z
    .locals 2

    .prologue
    .line 747
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasReturnRefund()Z
    .locals 2

    .prologue
    .line 769
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasServerVersion()Z
    .locals 2

    .prologue
    .line 703
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasSettlement()Z
    .locals 2

    .prologue
    .line 835
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 647
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdatePayment()Z
    .locals 2

    .prologue
    .line 813
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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
    .line 378
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 886
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    .line 887
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    :goto_0
    move v2, v1

    .line 942
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 887
    goto :goto_0

    .line 889
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 890
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 893
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasClientVersion()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 894
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 895
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 899
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasServerVersion()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 900
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 901
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 905
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasInitiate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 906
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_5

    .line 907
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 911
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideRefund()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 912
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    .line 913
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 917
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasReturnRefund()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 918
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_7

    .line 919
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 923
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideContract()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 924
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_8

    .line 925
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    goto :goto_1

    .line 929
    :cond_8
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasUpdatePayment()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 930
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_9

    .line 931
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    goto/16 :goto_1

    .line 935
    :cond_9
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasSettlement()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 936
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    .line 937
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    goto/16 :goto_1

    .line 941
    :cond_a
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    move v2, v1

    .line 942
    goto/16 :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1093
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1102
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 1103
    .local v0, "builder":Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .prologue
    .line 1097
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

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
    .line 1036
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 947
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getSerializedSize()I

    .line 948
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 949
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 951
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 952
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 954
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 955
    const/4 v0, 0x3

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 957
    :cond_2
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 958
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 960
    :cond_3
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 961
    const/4 v0, 0x5

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 963
    :cond_4
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 964
    const/4 v0, 0x6

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 966
    :cond_5
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 967
    const/4 v0, 0x7

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 969
    :cond_6
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 970
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 972
    :cond_7
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 973
    const/16 v0, 0x9

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 975
    :cond_8
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 976
    const/16 v0, 0xa

    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 978
    :cond_9
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 979
    return-void
.end method
