.class public Lorg/spongycastle/crypto/tls/ServerName;
.super Ljava/lang/Object;
.source "ServerName.java"


# instance fields
.field protected name:Ljava/lang/Object;

.field protected nameType:S


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 2
    .param p1, "nameType"    # S
    .param p2, "name"    # Ljava/lang/Object;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/ServerName;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'name\' is not an instance of the correct type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/ServerName;->nameType:S

    .line 22
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method protected static isCorrectType(SLjava/lang/Object;)Z
    .locals 2
    .param p0, "nameType"    # S
    .param p1, "name"    # Ljava/lang/Object;

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'name\' is an unsupported value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_0
    instance-of v0, p1, Ljava/lang/String;

    return v0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerName;
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x32

    .line 80
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    .line 83
    .local v1, "name_type":S
    packed-switch v1, :pswitch_data_0

    .line 96
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 87
    :pswitch_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 88
    .local v2, "utf8Encoding":[B
    array-length v3, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 90
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 92
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "name":Ljava/lang/String;
    new-instance v3, Lorg/spongycastle/crypto/tls/ServerName;

    invoke-direct {v3, v1, v0}, Lorg/spongycastle/crypto/tls/ServerName;-><init>(SLjava/lang/Object;)V

    return-object v3

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    .line 53
    iget-short v1, p0, Lorg/spongycastle/crypto/tls/ServerName;->nameType:S

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 55
    iget-short v1, p0, Lorg/spongycastle/crypto/tls/ServerName;->nameType:S

    packed-switch v1, :pswitch_data_0

    .line 66
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 58
    :pswitch_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    .local v0, "utf8Encoding":[B
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 61
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 63
    :cond_0
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 68
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ServerName;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'name\' is not a HostName string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameType()S
    .locals 1

    .prologue
    .line 27
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->nameType:S

    return v0
.end method
