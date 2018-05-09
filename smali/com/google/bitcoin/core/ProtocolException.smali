.class public Lcom/google/bitcoin/core/ProtocolException;
.super Lcom/google/bitcoin/core/VerificationException;
.source "ProtocolException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/Exception;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/bitcoin/core/VerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
