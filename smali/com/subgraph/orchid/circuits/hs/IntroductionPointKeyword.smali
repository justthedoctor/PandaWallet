.class public final enum Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
.super Ljava/lang/Enum;
.source "IntroductionPointKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum INTRODUCTION_POINT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum INTRO_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum IP_ADDRESS:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum ONION_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum ONION_PORT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum SERVICE_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum SERVICE_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;


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
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const-string v1, "SERVICE_AUTHENTICATION"

    const-string v2, "service-authentication"

    invoke-direct {v0, v1, v4, v2, v6}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->SERVICE_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 5
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const-string v1, "INTRODUCTION_POINT"

    const-string v2, "introduction-point"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->INTRODUCTION_POINT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 6
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const-string v1, "IP_ADDRESS"

    const-string v2, "ip-address"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->IP_ADDRESS:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 7
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const-string v1, "ONION_PORT"

    const-string v2, "onion-port"

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ONION_PORT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 8
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const-string v1, "ONION_KEY"

    const-string v2, "onion-key"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ONION_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const-string v1, "SERVICE_KEY"

    const/4 v2, 0x5

    const-string v3, "service-key"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->SERVICE_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const-string v1, "INTRO_AUTHENTICATION"

    const/4 v2, 0x6

    const-string v3, "intro-authentication"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->INTRO_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    const-string v1, "UNKNOWN_KEYWORD"

    const/4 v2, 0x7

    const-string v3, "KEYWORD NOT FOUND"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->SERVICE_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v1, v0, v4

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->INTRODUCTION_POINT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v1, v0, v5

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->IP_ADDRESS:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v1, v0, v6

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ONION_PORT:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v1, v0, v7

    sget-object v1, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->ONION_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->SERVICE_KEY:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->INTRO_AUTHENTICATION:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    aput-object v2, v0, v1

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->keyword:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->argumentCount:I

    .line 19
    return-void
.end method

.method static findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    .locals 5
    .param p0, "keyword"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->values()[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    move-result-object v0

    .local v0, "arr$":[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 31
    .local v2, "k":Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    invoke-virtual {v2}, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    .end local v2    # "k":Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    :goto_1
    return-object v2

    .line 30
    .restart local v2    # "k":Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v2    # "k":Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    :cond_1
    sget-object v2, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    return-object v0
.end method

.method public static values()[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->$VALUES:[Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;

    return-object v0
.end method


# virtual methods
.method getArgumentCount()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->argumentCount:I

    return v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionPointKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
