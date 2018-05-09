.class public Lcom/google/bitcoin/wallet/CoinSelection;
.super Ljava/lang/Object;
.source "CoinSelection.java"


# instance fields
.field public gathered:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field public valueGathered:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Collection;)V
    .locals 0
    .param p1, "valueGathered"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigInteger;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/bitcoin/core/TransactionOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "gathered":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/bitcoin/core/TransactionOutput;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/bitcoin/wallet/CoinSelection;->valueGathered:Ljava/math/BigInteger;

    .line 21
    iput-object p2, p0, Lcom/google/bitcoin/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    .line 22
    return-void
.end method
