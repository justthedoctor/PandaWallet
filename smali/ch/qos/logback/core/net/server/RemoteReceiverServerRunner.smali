.class Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;
.super Lch/qos/logback/core/net/server/ConcurrentServerRunner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/net/server/ConcurrentServerRunner",
        "<",
        "Lch/qos/logback/core/net/server/RemoteReceiverClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientQueueSize:I


# direct methods
.method public constructor <init>(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/net/server/ServerListener",
            "<",
            "Lch/qos/logback/core/net/server/RemoteReceiverClient;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/net/server/ConcurrentServerRunner;-><init>(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;)V

    iput p3, p0, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;->clientQueueSize:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic configureClient(Lch/qos/logback/core/net/server/Client;)Z
    .locals 1

    check-cast p1, Lch/qos/logback/core/net/server/RemoteReceiverClient;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;->configureClient(Lch/qos/logback/core/net/server/RemoteReceiverClient;)Z

    move-result v0

    return v0
.end method

.method protected configureClient(Lch/qos/logback/core/net/server/RemoteReceiverClient;)Z
    .locals 2

    invoke-virtual {p0}, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lch/qos/logback/core/net/server/RemoteReceiverClient;->setContext(Lch/qos/logback/core/Context;)V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;->clientQueueSize:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-interface {p1, v0}, Lch/qos/logback/core/net/server/RemoteReceiverClient;->setQueue(Ljava/util/concurrent/BlockingQueue;)V

    const/4 v0, 0x1

    return v0
.end method
