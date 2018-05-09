.class public Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;
.super Ljava/lang/Object;
.source "IntroductionPointParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParser",
        "<",
        "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

.field private final fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

.field private resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;)V
    .locals 2
    .param p1, "fieldParser"    # Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .line 21
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->processKeywordLine()V

    return-void
.end method

.method static synthetic access$100(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;)Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;
    .locals 1
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;
    .param p1, "x1"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->validateAndReportIntroductionPoint(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V

    return-void
.end method

.method private createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$1;-><init>(Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;)V

    return-object v0
.end method

.method private processKeyword(Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;)V
    .locals 2
    .param p1, "keyword"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .prologue
    .line 79
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser$2;->$SwitchMap$com$subgraph$orchid$circuits$hs$IntroductionPointKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBase32Digest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->resetIntroductionPoint(Lcom/subgraph/orchid/data/HexDigest;)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->setOnionKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    goto :goto_0

    .line 100
    :pswitch_4
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->setOnionPort(I)V

    goto :goto_0

    .line 106
    :pswitch_5
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->setServiceKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private processKeywordLine()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getCurrentKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    move-result-object v0

    .line 73
    .local v0, "keyword":Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->processKeyword(Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;)V

    .line 76
    :cond_0
    return-void
.end method

.method private resetIntroductionPoint(Lcom/subgraph/orchid/data/HexDigest;)V
    .locals 1
    .param p1, "identity"    # Lcom/subgraph/orchid/data/HexDigest;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->validateAndReportIntroductionPoint(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V

    .line 55
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;-><init>(Lcom/subgraph/orchid/data/HexDigest;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->currentIntroductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .line 56
    return-void
.end method

.method private validateAndReportIntroductionPoint(Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V
    .locals 2
    .param p1, "introductionPoint"    # Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->isValidDocument()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentParsed(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    const-string v1, "Invalid introduction point"

    invoke-interface {v0, p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;-><init>()V

    .line 37
    .local v0, "result":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;>;"
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    .line 38
    return-object v0
.end method

.method public parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler",
            "<",
            "Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "resultHandler":Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;, "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;>;"
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->processDocument()V
    :try_end_0
    .catch Lcom/subgraph/orchid/TorParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v1, 0x1

    .line 31
    :goto_0
    return v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Lcom/subgraph/orchid/TorParsingException;
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorParsingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->parsingError(Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x0

    goto :goto_0
.end method
