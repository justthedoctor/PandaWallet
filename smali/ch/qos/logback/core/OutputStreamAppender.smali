.class public Lch/qos/logback/core/OutputStreamAppender;
.super Lch/qos/logback/core/UnsynchronizedAppenderBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/UnsynchronizedAppenderBase",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected encoder:Lch/qos/logback/core/encoder/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/encoder/Encoder",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected lock:Lch/qos/logback/core/spi/LogbackLock;

.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;-><init>()V

    new-instance v0, Lch/qos/logback/core/spi/LogbackLock;

    invoke-direct {v0}, Lch/qos/logback/core/spi/LogbackLock;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Lch/qos/logback/core/spi/LogbackLock;

    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/OutputStreamAppender;->subAppend(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected closeOutputStream()V
    .locals 3

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->encoderClose()V

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    const-string v2, "Could not close output stream for OutputStreamAppender."

    invoke-direct {v1, v2, p0, v0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    goto :goto_0
.end method

.method encoderClose()V
    .locals 4

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    invoke-interface {v0}, Lch/qos/logback/core/encoder/Encoder;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/qos/logback/core/OutputStreamAppender;->started:Z

    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write footer for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/OutputStreamAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    goto :goto_0
.end method

.method encoderInit()V
    .locals 4

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    invoke-interface {v0, v1}, Lch/qos/logback/core/encoder/Encoder;->init(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lch/qos/logback/core/OutputStreamAppender;->started:Z

    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize encoder for appender named ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/OutputStreamAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    goto :goto_0
.end method

.method public getEncoder()Lch/qos/logback/core/encoder/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/encoder/Encoder",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setEncoder(Lch/qos/logback/core/encoder/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/encoder/Encoder",
            "<TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    return-void
.end method

.method public setLayout(Lch/qos/logback/core/Layout;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Layout",
            "<TE;>;)V"
        }
    .end annotation

    const-string v0, "This appender no longer admits a layout as a sub-component, set an encoder instead."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->addWarn(Ljava/lang/String;)V

    const-string v0, "To ensure compatibility, wrapping your layout in LayoutWrappingEncoder."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->addWarn(Ljava/lang/String;)V

    const-string v0, "See also http://logback.qos.ch/codes.html#layoutInsteadOfEncoder for details"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->addWarn(Ljava/lang/String;)V

    new-instance v0, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;

    invoke-direct {v0}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;-><init>()V

    invoke-virtual {v0, p1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->setLayout(Lch/qos/logback/core/Layout;)V

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/encoder/LayoutWrappingEncoder;->setContext(Lch/qos/logback/core/Context;)V

    iput-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Lch/qos/logback/core/spi/LogbackLock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->closeOutputStream()V

    iput-object p1, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    if-nez v0, :cond_0

    const-string v0, "Encoder has not been set. Cannot invoke its init method."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->addWarn(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->encoderInit()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    if-nez v1, :cond_0

    new-instance v0, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No encoder set for the appender named \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/OutputStreamAppender;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->outputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    new-instance v1, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No output stream set for the appender named \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/OutputStreamAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    invoke-super {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->start()V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v1, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Lch/qos/logback/core/spi/LogbackLock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->closeOutputStream()V

    invoke-super {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->stop()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected subAppend(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/OutputStreamAppender;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    instance-of v1, p1, Lch/qos/logback/core/spi/DeferredProcessingAware;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/spi/DeferredProcessingAware;

    move-object v1, v0

    invoke-interface {v1}, Lch/qos/logback/core/spi/DeferredProcessingAware;->prepareForDeferredProcessing()V

    :cond_1
    iget-object v2, p0, Lch/qos/logback/core/OutputStreamAppender;->lock:Lch/qos/logback/core/spi/LogbackLock;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lch/qos/logback/core/OutputStreamAppender;->writeOut(Ljava/lang/Object;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lch/qos/logback/core/OutputStreamAppender;->started:Z

    new-instance v2, Lch/qos/logback/core/status/ErrorStatus;

    const-string v3, "IO failure in appender"

    invoke-direct {v2, v3, p0, v1}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lch/qos/logback/core/OutputStreamAppender;->addStatus(Lch/qos/logback/core/status/Status;)V

    goto :goto_0
.end method

.method protected writeOut(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/OutputStreamAppender;->encoder:Lch/qos/logback/core/encoder/Encoder;

    invoke-interface {v0, p1}, Lch/qos/logback/core/encoder/Encoder;->doEncode(Ljava/lang/Object;)V

    return-void
.end method
