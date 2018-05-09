.class final Lcom/google/bitcoin/utils/Threading$3;
.super Ljava/lang/Object;
.source "Threading.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bitcoin/utils/Threading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 192
    .local v0, "t":Ljava/lang/Thread;
    const-string v1, "Threading.THREAD_POOL worker"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 194
    return-object v0
.end method
