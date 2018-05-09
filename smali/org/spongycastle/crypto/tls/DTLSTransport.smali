.class public Lorg/spongycastle/crypto/tls/DTLSTransport;
.super Ljava/lang/Object;
.source "DTLSTransport.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/DatagramTransport;


# instance fields
.field private final recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V
    .locals 0
    .param p1, "recordLayer"    # Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    .line 14
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
    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->close()V

    .line 80
    return-void
.end method

.method public getReceiveLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getSendLimit()I

    move-result v0

    return v0
.end method

.method public receive([BIII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "waitMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    .line 33
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->receive([BIII)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    return v2

    .line 35
    :catch_0
    move-exception v1

    .line 37
    .local v1, "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 38
    throw v1

    .line 40
    .end local v1    # "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 43
    throw v0

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 48
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method

.method public send([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    .line 57
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, p1, p2, p3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->send([BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 74
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 62
    throw v1

    .line 64
    .end local v1    # "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 67
    throw v0

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 72
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method
