.class public final enum Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
.super Ljava/lang/Enum;
.source "HSDescriptorKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum INTRODUCTION_POINTS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum PERMANENT_KEY:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum PROTOCOL_VERSIONS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum PUBLICATION_TIME:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum RENDEZVOUS_SERVICE_DESCRIPTOR:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum SECRET_ID_PART:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum SIGNATURE:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

.field public static final enum VERSION:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;


# instance fields
.field private final argumentCount:I

.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v1, "RENDEZVOUS_SERVICE_DESCRIPTOR"

    const-string v2, "rendezvous-service-descriptor"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->RENDEZVOUS_SERVICE_DESCRIPTOR:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 5
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->VERSION:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 6
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v1, "PERMANENT_KEY"

    const-string v2, "permanent-key"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PERMANENT_KEY:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 7
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v1, "SECRET_ID_PART"

    const-string v2, "secret-id-part"

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SECRET_ID_PART:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 8
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v1, "PUBLICATION_TIME"

    const-string v2, "publication-time"

    invoke-direct {v0, v1, v8, v2, v6}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PUBLICATION_TIME:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v1, "PROTOCOL_VERSIONS"

    const/4 v2, 0x5

    const-string v3, "protocol-versions"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PROTOCOL_VERSIONS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v1, "INTRODUCTION_POINTS"

    const/4 v2, 0x6

    const-string v3, "introduction-points"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->INTRODUCTION_POINTS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v1, "SIGNATURE"

    const/4 v2, 0x7

    const-string v3, "signature"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SIGNATURE:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    const-string v1, "UNKNOWN_KEYWORD"

    const/16 v2, 0x8

    const-string v3, "KEYWORD NOT FOUND"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->RENDEZVOUS_SERVICE_DESCRIPTOR:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->VERSION:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PERMANENT_KEY:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SECRET_ID_PART:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v0, v7

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PUBLICATION_TIME:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->PROTOCOL_VERSIONS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->INTRODUCTION_POINTS:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->SIGNATURE:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "argumentCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->keyword:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->argumentCount:I

    .line 20
    return-void
.end method

.method static findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    .locals 5
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->values()[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    move-result-object v0

    .local v0, "arr$":[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 32
    .local v2, "k":Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    .end local v2    # "k":Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    :goto_1
    return-object v2

    .line 31
    .restart local v2    # "k":Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "k":Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    :cond_1
    sget-object v2, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;

    return-object v0
.end method


# virtual methods
.method getArgumentCount()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->argumentCount:I

    return v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/HSDescriptorKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
