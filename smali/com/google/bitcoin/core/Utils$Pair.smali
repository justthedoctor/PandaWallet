.class Lcom/google/bitcoin/core/Utils$Pair;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/bitcoin/core/Utils$Pair;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field item:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "item"    # I
    .param p2, "count"    # I

    .prologue
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/bitcoin/core/Utils$Pair;->count:I

    iput p1, p0, Lcom/google/bitcoin/core/Utils$Pair;->item:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/bitcoin/core/Utils$Pair;)I
    .locals 2
    .param p1, "o"    # Lcom/google/bitcoin/core/Utils$Pair;

    .prologue
    .line 627
    iget v0, p0, Lcom/google/bitcoin/core/Utils$Pair;->count:I

    iget v1, p1, Lcom/google/bitcoin/core/Utils$Pair;->count:I

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 624
    check-cast p1, Lcom/google/bitcoin/core/Utils$Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/bitcoin/core/Utils$Pair;->compareTo(Lcom/google/bitcoin/core/Utils$Pair;)I

    move-result v0

    return v0
.end method
