.class public final Lcom/google/common/util/concurrent/Futures;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;,
        Lcom/google/common/util/concurrent/Futures$CombinedFuture;,
        Lcom/google/common/util/concurrent/Futures$FutureCombiner;,
        Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;,
        Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;,
        Lcom/google/common/util/concurrent/Futures$FallbackFuture;,
        Lcom/google/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;,
        Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;,
        Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;,
        Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;,
        Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;,
        Lcom/google/common/util/concurrent/Futures$ImmediateFuture;
    }
.end annotation


# static fields
.field private static final DEREFERENCER:Lcom/google/common/util/concurrent/AsyncFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final WITH_STRING_PARAM_FIRST:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 934
    new-instance v0, Lcom/google/common/util/concurrent/Futures$3;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Futures$3;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Futures;->DEREFERENCER:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 1432
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/Futures$5;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/Futures$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/Futures;->WITH_STRING_PARAM_FIRST:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1120
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p1, "callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 1121
    return-void
.end method

.method public static addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1162
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p1, "callback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    new-instance v0, Lcom/google/common/util/concurrent/Futures$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$4;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 1184
    .local v0, "callbackListener":Ljava/lang/Runnable;
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1185
    return-void
.end method

.method public static allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 983
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->listFuture(Lcom/google/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static varargs allAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 960
    .local p0, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->listFuture(Lcom/google/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static dereference(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, "nested":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    sget-object v0, Lcom/google/common/util/concurrent/Futures;->DEREFERENCER:Lcom/google/common/util/concurrent/AsyncFunction;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/Class",
            "<TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p4, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1302
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Futures.get exception type (%s) must not be a RuntimeException"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1308
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v3

    .line 1304
    goto :goto_0

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1311
    invoke-static {p4, v0}, Lcom/google/common/util/concurrent/Futures;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 1312
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1313
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    invoke-static {p4, v0}, Lcom/google/common/util/concurrent/Futures;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 1314
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/google/common/util/concurrent/Futures;->wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1316
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static get(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Ljava/lang/Class",
            "<TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1236
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "Futures.get exception type (%s) must not be a RuntimeException"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1241
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v3

    .line 1237
    goto :goto_0

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1244
    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Futures;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 1245
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1246
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/util/concurrent/Futures;->wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 1247
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 1369
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->wrapAndThrowUnchecked(Ljava/lang/Throwable;)V

    .line 1374
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static immediateCancelledFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Futures$ImmediateCancelledFuture;-><init>()V

    return-object v0
.end method

.method public static immediateCheckedFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immediateFailedCheckedFuture(Ljava/lang/Exception;)Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TX;)",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "exception":Ljava/lang/Exception;, "TX;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$ImmediateFailedCheckedFuture;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$ImmediateFailedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static lazyTransform(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;)",
            "Ljava/util/concurrent/Future",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, "input":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TI;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    new-instance v0, Lcom/google/common/util/concurrent/Futures$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$2;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)V

    return-object v0
.end method

.method private static listFuture(Lcom/google/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "allMustSucceed"    # Z
    .param p2, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1640
    .local p0, "futures":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$CombinedFuture;

    new-instance v1, Lcom/google/common/util/concurrent/Futures$6;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/Futures$6;-><init>()V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/util/concurrent/Futures$CombinedFuture;-><init>(Lcom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lcom/google/common/util/concurrent/Futures$FutureCombiner;)V

    return-object v0
.end method

.method public static makeChecked(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/CheckedFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/Exception;",
            "TX;>;)",
            "Lcom/google/common/util/concurrent/CheckedFuture",
            "<TV;TX;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p1, "mapper":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Ljava/lang/Exception;TX;>;"
    new-instance v1, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {v1, v0, p1}, Lcom/google/common/util/concurrent/Futures$MappingCheckedFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)V

    return-object v1
.end method

.method private static newFromConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor",
            "<TX;>;",
            "Ljava/lang/Throwable;",
            ")TX;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TX;>;"
    const/4 v5, 0x0

    .line 1441
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 1442
    .local v3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v3

    new-array v4, v6, [Ljava/lang/Object;

    .line 1443
    .local v4, "params":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 1444
    aget-object v2, v3, v1

    .line 1445
    .local v2, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1446
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 1443
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1447
    :cond_0
    const-class v6, Ljava/lang/Throwable;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1448
    aput-object p1, v4, v1

    goto :goto_1

    .line 1454
    .end local v2    # "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v5

    .line 1462
    :cond_2
    :goto_2
    return-object v5

    .line 1455
    :catch_0
    move-exception v0

    .line 1456
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2

    .line 1457
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1458
    .local v0, "e":Ljava/lang/InstantiationException;
    goto :goto_2

    .line 1459
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 1460
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 1461
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2
.end method

.method private static newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class",
            "<TX;>;",
            "Ljava/lang/Throwable;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 1411
    .local p0, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1413
    .local v1, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<TX;>;>;"
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->preferringStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 1414
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TX;>;"
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->newFromConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    .line 1415
    .local v3, "instance":Ljava/lang/Exception;, "TX;"
    if-eqz v3, :cond_0

    .line 1416
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1417
    invoke-virtual {v3, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1419
    :cond_1
    return-object v3

    .line 1422
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TX;>;"
    .end local v3    # "instance":Ljava/lang/Exception;, "TX;"
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No appropriate constructor for exception of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in response to chained exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 997
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method private static preferringStrings(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TX;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<TX;>;>;"
        }
    .end annotation

    .prologue
    .line 1429
    .local p0, "constructors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor<TX;>;>;"
    sget-object v0, Lcom/google/common/util/concurrent/Futures;->WITH_STRING_PARAM_FIRST:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/Ordering;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1065
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->listFuture(Lcom/google/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static varargs successfulAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1043
    .local p0, "futures":[Lcom/google/common/util/concurrent/ListenableFuture;, "[Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->listFuture(Lcom/google/common/collect/ImmutableList;ZLjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/base/Function",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v0, Lcom/google/common/util/concurrent/Futures$1;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/Futures$1;-><init>(Lcom/google/common/base/Function;)V

    .line 717
    .local v0, "wrapperFunction":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<TI;TO;>;"
    invoke-static {p0, v0, p2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public static transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lcom/google/common/util/concurrent/AsyncFunction;, "Lcom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    new-instance v0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;-><init>(Lcom/google/common/util/concurrent/AsyncFunction;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/Futures$1;)V

    .line 608
    .local v0, "output":Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;, "Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 609
    return-object v0
.end method

.method public static withFallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureFallback;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Lcom/google/common/util/concurrent/FutureFallback",
            "<+TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "fallback":Lcom/google/common/util/concurrent/FutureFallback;, "Lcom/google/common/util/concurrent/FutureFallback<+TV;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/Futures;->withFallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static withFallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Lcom/google/common/util/concurrent/FutureFallback",
            "<+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "input":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "fallback":Lcom/google/common/util/concurrent/FutureFallback;, "Lcom/google/common/util/concurrent/FutureFallback<+TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v0, Lcom/google/common/util/concurrent/Futures$FallbackFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$FallbackFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureFallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static wrapAndThrowExceptionOrError(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<TX;>;)V^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1322
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 1323
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast p0, Ljava/lang/Error;

    .end local p0    # "cause":Ljava/lang/Throwable;
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 1325
    .restart local p0    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 1326
    new-instance v0, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1328
    :cond_1
    invoke-static {p1, p0}, Lcom/google/common/util/concurrent/Futures;->newWithCause(Ljava/lang/Class;Ljava/lang/Throwable;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method private static wrapAndThrowUnchecked(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1379
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 1380
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast p0, Ljava/lang/Error;

    .end local p0    # "cause":Ljava/lang/Throwable;
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 1387
    .restart local p0    # "cause":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
