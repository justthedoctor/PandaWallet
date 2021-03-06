.class public Lch/qos/logback/classic/pattern/ThrowableProxyConverter;
.super Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;


# static fields
.field protected static final BUILDER_CAPACITY:I = 0x800


# instance fields
.field errorCount:I

.field evaluatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/boolex/EventEvaluator",
            "<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field lengthOption:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    return-void
.end method

.method private addEvaluator(Lch/qos/logback/core/boolex/EventEvaluator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/boolex/EventEvaluator",
            "<",
            "Lch/qos/logback/classic/spi/ILoggingEvent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 6

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->subjoinFirstLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    sget-object v0, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    invoke-interface {p4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const-string v4, "Suppressed: "

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, p1, v4, v5, v3}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "Caused by: "

    invoke-interface {p4}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v1

    invoke-direct {p0, p1, v0, p3, v1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    goto :goto_0
.end method

.method private subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 2

    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lch/qos/logback/classic/spi/IThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private subjoinFirstLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 1

    add-int/lit8 v0, p3, -0x1

    invoke-static {p1, v0}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-direct {p0, p1, p4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->subjoinExceptionMessage(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/IThrowableProxy;)V

    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x4

    const/4 v2, 0x0

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getThrowableProxy()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    move v1, v2

    :goto_1
    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/boolex/EventEvaluator;

    :try_start_0
    invoke-interface {v0, p1}, Lch/qos/logback/core/boolex/EventEvaluator;->evaluate(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lch/qos/logback/core/boolex/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    if-nez v2, :cond_3

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v5

    iget v6, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    iget v6, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    if-ge v6, v9, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown for evaluator named ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget v6, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->errorCount:I

    if-ne v6, v9, :cond_1

    new-instance v6, Lch/qos/logback/core/status/ErrorStatus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception thrown for evaluator named ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "]."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, p0, v5}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    new-instance v0, Lch/qos/logback/core/status/ErrorStatus;

    const-string v5, "This was the last warning about this evaluator\'s errors.We don\'t want the StatusManager to get flooded."

    invoke-direct {v0, v5, p0}, Lch/qos/logback/core/status/ErrorStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lch/qos/logback/core/status/ErrorStatus;->add(Lch/qos/logback/core/status/Status;)V

    invoke-virtual {p0, v6}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addStatus(Lch/qos/logback/core/status/Status;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v4}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->throwableProxyToString(Lch/qos/logback/classic/spi/IThrowableProxy;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected extraData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 6

    const v4, 0x7fffffff

    const/4 v0, 0x1

    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iput v4, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    :goto_0
    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->getOptionList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    const-string v5, "EVALUATOR_MAP"

    invoke-interface {v1, v5}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-direct {p0, v0}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addEvaluator(Lch/qos/logback/core/boolex/EventEvaluator;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "full"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v4, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    goto :goto_0

    :cond_1
    const-string v2, "short"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] as an integer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->addError(Ljava/lang/String;)V

    iput v4, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->evaluatorList:Ljava/util/List;

    invoke-super {p0}, Lch/qos/logback/classic/pattern/ThrowableHandlingConverter;->stop()V

    return-void
.end method

.method protected subjoinSTEPArray(Ljava/lang/StringBuilder;ILch/qos/logback/classic/spi/IThrowableProxy;)V
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v3

    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v4

    iget v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    array-length v2, v3

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    array-length v0, v3

    :goto_1
    if-lez v4, :cond_0

    if-eqz v2, :cond_0

    sub-int/2addr v0, v4

    :cond_0
    :goto_2
    if-ge v1, v0, :cond_3

    invoke-static {p1, p2}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v1

    invoke-virtual {p0, p1, v5}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->extraData(Ljava/lang/StringBuilder;Lch/qos/logback/classic/spi/StackTraceElementProxy;)V

    sget-object v5, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->lengthOption:I

    goto :goto_1

    :cond_3
    if-lez v4, :cond_4

    if-eqz v2, :cond_4

    invoke-static {p1, p2}, Lch/qos/logback/classic/spi/ThrowableProxyUtil;->indent(Ljava/lang/StringBuilder;I)V

    const-string v0, "... "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " common frames omitted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lch/qos/logback/core/CoreConstants;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method protected throwableProxyToString(Lch/qos/logback/classic/spi/IThrowableProxy;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lch/qos/logback/classic/pattern/ThrowableProxyConverter;->recursiveAppend(Ljava/lang/StringBuilder;Ljava/lang/String;ILch/qos/logback/classic/spi/IThrowableProxy;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
