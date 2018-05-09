.class Lorg/spongycastle/crypto/tls/TlsInputStream;
.super Ljava/io/InputStream;
.source "TlsInputStream.java"


# instance fields
.field private buf:[B

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocol;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;)V
    .locals 1
    .param p1, "handler"    # Lorg/spongycastle/crypto/tls/TlsProtocol;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->buf:[B

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    .line 17
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    .line 18
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->close()V

    .line 40
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->buf:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsInputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_0

    .line 31
    const/4 v0, -0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsInputStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->readApplicationData([BII)I

    move-result v0

    return v0
.end method
