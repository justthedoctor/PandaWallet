.class public final Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ServerState.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;",
        ">;",
        "Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannelOrBuilder;"
    }
.end annotation


# instance fields
.field private bestValueSignature_:Lcom/google/protobuf/ByteString;

.field private bestValueToMe_:J

.field private bitField0_:I

.field private clientOutput_:Lcom/google/protobuf/ByteString;

.field private contractTransaction_:Lcom/google/protobuf/ByteString;

.field private myKey_:Lcom/google/protobuf/ByteString;

.field private refundTransactionUnlockTimeSecs_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1379
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1448
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1484
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1520
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1182
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->maybeForceBuilderInitialization()V

    .line 1183
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1187
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1379
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1448
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1484
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1520
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1188
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->maybeForceBuilderInitialization()V

    .line 1189
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/bitcoin/protocols/channels/ServerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/google/bitcoin/protocols/channels/ServerState$1;

    .prologue
    .line 1165
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1200()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->create()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1195
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1170
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1191
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 2

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    .line 1230
    .local v0, "result":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1231
    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1233
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 5

    .prologue
    .line 1237
    new-instance v1, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/bitcoin/protocols/channels/ServerState$1;)V

    .line 1238
    .local v1, "result":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1239
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1240
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1241
    or-int/lit8 v2, v2, 0x1

    .line 1243
    :cond_0
    iget-wide v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    invoke-static {v1, v3, v4}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1602(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;J)J

    .line 1244
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1245
    or-int/lit8 v2, v2, 0x2

    .line 1247
    :cond_1
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1702(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1248
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1249
    or-int/lit8 v2, v2, 0x4

    .line 1251
    :cond_2
    iget-wide v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    invoke-static {v1, v3, v4}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1802(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;J)J

    .line 1252
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1253
    or-int/lit8 v2, v2, 0x8

    .line 1255
    :cond_3
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->access$1902(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1256
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1257
    or-int/lit8 v2, v2, 0x10

    .line 1259
    :cond_4
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->access$2002(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1260
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1261
    or-int/lit8 v2, v2, 0x20

    .line 1263
    :cond_5
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->access$2102(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1264
    invoke-static {v1, v2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->access$2202(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;I)I

    .line 1265
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onBuilt()V

    .line 1266
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1199
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1200
    iput-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    .line 1201
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1202
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1203
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1204
    iput-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    .line 1205
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1206
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1207
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1208
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1209
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1210
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1211
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1212
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBestValueSignature()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1408
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1409
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1410
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1411
    return-object p0
.end method

.method public clearBestValueToMe()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .prologue
    .line 1372
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    .line 1374
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1375
    return-object p0
.end method

.method public clearClientOutput()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1513
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1514
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getClientOutput()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1515
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1516
    return-object p0
.end method

.method public clearContractTransaction()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1477
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1478
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1479
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1480
    return-object p0
.end method

.method public clearMyKey()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1549
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1550
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1551
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1552
    return-object p0
.end method

.method public clearRefundTransactionUnlockTimeSecs()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .prologue
    .line 1441
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1442
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    .line 1443
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1444
    return-object p0
.end method

.method public clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2

    .prologue
    .line 1216
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->create()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBestValueSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBestValueToMe()J
    .locals 2

    .prologue
    .line 1357
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    return-wide v0
.end method

.method public getClientOutput()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    .locals 1

    .prologue
    .line 1225
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1221
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMyKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRefundTransactionUnlockTimeSecs()J
    .locals 2

    .prologue
    .line 1426
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    return-wide v0
.end method

.method public hasBestValueSignature()Z
    .locals 2

    .prologue
    .line 1384
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

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

    .line 1351
    iget v1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

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
    .line 1489
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

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
    .line 1453
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

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
    .line 1525
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

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
    .line 1420
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

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
    .line 1175
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    const-class v2, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1303
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->hasBestValueToMe()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return v0

    .line 1307
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->hasRefundTransactionUnlockTimeSecs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1311
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->hasContractTransaction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->hasClientOutput()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1319
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->hasMyKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1323
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    .prologue
    .line 1279
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1299
    :goto_0
    return-object p0

    .line 1280
    :cond_0
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasBestValueToMe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueToMe()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setBestValueToMe(J)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1283
    :cond_1
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasBestValueSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1284
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setBestValueSignature(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1286
    :cond_2
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasRefundTransactionUnlockTimeSecs()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1287
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getRefundTransactionUnlockTimeSecs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setRefundTransactionUnlockTimeSecs(J)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1289
    :cond_3
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasContractTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1290
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setContractTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1292
    :cond_4
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasClientOutput()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1293
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getClientOutput()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setClientOutput(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1295
    :cond_5
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->hasMyKey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1296
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setMyKey(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1298
    :cond_6
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1330
    const/4 v2, 0x0

    .line 1332
    .local v2, "parsedMessage":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;
    :try_start_0
    sget-object v3, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1337
    if-eqz v2, :cond_0

    .line 1338
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 1341
    :cond_0
    return-object p0

    .line 1333
    :catch_0
    move-exception v1

    .line 1334
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    move-object v2, v0

    .line 1335
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1337
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1338
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1270
    instance-of v0, p1, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    if-eqz v0, :cond_0

    .line 1271
    check-cast p1, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object p0

    .line 1274
    .end local p0    # "this":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    :goto_0
    return-object p0

    .line 1273
    .restart local p0    # "this":Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1165
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1165
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBestValueSignature(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1396
    if-nez p1, :cond_0

    .line 1397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1399
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1400
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueSignature_:Lcom/google/protobuf/ByteString;

    .line 1401
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1402
    return-object p0
.end method

.method public setBestValueToMe(J)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1363
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1364
    iput-wide p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bestValueToMe_:J

    .line 1365
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1366
    return-object p0
.end method

.method public setClientOutput(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1501
    if-nez p1, :cond_0

    .line 1502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1504
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1505
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->clientOutput_:Lcom/google/protobuf/ByteString;

    .line 1506
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1507
    return-object p0
.end method

.method public setContractTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1465
    if-nez p1, :cond_0

    .line 1466
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1468
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1469
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1470
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1471
    return-object p0
.end method

.method public setMyKey(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1537
    if-nez p1, :cond_0

    .line 1538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1540
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1541
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1542
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1543
    return-object p0
.end method

.method public setRefundTransactionUnlockTimeSecs(J)Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1432
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->bitField0_:I

    .line 1433
    iput-wide p1, p0, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->refundTransactionUnlockTimeSecs_:J

    .line 1434
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->onChanged()V

    .line 1435
    return-object p0
.end method
