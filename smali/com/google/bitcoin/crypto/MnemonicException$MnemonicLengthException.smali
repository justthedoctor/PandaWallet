.class public Lcom/google/bitcoin/crypto/MnemonicException$MnemonicLengthException;
.super Lcom/google/bitcoin/crypto/MnemonicException;
.source "MnemonicException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/crypto/MnemonicException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MnemonicLengthException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/bitcoin/crypto/MnemonicException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
