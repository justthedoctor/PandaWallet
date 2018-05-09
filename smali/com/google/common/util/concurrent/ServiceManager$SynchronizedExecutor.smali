.class final Lcom/google/common/util/concurrent/ServiceManager$SynchronizedExecutor;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedExecutor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/ServiceManager$1;

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ServiceManager$SynchronizedExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    monitor-exit p0

    return-void

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
