.class public Lorg/spongycastle/asn1/eac/PackedDate;
.super Ljava/lang/Object;
.source "PackedDate.java"


# instance fields
.field private time:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/PackedDate;->convert(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMdd\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "Z"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 33
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/eac/PackedDate;->convert(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    .line 34
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    .line 53
    return-void
.end method

.method private convert(Ljava/lang/String;)[B
    .locals 5
    .param p1, "sTime"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x6

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 39
    .local v1, "digs":[C
    new-array v0, v4, [B

    .line 41
    .local v0, "date":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v2, v4, :cond_0

    .line 43
    aget-char v3, v1, v2

    add-int/lit8 v3, v3, -0x30

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 77
    instance-of v1, p1, Lorg/spongycastle/asn1/eac/PackedDate;

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 84
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 82
    check-cast v0, Lorg/spongycastle/asn1/eac/PackedDate;

    .line 84
    .local v0, "other":Lorg/spongycastle/asn1/eac/PackedDate;
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    iget-object v2, v0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "dateF":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/eac/PackedDate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getEncoding()[B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    iget-object v2, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    array-length v2, v2

    new-array v0, v2, [C

    .line 91
    .local v0, "dateC":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 93
    iget-object v2, p0, Lorg/spongycastle/asn1/eac/PackedDate;->time:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
