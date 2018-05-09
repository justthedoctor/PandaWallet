.class public Lcom/google/bitcoin/utils/ListenerRegistration;
.super Ljava/lang/Object;
.source "ListenerRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/bitcoin/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    .line 34
    return-void
.end method

.method public static removeFromList(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/bitcoin/utils/ListenerRegistration",
            "<TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "listener":Ljava/lang/Object;, "TT;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/google/bitcoin/utils/ListenerRegistration<TT;>;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v1, 0x0

    .line 40
    .local v1, "item":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/bitcoin/utils/ListenerRegistration;

    .line 41
    .local v2, "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<TT;>;"
    iget-object v3, v2, Lcom/google/bitcoin/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    if-ne v3, p0, :cond_0

    .line 42
    move-object v1, v2

    .line 46
    .end local v2    # "registration":Lcom/google/bitcoin/utils/ListenerRegistration;, "Lcom/google/bitcoin/utils/ListenerRegistration<TT;>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 48
    const/4 v3, 0x1

    .line 50
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
