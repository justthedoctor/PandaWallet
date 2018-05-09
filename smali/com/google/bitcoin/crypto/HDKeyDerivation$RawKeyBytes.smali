.class Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;
.super Ljava/lang/Object;
.source "HDKeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/crypto/HDKeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawKeyBytes"
.end annotation


# instance fields
.field private final chainCode:[B

.field private final keyBytes:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0
    .param p1, "keyBytes"    # [B
    .param p2, "chainCode"    # [B

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;->keyBytes:[B

    .line 149
    iput-object p2, p0, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;->chainCode:[B

    .line 150
    return-void
.end method

.method synthetic constructor <init>([B[BLcom/google/bitcoin/crypto/HDKeyDerivation$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lcom/google/bitcoin/crypto/HDKeyDerivation$1;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;-><init>([B[B)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;->chainCode:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/bitcoin/crypto/HDKeyDerivation$RawKeyBytes;->keyBytes:[B

    return-object v0
.end method
