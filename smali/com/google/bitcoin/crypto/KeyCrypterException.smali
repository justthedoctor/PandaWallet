.class public Lcom/google/bitcoin/crypto/KeyCrypterException;
.super Ljava/lang/RuntimeException;
.source "KeyCrypterException.java"


# static fields
.field private static final serialVersionUID:J = -0x3da51e039ca560a1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
