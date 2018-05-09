.class public Lcom/google/bitcoin/core/Wallet$SendResult;
.super Ljava/lang/Object;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/core/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendResult"
.end annotation


# instance fields
.field public broadcastComplete:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/bitcoin/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public tx:Lcom/google/bitcoin/core/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
