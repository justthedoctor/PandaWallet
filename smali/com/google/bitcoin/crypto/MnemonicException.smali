.class public Lcom/google/bitcoin/crypto/MnemonicException;
.super Ljava/lang/Exception;
.source "MnemonicException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/crypto/MnemonicException$MnemonicWordException;,
        Lcom/google/bitcoin/crypto/MnemonicException$MnemonicChecksumException;,
        Lcom/google/bitcoin/crypto/MnemonicException$MnemonicLengthException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
