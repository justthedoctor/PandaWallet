.class public Lorg/spongycastle/crypto/tls/TlsSRPUtils;
.super Ljava/lang/Object;
.source "TlsSRPUtils.java"


# static fields
.field public static final EXT_SRP:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->EXT_SRP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSRPExtension(Ljava/util/Hashtable;[B)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "identity"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->EXT_SRP:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->createSRPExtension([B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public static createSRPExtension([B)[B
    .locals 2
    .param p0, "identity"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 29
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 32
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->encodeOpaque8([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSRPExtension(Ljava/util/Hashtable;)[B
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->EXT_SRP:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 22
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->readSRPExtension([B)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static readSRPExtension([B)[B
    .locals 4
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'extensionData\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 43
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 45
    .local v1, "identity":[B
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 47
    return-object v1
.end method
