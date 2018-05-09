.class public final Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ClientState.java"

# interfaces
.implements Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;",
        ">;",
        "Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private closeTransactionHash_:Lcom/google/protobuf/ByteString;

.field private contractTransaction_:Lcom/google/protobuf/ByteString;

.field private id_:Lcom/google/protobuf/ByteString;

.field private myKey_:Lcom/google/protobuf/ByteString;

.field private refundFees_:J

.field private refundTransaction_:Lcom/google/protobuf/ByteString;

.field private valueToMe_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1428
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1464
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1500
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1536
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1638
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 1251
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->maybeForceBuilderInitialization()V

    .line 1252
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1256
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1428
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1464
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1500
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1536
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1638
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 1257
    invoke-direct {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->maybeForceBuilderInitialization()V

    .line 1258
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/bitcoin/protocols/channels/ClientState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lcom/google/bitcoin/protocols/channels/ClientState$1;

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1200()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->create()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1264
    new-instance v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    invoke-direct {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1239
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1260
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 2

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    .line 1301
    .local v0, "result":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1302
    invoke-static {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1304
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->build()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 5

    .prologue
    .line 1308
    new-instance v1, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/bitcoin/protocols/channels/ClientState$1;)V

    .line 1309
    .local v1, "result":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1310
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1311
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1312
    or-int/lit8 v2, v2, 0x1

    .line 1314
    :cond_0
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1602(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1315
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1316
    or-int/lit8 v2, v2, 0x2

    .line 1318
    :cond_1
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1702(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1319
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1320
    or-int/lit8 v2, v2, 0x4

    .line 1322
    :cond_2
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1802(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1323
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1324
    or-int/lit8 v2, v2, 0x8

    .line 1326
    :cond_3
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->access$1902(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1327
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1328
    or-int/lit8 v2, v2, 0x10

    .line 1330
    :cond_4
    iget-wide v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    invoke-static {v1, v3, v4}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2002(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;J)J

    .line 1331
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1332
    or-int/lit8 v2, v2, 0x20

    .line 1334
    :cond_5
    iget-wide v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    invoke-static {v1, v3, v4}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2102(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;J)J

    .line 1335
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1336
    or-int/lit8 v2, v2, 0x40

    .line 1338
    :cond_6
    iget-object v3, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2202(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 1339
    invoke-static {v1, v2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->access$2302(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;I)I

    .line 1340
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onBuilt()V

    .line 1341
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1268
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1269
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1270
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1271
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1272
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1273
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1274
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1275
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1276
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1277
    iput-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    .line 1278
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1279
    iput-wide v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    .line 1280
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1281
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 1282
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1283
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clear()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCloseTransactionHash()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1691
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1692
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getCloseTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 1693
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1694
    return-object p0
.end method

.method public clearContractTransaction()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1493
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1494
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1495
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1496
    return-object p0
.end method

.method public clearId()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1457
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1458
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1459
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1460
    return-object p0
.end method

.method public clearMyKey()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1565
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1566
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1567
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1568
    return-object p0
.end method

.method public clearRefundFees()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2

    .prologue
    .line 1631
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1632
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    .line 1633
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1634
    return-object p0
.end method

.method public clearRefundTransaction()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1

    .prologue
    .line 1529
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1530
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1531
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1532
    return-object p0
.end method

.method public clearValueToMe()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2

    .prologue
    .line 1598
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1599
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    .line 1600
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1601
    return-object p0
.end method

.method public clone()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2

    .prologue
    .line 1287
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->create()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->buildPartial()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

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
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->clone()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCloseTransactionHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1

    .prologue
    .line 1296
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->getDefaultInstanceForType()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1292
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMyKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRefundFees()J
    .locals 2

    .prologue
    .line 1616
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    return-wide v0
.end method

.method public getRefundTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValueToMe()J
    .locals 2

    .prologue
    .line 1583
    iget-wide v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    return-wide v0
.end method

.method public hasCloseTransactionHash()Z
    .locals 2

    .prologue
    .line 1649
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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
    .line 1469
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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

    .line 1433
    iget v1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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
    .line 1541
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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
    .line 1610
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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
    .line 1505
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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
    .line 1577
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

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
    .line 1244
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState;->access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    const-class v2, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1381
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasId()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return v0

    .line 1385
    :cond_1
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasContractTransaction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasRefundTransaction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1393
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasMyKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasValueToMe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1401
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->hasRefundFees()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1405
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    .prologue
    .line 1354
    invoke-static {}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getDefaultInstance()Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1377
    :goto_0
    return-object p0

    .line 1355
    :cond_0
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1356
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setId(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1358
    :cond_1
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasContractTransaction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1359
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setContractTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1361
    :cond_2
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasRefundTransaction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1362
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setRefundTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1364
    :cond_3
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasMyKey()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1365
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setMyKey(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1367
    :cond_4
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasValueToMe()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1368
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getValueToMe()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setValueToMe(J)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1370
    :cond_5
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasRefundFees()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1371
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundFees()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setRefundFees(J)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1373
    :cond_6
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->hasCloseTransactionHash()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1374
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getCloseTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setCloseTransactionHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1376
    :cond_7
    invoke-virtual {p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1412
    const/4 v2, 0x0

    .line 1414
    .local v2, "parsedMessage":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;
    :try_start_0
    sget-object v3, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    if-eqz v2, :cond_0

    .line 1420
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 1423
    :cond_0
    return-object p0

    .line 1415
    :catch_0
    move-exception v1

    .line 1416
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-object v2, v0

    .line 1417
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1420
    invoke-virtual {p0, v2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1345
    instance-of v0, p1, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    if-eqz v0, :cond_0

    .line 1346
    check-cast p1, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object p0

    .line 1349
    .end local p0    # "this":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    :goto_0
    return-object p0

    .line 1348
    .restart local p0    # "this":Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
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
    .line 1234
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1234
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

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
    .line 1234
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

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
    .line 1234
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1234
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

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
    .line 1234
    invoke-virtual {p0, p1, p2}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCloseTransactionHash(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1673
    if-nez p1, :cond_0

    .line 1674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1676
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1677
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->closeTransactionHash_:Lcom/google/protobuf/ByteString;

    .line 1678
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1679
    return-object p0
.end method

.method public setContractTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1481
    if-nez p1, :cond_0

    .line 1482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1484
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1485
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->contractTransaction_:Lcom/google/protobuf/ByteString;

    .line 1486
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1487
    return-object p0
.end method

.method public setId(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1445
    if-nez p1, :cond_0

    .line 1446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1448
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1449
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->id_:Lcom/google/protobuf/ByteString;

    .line 1450
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1451
    return-object p0
.end method

.method public setMyKey(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1553
    if-nez p1, :cond_0

    .line 1554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1556
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1557
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->myKey_:Lcom/google/protobuf/ByteString;

    .line 1558
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1559
    return-object p0
.end method

.method public setRefundFees(J)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1622
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1623
    iput-wide p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundFees_:J

    .line 1624
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1625
    return-object p0
.end method

.method public setRefundTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 1517
    if-nez p1, :cond_0

    .line 1518
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1520
    :cond_0
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1521
    iput-object p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->refundTransaction_:Lcom/google/protobuf/ByteString;

    .line 1522
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1523
    return-object p0
.end method

.method public setValueToMe(J)Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1589
    iget v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->bitField0_:I

    .line 1590
    iput-wide p1, p0, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->valueToMe_:J

    .line 1591
    invoke-virtual {p0}, Lcom/google/bitcoin/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->onChanged()V

    .line 1592
    return-object p0
.end method
