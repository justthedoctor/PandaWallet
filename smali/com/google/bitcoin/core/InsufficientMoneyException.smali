.class public Lcom/google/bitcoin/core/InsufficientMoneyException;
.super Ljava/lang/Exception;
.source "InsufficientMoneyException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/core/InsufficientMoneyException$CouldNotAdjustDownwards;
    }
.end annotation


# instance fields
.field public final missing:Ljava/math/BigInteger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/bitcoin/core/InsufficientMoneyException;->missing:Ljava/math/BigInteger;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "missing"    # Ljava/math/BigInteger;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insufficient money,  missing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " satoshis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/bitcoin/core/InsufficientMoneyException;-><init>(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 1
    .param p1, "missing"    # Ljava/math/BigInteger;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/bitcoin/core/InsufficientMoneyException;->missing:Ljava/math/BigInteger;

    .line 43
    return-void
.end method
