.class public Lcom/subgraph/orchid/misc/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constantTimeArrayEquals([B[B)Z
    .locals 5
    .param p0, "a1"    # [B
    .param p1, "a2"    # [B

    .prologue
    const/4 v2, 0x0

    .line 5
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_1

    .line 12
    :cond_0
    :goto_0
    return v2

    .line 8
    :cond_1
    const/4 v1, 0x0

    .line 9
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 10
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_2
    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
