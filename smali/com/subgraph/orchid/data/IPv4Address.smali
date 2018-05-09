.class public Lcom/subgraph/orchid/data/IPv4Address;
.super Ljava/lang/Object;
.source "IPv4Address.java"


# instance fields
.field private final addressData:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "addressData"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    .line 51
    return-void
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;
    .locals 2
    .param p0, "addressString"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Lcom/subgraph/orchid/data/IPv4Address;

    invoke-static {p0}, Lcom/subgraph/orchid/data/IPv4Address;->parseStringToAddressData(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    return-object v0
.end method

.method public static isValidIPv4AddressString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "addressString"    # Ljava/lang/String;

    .prologue
    .line 39
    :try_start_0
    invoke-static {p0}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const/4 v1, 0x1

    .line 42
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static octetStringToInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "octet"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 29
    .local v1, "result":I
    if-ltz v1, :cond_0

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    .line 30
    :cond_0
    new-instance v2, Lcom/subgraph/orchid/TorParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Octet out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/subgraph/orchid/TorParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse octet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 31
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "result":I
    :cond_1
    return v1
.end method

.method private static parseStringToAddressData(Ljava/lang/String;)I
    .locals 11
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v9, "\\."

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 17
    .local v7, "octets":[Ljava/lang/String;
    const/4 v9, 0x4

    new-array v8, v9, [I

    fill-array-data v8, :array_0

    .line 18
    .local v8, "shifts":[I
    const/4 v0, 0x0

    .line 19
    .local v0, "addressData":I
    const/4 v2, 0x0

    .line 20
    .local v2, "i":I
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v1, v4

    .line 21
    .local v6, "o":Ljava/lang/String;
    invoke-static {v6}, Lcom/subgraph/orchid/data/IPv4Address;->octetStringToInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget v10, v8, v3

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    .line 20
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 23
    .end local v6    # "o":Ljava/lang/String;
    :cond_0
    return v0

    .line 17
    nop

    :array_0
    .array-data 4
        0x18
        0x10
        0x8
        0x0
    .end array-data
.end method

.method public static stringFormat(I)Ljava/lang/String;
    .locals 2
    .param p0, "addressData"    # I

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    instance-of v3, p1, Lcom/subgraph/orchid/data/IPv4Address;

    if-nez v3, :cond_2

    move v1, v2

    .line 88
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 89
    check-cast v0, Lcom/subgraph/orchid/data/IPv4Address;

    .line 90
    .local v0, "other":Lcom/subgraph/orchid/data/IPv4Address;
    iget v3, v0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    iget v4, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAddressData()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    return v0
.end method

.method public getAddressDataBytes()[B
    .locals 3

    .prologue
    .line 57
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 58
    .local v0, "result":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 59
    const/4 v1, 0x1

    iget v2, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 60
    const/4 v1, 0x2

    iget v2, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 61
    const/4 v1, 0x3

    iget v2, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 62
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 96
    shl-int/lit8 v1, v1, 0x4

    .line 97
    iget v2, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    mul-int/lit8 v3, v0, 0x8

    shr-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return v1
.end method

.method public toInetAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/subgraph/orchid/data/IPv4Address;->addressData:I

    invoke-static {v0}, Lcom/subgraph/orchid/data/IPv4Address;->stringFormat(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
