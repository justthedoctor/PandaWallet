.class Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;
.super Ljava/lang/Object;
.source "PartialMerkleTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/PartialMerkleTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValuesUsed"
.end annotation


# instance fields
.field public bitsUsed:I

.field public hashesUsed:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v0, p0, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->bitsUsed:I

    iput v0, p0, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;->hashesUsed:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/bitcoin/core/PartialMerkleTree$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/bitcoin/core/PartialMerkleTree$1;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/bitcoin/core/PartialMerkleTree$ValuesUsed;-><init>()V

    return-void
.end method
