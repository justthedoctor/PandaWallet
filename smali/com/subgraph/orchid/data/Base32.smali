.class public Lcom/subgraph/orchid/data/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final BASE32_CHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz234567"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base32Decode(Ljava/lang/String;)[B
    .locals 10
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/subgraph/orchid/data/Base32;->stringToIntVector(Ljava/lang/String;)[I

    move-result-object v6

    .line 33
    .local v6, "v":[I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v3, v7, 0x5

    .line 34
    .local v3, "nbits":I
    rem-int/lit8 v7, v3, 0x8

    if-eqz v7, :cond_0

    .line 35
    new-instance v7, Lcom/subgraph/orchid/TorException;

    const-string v8, "Base32 decoded array must be a muliple of 8 bits"

    invoke-direct {v7, v8}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 37
    :cond_0
    div-int/lit8 v5, v3, 0x8

    .line 38
    .local v5, "outlen":I
    new-array v4, v5, [B

    .line 40
    .local v4, "outbytes":[B
    const/4 v1, 0x0

    .line 41
    .local v1, "bit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 42
    div-int/lit8 v0, v1, 0x5

    .line 43
    .local v0, "bb":I
    aget v7, v6, v0

    add-int/lit8 v8, v0, 0x1

    aget v8, v6, v8

    add-int/lit8 v9, v0, 0x2

    aget v9, v6, v9

    invoke-static {v1, v7, v8, v9}, Lcom/subgraph/orchid/data/Base32;->decodeByte(IIII)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    .line 44
    add-int/lit8 v1, v1, 0x8

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "bb":I
    :cond_1
    return-object v4
.end method

.method public static base32Encode([B)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B

    .prologue
    .line 9
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/subgraph/orchid/data/Base32;->base32Encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static base32Encode([BII)Ljava/lang/String;
    .locals 9
    .param p0, "source"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 13
    mul-int/lit8 v2, p2, 0x8

    .line 14
    .local v2, "nbits":I
    rem-int/lit8 v7, v2, 0x5

    if-eqz v7, :cond_0

    .line 15
    new-instance v7, Lcom/subgraph/orchid/TorException;

    const-string v8, "Base32 input length must be a multiple of 5 bits"

    invoke-direct {v7, v8}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 17
    :cond_0
    div-int/lit8 v4, v2, 0x5

    .line 18
    .local v4, "outlen":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    .local v3, "outbuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 20
    .local v0, "bit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 21
    div-int/lit8 v7, v0, 0x8

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v6, v7, 0x8

    .line 22
    .local v6, "v":I
    add-int/lit8 v7, v0, 0x5

    if-ge v7, v2, :cond_1

    div-int/lit8 v7, v0, 0x8

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    .line 23
    :cond_1
    rem-int/lit8 v7, v0, 0x8

    rsub-int/lit8 v7, v7, 0xb

    shr-int v7, v6, v7

    and-int/lit8 v5, v7, 0x1f

    .line 24
    .local v5, "u":I
    const-string v7, "abcdefghijklmnopqrstuvwxyz234567"

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    add-int/lit8 v0, v0, 0x5

    .line 20
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v5    # "u":I
    .end local v6    # "v":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static decodeByte(IIII)I
    .locals 5
    .param p0, "bitOffset"    # I
    .param p1, "b0"    # I
    .param p2, "b1"    # I
    .param p3, "b2"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 50
    rem-int/lit8 v0, p0, 0x28

    sparse-switch v0, :sswitch_data_0

    .line 62
    new-instance v0, Lcom/subgraph/orchid/TorException;

    const-string v1, "Illegal bit offset"

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :sswitch_0
    invoke-static {p1, v3}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result v0

    invoke-static {p2, v2}, Lcom/subgraph/orchid/data/Base32;->rs(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :goto_0
    return v0

    .line 54
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result v0

    invoke-static {p2, v1}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p3, v4}, Lcom/subgraph/orchid/data/Base32;->rs(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 56
    :sswitch_2
    invoke-static {p1, v4}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result v0

    invoke-static {p2, v1}, Lcom/subgraph/orchid/data/Base32;->rs(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 58
    :sswitch_3
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result v0

    invoke-static {p2, v2}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p3, v3}, Lcom/subgraph/orchid/data/Base32;->rs(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 60
    :sswitch_4
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/subgraph/orchid/data/Base32;->ls(II)I

    move-result v0

    and-int/lit16 v1, p2, 0xff

    add-int/2addr v0, v1

    goto :goto_0

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private static ls(II)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "shift"    # I

    .prologue
    .line 66
    shl-int v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static rs(II)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "shift"    # I

    .prologue
    .line 70
    shr-int v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static stringToIntVector(Ljava/lang/String;)[I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [I

    .line 75
    .local v2, "ints":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 77
    .local v0, "b":I
    const/16 v3, 0x60

    if-le v0, v3, :cond_0

    const/16 v3, 0x7b

    if-ge v0, v3, :cond_0

    .line 78
    add-int/lit8 v3, v0, -0x61

    aput v3, v2, v1

    .line 75
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    const/16 v3, 0x31

    if-le v0, v3, :cond_1

    const/16 v3, 0x38

    if-ge v0, v3, :cond_1

    .line 80
    add-int/lit8 v3, v0, -0x18

    aput v3, v2, v1

    goto :goto_1

    .line 81
    :cond_1
    const/16 v3, 0x40

    if-le v0, v3, :cond_2

    const/16 v3, 0x5b

    if-ge v0, v3, :cond_2

    .line 82
    add-int/lit8 v3, v0, -0x41

    aput v3, v2, v1

    goto :goto_1

    .line 84
    :cond_2
    new-instance v3, Lcom/subgraph/orchid/TorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal character in base32 encoded string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    .end local v0    # "b":I
    :cond_3
    return-object v2
.end method
