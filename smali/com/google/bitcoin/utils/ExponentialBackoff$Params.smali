.class public Lcom/google/bitcoin/utils/ExponentialBackoff$Params;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/utils/ExponentialBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private final initial:F

.field private final maximum:F

.field private final multiplier:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->initial:F

    .line 64
    const v0, 0x3f8ccccd    # 1.1f

    iput v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->multiplier:F

    .line 65
    const v0, 0x46ea6000    # 30000.0f

    iput v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->maximum:F

    .line 66
    return-void
.end method

.method public constructor <init>(JFJ)V
    .locals 4
    .param p1, "initialMillis"    # J
    .param p3, "multiplier"    # F
    .param p4, "maximumMillis"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "multiplier must be greater than 1.0"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    cmp-long v0, p4, p1

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "maximum must not be less than initial"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    long-to-float v0, p1

    iput v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->initial:F

    .line 55
    iput p3, p0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->multiplier:F

    .line 56
    long-to-float v0, p4

    iput v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->maximum:F

    .line 57
    return-void

    :cond_0
    move v0, v2

    .line 51
    goto :goto_0

    :cond_1
    move v1, v2

    .line 52
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    .prologue
    .line 40
    iget v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->initial:F

    return v0
.end method

.method static synthetic access$100(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    .prologue
    .line 40
    iget v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->multiplier:F

    return v0
.end method

.method static synthetic access$200(Lcom/google/bitcoin/utils/ExponentialBackoff$Params;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/bitcoin/utils/ExponentialBackoff$Params;

    .prologue
    .line 40
    iget v0, p0, Lcom/google/bitcoin/utils/ExponentialBackoff$Params;->maximum:F

    return v0
.end method
