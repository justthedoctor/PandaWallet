.class public Lorg/spongycastle/crypto/tls/TlsProtocolHandler;
.super Lorg/spongycastle/crypto/tls/TlsClientProtocol;
.source "TlsProtocolHandler.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "sr"    # Ljava/security/SecureRandom;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    .line 22
    return-void
.end method
