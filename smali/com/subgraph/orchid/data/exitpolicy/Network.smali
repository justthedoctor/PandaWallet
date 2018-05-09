.class public Lcom/subgraph/orchid/data/exitpolicy/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field public static final ALL_ADDRESSES:Lcom/subgraph/orchid/data/exitpolicy/Network;


# instance fields
.field private final maskValue:I

.field private final network:Lcom/subgraph/orchid/data/IPv4Address;

.field private final originalString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 7
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/Network;

    const-string v1, "0.0.0.0"

    invoke-static {v1}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "*"

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/data/exitpolicy/Network;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/data/exitpolicy/Network;->ALL_ADDRESSES:Lcom/subgraph/orchid/data/exitpolicy/Network;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/data/IPv4Address;ILjava/lang/String;)V
    .locals 1
    .param p1, "network"    # Lcom/subgraph/orchid/data/IPv4Address;
    .param p2, "bits"    # I
    .param p3, "originalString"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->network:Lcom/subgraph/orchid/data/IPv4Address;

    .line 31
    invoke-static {p2}, Lcom/subgraph/orchid/data/exitpolicy/Network;->createMask(I)I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->maskValue:I

    .line 32
    iput-object p3, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->originalString:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/Network;
    .locals 8
    .param p0, "networkString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 9
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 10
    .local v3, "parts":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v2

    .line 11
    .local v2, "network":Lcom/subgraph/orchid/data/IPv4Address;
    array-length v4, v3

    if-ne v4, v7, :cond_0

    .line 12
    new-instance v4, Lcom/subgraph/orchid/data/exitpolicy/Network;

    const/16 v5, 0x20

    invoke-direct {v4, v2, v5, p0}, Lcom/subgraph/orchid/data/exitpolicy/Network;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILjava/lang/String;)V

    .line 19
    :goto_0
    return-object v4

    .line 14
    :cond_0
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 15
    new-instance v4, Lcom/subgraph/orchid/TorParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid network CIDR notation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 18
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 19
    .local v1, "maskBits":I
    new-instance v4, Lcom/subgraph/orchid/data/exitpolicy/Network;

    invoke-direct {v4, v2, v1, p0}, Lcom/subgraph/orchid/data/exitpolicy/Network;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    .end local v1    # "maskBits":I
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/subgraph/orchid/TorParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid netblock mask bit value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static createMask(I)I
    .locals 2
    .param p0, "maskBits"    # I

    .prologue
    .line 36
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    add-int/lit8 v1, p0, -0x1

    shr-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public contains(Lcom/subgraph/orchid/data/IPv4Address;)Z
    .locals 3
    .param p1, "address"    # Lcom/subgraph/orchid/data/IPv4Address;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result v0

    iget v1, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->maskValue:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->network:Lcom/subgraph/orchid/data/IPv4Address;

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressData()I

    move-result v1

    iget v2, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->maskValue:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/data/exitpolicy/Network;->originalString:Ljava/lang/String;

    return-object v0
.end method
