.class public Lch/qos/logback/core/rolling/RollingFileAppender;
.super Lch/qos/logback/core/FileAppender;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/FileAppender",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static COLLISION_URL:Ljava/lang/String;

.field private static RFA_NO_RP_URL:Ljava/lang/String;

.field private static RFA_NO_TP_URL:Ljava/lang/String;


# instance fields
.field currentlyActiveFile:Ljava/io/File;

.field rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

.field triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/rolling/TriggeringPolicy",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://logback.qos.ch/codes.html#rfa_no_tp"

    sput-object v0, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_NO_TP_URL:Ljava/lang/String;

    const-string v0, "http://logback.qos.ch/codes.html#rfa_no_rp"

    sput-object v0, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_NO_RP_URL:Ljava/lang/String;

    const-string v0, "http://logback.qos.ch/codes.html#rfa_collision"

    sput-object v0, Lch/qos/logback/core/rolling/RollingFileAppender;->COLLISION_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/FileAppender;-><init>()V

    return-void
.end method

.method private fileAndPatternCollide()Z
    .locals 2

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    instance-of v0, v0, Lch/qos/logback/core/rolling/RollingPolicyBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    check-cast v0, Lch/qos/logback/core/rolling/RollingPolicyBase;

    iget-object v0, v0, Lch/qos/logback/core/rolling/RollingPolicyBase;->fileNamePattern:Lch/qos/logback/core/rolling/helper/FileNamePattern;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->toRegex()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->getActiveFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRollingPolicy()Lch/qos/logback/core/rolling/RollingPolicy;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    return-object v0
.end method

.method public getTriggeringPolicy()Lch/qos/logback/core/rolling/TriggeringPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/rolling/TriggeringPolicy",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    return-object v0
.end method

.method public rollover()V
    .locals 5

    iget-object v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->lock:Lch/qos/logback/core/spi/LogbackLock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->closeOutputStream()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->rollover()V
    :try_end_1
    .catch Lch/qos/logback/core/rolling/RolloverFailure; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->getActiveFileName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->currentlyActiveFile:Ljava/io/File;

    invoke-virtual {p0, v2}, Lch/qos/logback/core/rolling/RollingFileAppender;->openFile(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v0, "RolloverFailure occurred. Deferring rollover"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->append:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openFile("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "File property must be set before any triggeringPolicy or rollingPolicy properties"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    const-string v0, "Visit http://logback.qos.ch/codes.html#rfa_file_after for more information"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lch/qos/logback/core/FileAppender;->setFile(Ljava/lang/String;)V

    return-void
.end method

.method public setRollingPolicy(Lch/qos/logback/core/rolling/RollingPolicy;)V
    .locals 1

    iput-object p1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    instance-of v0, v0, Lch/qos/logback/core/rolling/TriggeringPolicy;

    if-eqz v0, :cond_0

    check-cast p1, Lch/qos/logback/core/rolling/TriggeringPolicy;

    iput-object p1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    :cond_0
    return-void
.end method

.method public setTriggeringPolicy(Lch/qos/logback/core/rolling/TriggeringPolicy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/rolling/TriggeringPolicy",
            "<TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    instance-of v0, p1, Lch/qos/logback/core/rolling/RollingPolicy;

    if-eqz v0, :cond_0

    check-cast p1, Lch/qos/logback/core/rolling/RollingPolicy;

    iput-object p1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No TriggeringPolicy was set for the RollingFileAppender named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For more information, please visit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_NO_TP_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->append:Z

    if-nez v0, :cond_1

    const-string v0, "Append mode is mandatory for RollingFileAppender"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->append:Z

    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No RollingPolicy was set for the RollingFileAppender named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For more information, please visit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/RollingFileAppender;->RFA_NO_RP_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->fileAndPatternCollide()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "File property collides with fileNamePattern. Aborting."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For more information, please visit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/RollingFileAppender;->COLLISION_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->isPrudent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->rawFileProperty()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "Setting \"File\" property to null on account of prudent mode"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addWarn(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->setFile(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->getCompressionMode()Lch/qos/logback/core/rolling/helper/CompressionMode;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/rolling/helper/CompressionMode;->NONE:Lch/qos/logback/core/rolling/helper/CompressionMode;

    if-eq v0, v1, :cond_5

    const-string v0, "Compression is not supported in prudent mode. Aborting"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->currentlyActiveFile:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active log file name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/RollingFileAppender;->addInfo(Ljava/lang/String;)V

    invoke-super {p0}, Lch/qos/logback/core/FileAppender;->start()V

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->rollingPolicy:Lch/qos/logback/core/rolling/RollingPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/RollingPolicy;->stop()V

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    invoke-interface {v0}, Lch/qos/logback/core/rolling/TriggeringPolicy;->stop()V

    :cond_1
    invoke-super {p0}, Lch/qos/logback/core/FileAppender;->stop()V

    return-void
.end method

.method protected subAppend(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v1, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->triggeringPolicy:Lch/qos/logback/core/rolling/TriggeringPolicy;

    iget-object v2, p0, Lch/qos/logback/core/rolling/RollingFileAppender;->currentlyActiveFile:Ljava/io/File;

    invoke-interface {v0, v2, p1}, Lch/qos/logback/core/rolling/TriggeringPolicy;->isTriggeringEvent(Ljava/io/File;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/RollingFileAppender;->rollover()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lch/qos/logback/core/FileAppender;->subAppend(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
