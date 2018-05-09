.class public abstract Lorg/spongycastle/asn1/ASN1Null;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "ASN1Null.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Null;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 20
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Null;

    if-eqz v2, :cond_0

    .line 22
    check-cast p0, Lorg/spongycastle/asn1/ASN1Null;

    .line 41
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 25
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    move-object v2, v0

    check-cast v2, [B

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Null;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Null;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct NULL from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown object in getInstance(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 1
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 52
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1Null;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "NULL"

    return-object v0
.end method
