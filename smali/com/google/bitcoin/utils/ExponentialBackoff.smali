.class public Lcom/google/bitcoin/utils/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/utils/ExponentialBackoff$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/bitcoin/utils/ExponentialBackoff;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_MILLIS:I = 0x64

.field public static final DEFAULT_MAXIMUM_MILLIS:I = 0x7530

.field public static final DEFAULT_MULTIPLIER:F = 1.1f


# instance fields
.field private backoff:F

.field private final params:Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

.field private retryTime:J


# direct methods
.method public constructor <init>(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)V
    .locals 0
    .param p1, "params"    # Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->params:Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    .line 71
    invoke-virtual {p0}, Lcom/google/bitcoin/utils/ExponentialBackoff;->trackSuccess()V

    .line 72
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/bitcoin/utils/ExponentialBackoff;)I
    .locals 4
    .param p1, "other"    # Lcom/google/bitcoin/utils/ExponentialBackoff;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->retryTime:J

    iget-wide v2, p1, Lcom/google/bitcoin/utils/ExponentialBackoff;->retryTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 94
    const/4 v0, -0x1

    .line 97
    :goto_0
    return v0

    .line 95
    :cond_0
    iget-wide v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->retryTime:J

    iget-wide v2, p1, Lcom/google/bitcoin/utils/ExponentialBackoff;->retryTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lcom/google/bitcoin/utils/ExponentialBackoff;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/utils/ExponentialBackoff;->compareTo(Lcom/google/bitcoin/utils/ExponentialBackoff;)I

    move-result v0

    return v0
.end method

.method public getRetryTime()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->retryTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExponentialBackoff retry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->retryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " backoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->backoff:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackFailure()V
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->backoff:F

    float-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->retryTime:J

    .line 83
    iget v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->backoff:F

    iget-object v1, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->params:Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    invoke-static {v1}, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->access$100(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->params:Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    invoke-static {v1}, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->access$200(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->backoff:F

    .line 84
    return-void
.end method

.method public trackSuccess()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->params:Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    invoke-static {v0}, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->access$000(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)F

    move-result v0

    iput v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->backoff:F

    .line 77
    invoke-static {}, Lcom/google/bitcoin/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff;->retryTime:J

    .line 78
    return-void
.end method
