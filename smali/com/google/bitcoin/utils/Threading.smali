.class public Lcom/google/bitcoin/utils/Threading;
.super Ljava/lang/Object;
.source "Threading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/bitcoin/utils/Threading$UserThread;
    }
.end annotation


# static fields
.field public static final SAME_THREAD:Ljava/util/concurrent/Executor;

.field public static THREAD_POOL:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public static USER_THREAD:Ljava/util/concurrent/Executor;

.field public static factory:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

.field private static policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

.field public static volatile uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/google/bitcoin/utils/Threading;->throwOnLockCycles()V

    .line 137
    new-instance v0, Lcom/google/bitcoin/utils/Threading$UserThread;

    invoke-direct {v0}, Lcom/google/bitcoin/utils/Threading$UserThread;-><init>()V

    sput-object v0, Lcom/google/bitcoin/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    .line 138
    new-instance v0, Lcom/google/bitcoin/utils/Threading$2;

    invoke-direct {v0}, Lcom/google/bitcoin/utils/Threading$2;-><init>()V

    sput-object v0, Lcom/google/bitcoin/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    .line 187
    new-instance v0, Lcom/google/bitcoin/utils/Threading$3;

    invoke-direct {v0}, Lcom/google/bitcoin/utils/Threading$3;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/utils/Threading;->THREAD_POOL:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static getPolicy()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    return-object v0
.end method

.method public static ignoreLockCycles()V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    .line 169
    return-void
.end method

.method public static lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    sget-object v0, Lcom/google/bitcoin/utils/Threading;->factory:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newReentrantLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    return-object v0
.end method

.method public static setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V
    .locals 1
    .param p0, "policy"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .prologue
    .line 172
    sput-object p0, Lcom/google/bitcoin/utils/Threading;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .line 173
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newInstance(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    move-result-object v0

    sput-object v0, Lcom/google/bitcoin/utils/Threading;->factory:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 174
    return-void
.end method

.method public static throwOnLockCycles()V
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    .line 165
    return-void
.end method

.method public static waitForUserCode()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 69
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    sget-object v1, Lcom/google/bitcoin/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/bitcoin/utils/Threading$1;

    invoke-direct {v2, v0}, Lcom/google/bitcoin/utils/Threading$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 75
    return-void
.end method

.method public static warnOnLockCycles()V
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->WARN:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0}, Lcom/google/bitcoin/utils/Threading;->setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    .line 161
    return-void
.end method
