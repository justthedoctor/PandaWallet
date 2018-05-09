.class public Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;
.super Ljava/lang/Object;
.source "RouterDescriptorParser.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/directory/router/RouterDescriptorParser$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParser",
        "<",
        "Lcom/subgraph/orchid/RouterDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

.field private final fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

.field private resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final verifySignatures:Z


# direct methods
.method public constructor <init>(Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;Z)V
    .locals 2
    .param p1, "fieldParser"    # Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;
    .param p2, "verifySignatures"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    .line 24
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V

    .line 25
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->setRecognizeOpt()V

    .line 26
    iput-boolean p2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->verifySignatures:Z

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;)V
    .locals 0
    .param p0, "x0"    # Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->processKeywordLine()V

    return-void
.end method

.method private createParsingHandler()Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser$1;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser$1;-><init>(Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;)V

    return-object v0
.end method

.method private parseHistory()Lcom/subgraph/orchid/data/BandwidthHistory;
    .locals 11

    .prologue
    .line 155
    iget-object v9, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v9}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v8

    .line 156
    .local v8, "ts":Lcom/subgraph/orchid/data/Timestamp;
    iget-object v9, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v9}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "nsec":Ljava/lang/String;
    iget-object v9, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v9}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    .line 158
    iget-object v9, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger(Ljava/lang/String;)I

    move-result v3

    .line 159
    .local v3, "interval":I
    new-instance v1, Lcom/subgraph/orchid/data/BandwidthHistory;

    invoke-direct {v1, v8, v3}, Lcom/subgraph/orchid/data/BandwidthHistory;-><init>(Lcom/subgraph/orchid/data/Timestamp;I)V

    .line 160
    .local v1, "history":Lcom/subgraph/orchid/data/BandwidthHistory;
    iget-object v9, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v9}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v9

    if-nez v9, :cond_1

    .line 165
    :cond_0
    return-object v1

    .line 162
    :cond_1
    iget-object v9, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v9}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, "samples":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    .line 164
    .local v6, "s":Ljava/lang/String;
    iget-object v9, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v9, v6}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/subgraph/orchid/data/BandwidthHistory;->addSample(I)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private processBandwidth()V
    .locals 4

    .prologue
    .line 192
    iget-object v3, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v0

    .line 193
    .local v0, "average":I
    iget-object v3, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v1

    .line 194
    .local v1, "burst":I
    iget-object v3, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v3}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v2

    .line 195
    .local v2, "observed":I
    iget-object v3, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v3, v0, v1, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setBandwidthValues(III)V

    .line 196
    return-void
.end method

.method private processKeyword(Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;)V
    .locals 3
    .param p1, "keyword"    # Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->getArgumentCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->verifyExpectedArgumentCount(Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser$2;->$SwitchMap$com$subgraph$orchid$directory$router$RouterDescriptorKeyword:[I

    invoke-virtual {p1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->processRouter()V

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->processBandwidth()V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseConcatenatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setPlatform(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setPublished(Lcom/subgraph/orchid/data/Timestamp;)V

    goto :goto_0

    .line 91
    :pswitch_4
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setFingerprint(Lcom/subgraph/orchid/data/HexDigest;)V

    goto :goto_0

    .line 94
    :pswitch_5
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setHibernating(Z)V

    goto :goto_0

    .line 97
    :pswitch_6
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setUptime(I)V

    goto :goto_0

    .line 100
    :pswitch_7
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setOnionKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    goto :goto_0

    .line 103
    :pswitch_8
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseNtorPublicKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setNtorOnionKey([B)V

    goto :goto_0

    .line 106
    :pswitch_9
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setIdentityKey(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    goto :goto_0

    .line 109
    :pswitch_a
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->processSignature()V

    goto :goto_0

    .line 112
    :pswitch_b
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->addAcceptRule(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_c
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->addRejectRule(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :pswitch_d
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseConcatenatedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setContact(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :goto_1
    :pswitch_e
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->addFamilyMember(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :pswitch_f
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setEventDNS()V

    goto/16 :goto_0

    .line 129
    :pswitch_10
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->processProtocols()V

    goto/16 :goto_0

    .line 132
    :pswitch_11
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setCachesExtraInfo()V

    goto/16 :goto_0

    .line 135
    :pswitch_12
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setHiddenServiceDir()V

    goto/16 :goto_0

    .line 138
    :pswitch_13
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setAllowSingleHopExits()V

    goto/16 :goto_0

    .line 141
    :pswitch_14
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setExtraInfoDigest(Lcom/subgraph/orchid/data/HexDigest;)V

    goto/16 :goto_0

    .line 144
    :pswitch_15
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->parseHistory()Lcom/subgraph/orchid/data/BandwidthHistory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setReadHistory(Lcom/subgraph/orchid/data/BandwidthHistory;)V

    goto/16 :goto_0

    .line 147
    :pswitch_16
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->parseHistory()Lcom/subgraph/orchid/data/BandwidthHistory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setWriteHistory(Lcom/subgraph/orchid/data/BandwidthHistory;)V

    goto/16 :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private processKeywordLine()V
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getCurrentKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    move-result-object v0

    .line 46
    .local v0, "keyword":Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->processKeyword(Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;)V

    .line 48
    :cond_0
    return-void
.end method

.method private processProtocols()V
    .locals 4

    .prologue
    .line 199
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "kw":Ljava/lang/String;
    const-string v1, "Link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Link\' token in protocol line got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->addLinkProtocolVersion(I)V

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseString()Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v1, "Circuit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->argumentsRemaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseInteger()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->addCircuitProtocolVersion(I)V

    goto :goto_0

    .line 211
    :cond_2
    return-void
.end method

.method private processRouter()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setNickname(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setAddress(Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 171
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setRouterPort(I)V

    .line 173
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    .line 174
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parsePort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setDirectoryPort(I)V

    .line 175
    return-void
.end method

.method private processSignature()V
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->endSignedEntity()V

    .line 215
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getSignatureMessageDigest()Lcom/subgraph/orchid/crypto/TorMessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getHexDigest()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setDescriptorHash(Lcom/subgraph/orchid/data/HexDigest;)V

    .line 216
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->parseSignature()Lcom/subgraph/orchid/crypto/TorSignature;

    move-result-object v0

    .line 217
    .local v0, "signature":Lcom/subgraph/orchid/crypto/TorSignature;
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v2}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->getRawDocument()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setRawDocumentData(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->verifyCurrentDescriptor(Lcom/subgraph/orchid/crypto/TorSignature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentParsed(Ljava/lang/Object;)V

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->startNewDescriptor()V

    .line 222
    return-void
.end method

.method private startNewDescriptor()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->resetRawDocument()V

    .line 52
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v0}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->startSignedEntity()V

    .line 53
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    .line 54
    return-void
.end method

.method private verifyCurrentDescriptor(Lcom/subgraph/orchid/crypto/TorSignature;)Z
    .locals 3
    .param p1, "signature"    # Lcom/subgraph/orchid/crypto/TorSignature;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->verifySignatures:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->getIdentityKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->verifySignedEntity(Lcom/subgraph/orchid/crypto/TorPublicKey;Lcom/subgraph/orchid/crypto/TorSignature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    const-string v2, "Signature failed."

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature failed for router: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logWarn(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    .line 188
    :goto_0
    return v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->setValidSignature()V

    .line 184
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->isValidDocument()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    const-string v2, "Router data invalid"

    invoke-interface {v0, v1, v2}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Router data invalid for router: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->logWarn(Ljava/lang/String;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->currentDescriptor:Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorImpl;->isValidDocument()Z

    move-result v0

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
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;-><init>()V

    .line 70
    .local v0, "result":Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;, "Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult<Lcom/subgraph/orchid/RouterDescriptor;>;"
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z

    .line 71
    return-object v0
.end method

.method public parse(Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler",
            "<",
            "Lcom/subgraph/orchid/RouterDescriptor;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "resultHandler":Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;, "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<Lcom/subgraph/orchid/RouterDescriptor;>;"
    iput-object p1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->resultHandler:Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;

    .line 58
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->startNewDescriptor()V

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorParser;->fieldParser:Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;

    invoke-interface {v1}, Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;->processDocument()V
    :try_end_0
    .catch Lcom/subgraph/orchid/TorParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/subgraph/orchid/TorParsingException;
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorParsingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;->parsingError(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method
