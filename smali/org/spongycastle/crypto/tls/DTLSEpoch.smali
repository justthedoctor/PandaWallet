.class Lorg/spongycastle/crypto/tls/DTLSEpoch;
.super Ljava/lang/Object;
.source "DTLSEpoch.java"


# instance fields
.field private final cipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private final epoch:I

.field private final replayWindow:Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

.field private sequence_number:J


# direct methods
.method constructor <init>(ILorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 2
    .param p1, "epoch"    # I
    .param p2, "cipher"    # Lorg/spongycastle/crypto/tls/TlsCipher;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->replayWindow:Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->sequence_number:J

    .line 15
    if-gez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'epoch\' must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    if-nez p2, :cond_1

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'cipher\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    iput p1, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->epoch:I

    .line 25
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->cipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 26
    return-void
.end method


# virtual methods
.method allocateSequenceNumber()J
    .locals 4

    .prologue
    .line 31
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->sequence_number:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->sequence_number:J

    return-wide v0
.end method

.method getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->cipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    return-object v0
.end method

.method getEpoch()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->epoch:I

    return v0
.end method

.method getReplayWindow()Lorg/spongycastle/crypto/tls/DTLSReplayWindow;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->replayWindow:Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    return-object v0
.end method

.method getSequence_number()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSEpoch;->sequence_number:J

    return-wide v0
.end method
