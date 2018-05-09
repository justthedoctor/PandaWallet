.class public abstract Lcom/google/bitcoin/net/AbstractTimeoutHandler;
.super Ljava/lang/Object;
.source "AbstractTimeoutHandler.java"


# static fields
.field private static final timeoutTimer:Ljava/util/Timer;


# instance fields
.field private timeoutEnabled:Z

.field private timeoutMillis:J

.field private timeoutTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/Timer;

    const-string v1, "AbstractTimeoutHandler timeouts"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutTimer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutMillis:J

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutEnabled:Z

    return-void
.end method


# virtual methods
.method protected declared-synchronized resetTimeout()V
    .locals 4

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 79
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/bitcoin/net/AbstractTimeoutHandler$1;

    invoke-direct {v0, p0}, Lcom/google/bitcoin/net/AbstractTimeoutHandler$1;-><init>(Lcom/google/bitcoin/net/AbstractTimeoutHandler;)V

    iput-object v0, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutTask:Ljava/util/TimerTask;

    .line 78
    sget-object v0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutTask:Ljava/util/TimerTask;

    iget-wide v2, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSocketTimeout(I)V
    .locals 2
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 60
    monitor-enter p0

    int-to-long v0, p1

    :try_start_0
    iput-wide v0, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutMillis:J

    .line 61
    invoke-virtual {p0}, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->resetTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTimeoutEnabled(Z)V
    .locals 1
    .param p1, "timeoutEnabled"    # Z

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->timeoutEnabled:Z

    .line 46
    invoke-virtual {p0}, Lcom/google/bitcoin/net/AbstractTimeoutHandler;->resetTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract timeoutOccurred()V
.end method
