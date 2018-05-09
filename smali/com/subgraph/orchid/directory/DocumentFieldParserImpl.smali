.class public Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;
.super Ljava/lang/Object;
.source "DocumentFieldParserImpl.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;


# static fields
.field private static final BEGIN_TAG:Ljava/lang/String; = "-----BEGIN"

.field private static final DEFAULT_DELIMITER:Ljava/lang/String; = " "

.field private static final END_TAG:Ljava/lang/String; = "-----END"

.field private static final TAG_DELIMITER:Ljava/lang/String; = "-----"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

.field private currentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentItemsPosition:I

.field private currentKeyword:Ljava/lang/String;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private delimiter:Ljava/lang/String;

.field private final inputBuffer:Ljava/nio/ByteBuffer;

.field private isProcessingSignedEntity:Z

.field private rawDocumentBuffer:Ljava/lang/StringBuilder;

.field private recognizeOpt:Z

.field private signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

.field private signatureDigest256:Lcom/subgraph/orchid/crypto/TorMessageDigest;

.field private signatureIgnoreToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, " "

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->delimiter:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->createDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 54
    return-void
.end method

.method private static createDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "format":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 60
    return-object v0
.end method

.method private getItem()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    iget v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 89
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "Overrun while reading arguments"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItems:Ljava/util/List;

    iget v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private nextLineFromInputBuffer()Ljava/lang/String;
    .locals 3

    .prologue
    .line 367
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    const/4 v2, 0x0

    .line 379
    :goto_0
    return-object v2

    .line 370
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .local v1, "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v0, v2

    .line 373
    .local v0, "c":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 375
    :cond_2
    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .line 376
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 379
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private parseObjectBody(Lcom/subgraph/orchid/directory/parsing/DocumentObject;Ljava/lang/String;)V
    .locals 5
    .param p1, "object"    # Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----END "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "endTag":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 278
    new-instance v2, Lcom/subgraph/orchid/TorParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EOF reached before end of \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' object."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-virtual {p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->addFooterLine(Ljava/lang/String;)V

    .line 282
    return-void

    .line 284
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObjectContent(Lcom/subgraph/orchid/directory/parsing/DocumentObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseObjectContent(Lcom/subgraph/orchid/directory/parsing/DocumentObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-virtual {p1, p2}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->addContent(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private parseObjectHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "headerLine"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v0, "-----BEGIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-----"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/TorParsingException;

    const-string v1, "Did not find expected object start tag."

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    const-string v0, "-----BEGIN"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "-----"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private processLine(Ljava/lang/String;)Z
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 392
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->delimiter:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 393
    .local v0, "lineItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 407
    :goto_0
    return v1

    .line 398
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentKeyword:Ljava/lang/String;

    .line 399
    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItems:Ljava/util/List;

    .line 400
    iput v2, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    .line 402
    iget-boolean v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->recognizeOpt:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentKeyword:Ljava/lang/String;

    const-string v3, "opt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 403
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentKeyword:Ljava/lang/String;

    .line 404
    const/4 v1, 0x2

    iput v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    :cond_2
    move v1, v2

    .line 407
    goto :goto_0
.end method

.method private readLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->nextLineFromInputBuffer()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->updateCurrentSignature(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->updateRawDocument(Ljava/lang/String;)V

    .line 363
    :cond_0
    return-object v0
.end method

.method private updateCurrentSignature(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureIgnoreToken:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureIgnoreToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest256:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->update(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRawDocument(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    return-void
.end method

.method private validateParameterName(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    new-instance v4, Lcom/subgraph/orchid/TorParsingException;

    const-string v5, "Parameter name cannot be empty"

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    .line 245
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x5f

    if-eq v1, v4, :cond_1

    .line 246
    new-instance v4, Lcom/subgraph/orchid/TorParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameter name can only contain letters.  Rejecting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "c":C
    :cond_2
    return-void
.end method

.method private verifyExpectedArgumentCount(Ljava/lang/String;II)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "expectedMin"    # I
    .param p3, "expectedMax"    # I

    .prologue
    const/4 v1, -0x1

    .line 175
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->argumentsRemaining()I

    move-result v0

    .line 176
    .local v0, "argumentCount":I
    if-eq p2, v1, :cond_0

    if-ge v0, p2, :cond_0

    .line 177
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough arguments for keyword \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_0
    if-eq p3, v1, :cond_1

    if-le v0, p3, :cond_1

    .line 181
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many arguments for keyword \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    return-void
.end method


# virtual methods
.method public argumentsRemaining()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentItemsPosition:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public endSignedEntity()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    .line 320
    return-void
.end method

.method public getCurrentKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->currentKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getRawDocument()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureMessageDigest()Lcom/subgraph/orchid/crypto/TorMessageDigest;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    return-object v0
.end method

.method public getSignatureMessageDigest256()Lcom/subgraph/orchid/crypto/TorMessageDigest;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest256:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    return-object v0
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 411
    sget-object v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 415
    sget-object v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public logWarn(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 419
    sget-object v0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public parseAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    return-object v0
.end method

.method public parseBase32Digest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromBase32String(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public parseBase64Data()[B
    .locals 4

    .prologue
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "string":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    packed-switch v2, :pswitch_data_0

    .line 197
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/subgraph/orchid/encoders/Base64;->decode([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 188
    :pswitch_0
    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/subgraph/orchid/TorException;

    invoke-direct {v2, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 186
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseBoolean()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger()I

    move-result v0

    .line 107
    .local v0, "i":I
    if-ne v0, v1, :cond_0

    .line 110
    :goto_0
    return v1

    .line 109
    :cond_0
    if-nez v0, :cond_1

    .line 110
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    :cond_1
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal boolean value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseConcatenatedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->argumentsRemaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parseFingerprint()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseConcatenatedString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public parseInteger()I
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public parseInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse expected integer value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseIntegerList()[I
    .locals 5

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "item":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "ns":[Ljava/lang/String;
    array-length v4, v2

    new-array v3, v4, [I

    .line 131
    .local v3, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 132
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-object v3
.end method

.method public parseNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseNtorPublicKey()[B
    .locals 4

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseBase64Data()[B

    move-result-object v0

    .line 216
    .local v0, "key":[B
    array-length v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 217
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NTor public key was not expected length after base64 decoding.  Length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    return-object v0
.end method

.method public parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    .locals 3

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "line":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObjectHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "keyword":Ljava/lang/String;
    new-instance v2, Lcom/subgraph/orchid/directory/parsing/DocumentObject;

    invoke-direct {v2, v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .local v2, "object":Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    invoke-direct {p0, v2, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObjectBody(Lcom/subgraph/orchid/directory/parsing/DocumentObject;Ljava/lang/String;)V

    .line 263
    return-object v2
.end method

.method public parseParameter()Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;
    .locals 6

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "item":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 231
    .local v0, "eq":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 232
    new-instance v4, Lcom/subgraph/orchid/TorParsingException;

    const-string v5, "Parameter not in expected form name=value"

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 234
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->validateParameterName(Ljava/lang/String;)V

    .line 236
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger(Ljava/lang/String;)I

    move-result v3

    .line 237
    .local v3, "value":I
    new-instance v4, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;

    invoke-direct {v4, v2, v3}, Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;-><init>(Ljava/lang/String;I)V

    return-object v4
.end method

.method public parsePort()I
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parsePort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public parsePort(Ljava/lang/String;)I
    .locals 4
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseInteger(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "port":I
    if-ltz v0, :cond_0

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 144
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal port value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_1
    return v0
.end method

.method public parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;

    move-result-object v0

    .line 210
    .local v0, "documentObject":Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/crypto/TorPublicKey;->createFromPEMBuffer(Ljava/lang/String;)Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    return-object v1
.end method

.method public parseSignature()Lcom/subgraph/orchid/crypto/TorSignature;
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;

    move-result-object v0

    .line 224
    .local v0, "documentObject":Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/subgraph/orchid/crypto/TorSignature;->createFromPEMBuffer(Ljava/lang/String;)Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v1

    .line 225
    .local v1, "s":Lcom/subgraph/orchid/crypto/TorSignature;
    return-object v1
.end method

.method public parseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;
    .locals 5

    .prologue
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->getItem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "timeAndDate":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lcom/subgraph/orchid/data/Timestamp;

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/data/Timestamp;-><init>(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Lcom/subgraph/orchid/TorParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse timestamp value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public parseTypedObject(Ljava/lang/String;)Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;

    move-result-object v0

    .line 253
    .local v0, "object":Lcom/subgraph/orchid/directory/parsing/DocumentObject;
    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected object type.  Expecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_0
    return-object v0
.end method

.method public processDocument()V
    .locals 3

    .prologue
    .line 298
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    if-nez v1, :cond_1

    .line 299
    new-instance v1, Lcom/subgraph/orchid/TorException;

    const-string v2, "DocumentFieldParser#processDocument() called with null callbackHandler"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    .local v0, "line":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->processLine(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;->parseKeywordLine()V

    .line 302
    .end local v0    # "line":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 303
    .restart local v0    # "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;->endOfDocument()V

    .line 305
    return-void
.end method

.method public resetRawDocument()V
    .locals 1

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    .line 345
    return-void
.end method

.method public resetRawDocument(Ljava/lang/String;)V
    .locals 1
    .param p1, "initialContent"    # Ljava/lang/String;

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    .line 349
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->rawDocumentBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->delimiter:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->callbackHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    .line 77
    return-void
.end method

.method public setRecognizeOpt()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->recognizeOpt:Z

    .line 73
    return-void
.end method

.method public setSignatureIgnoreToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureIgnoreToken:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public startSignedEntity()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 313
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    .line 314
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    .line 315
    new-instance v0, Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>(Z)V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest256:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    .line 316
    return-void
.end method

.method public verifyExpectedArgumentCount(Ljava/lang/String;I)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "argumentCount"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1, p2, p2}, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->verifyExpectedArgumentCount(Ljava/lang/String;II)V

    .line 172
    return-void
.end method

.method public verifySignedEntity(Lcom/subgraph/orchid/crypto/TorPublicKey;Lcom/subgraph/orchid/crypto/TorSignature;)Z
    .locals 1
    .param p1, "publicKey"    # Lcom/subgraph/orchid/crypto/TorPublicKey;
    .param p2, "signature"    # Lcom/subgraph/orchid/crypto/TorSignature;

    .prologue
    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->isProcessingSignedEntity:Z

    .line 354
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DocumentFieldParserImpl;->signatureDigest:Lcom/subgraph/orchid/crypto/TorMessageDigest;

    invoke-virtual {p1, p2, v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->verifySignature(Lcom/subgraph/orchid/crypto/TorSignature;Lcom/subgraph/orchid/crypto/TorMessageDigest;)Z

    move-result v0

    return v0
.end method
