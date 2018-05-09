.class public Lch/qos/logback/core/filter/EvaluatorFilter;
.super Lch/qos/logback/core/filter/AbstractMatcherFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/filter/AbstractMatcherFilter",
        "<TE;>;"
    }
.end annotation


# instance fields
.field evaluator:Lch/qos/logback/core/boolex/EventEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/boolex/EventEvaluator",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/filter/AbstractMatcherFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lch/qos/logback/core/spi/FilterReply;"
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/filter/EvaluatorFilter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/filter/EvaluatorFilter;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v0}, Lch/qos/logback/core/boolex/EventEvaluator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/filter/EvaluatorFilter;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v0, p1}, Lch/qos/logback/core/boolex/EventEvaluator;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/qos/logback/core/filter/EvaluatorFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lch/qos/logback/core/filter/EvaluatorFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;
    :try_end_0
    .catch Lch/qos/logback/core/boolex/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evaluator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/filter/EvaluatorFilter;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v2}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threw an exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/filter/EvaluatorFilter;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    goto :goto_0
.end method

.method public getEvaluator()Lch/qos/logback/core/boolex/EventEvaluator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/boolex/EventEvaluator",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/filter/EvaluatorFilter;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    return-object v0
.end method

.method public setEvaluator(Lch/qos/logback/core/boolex/EventEvaluator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/boolex/EventEvaluator",
            "<TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lch/qos/logback/core/filter/EvaluatorFilter;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/core/filter/EvaluatorFilter;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lch/qos/logback/core/filter/AbstractMatcherFilter;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No evaluator set for filter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/filter/EvaluatorFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/filter/EvaluatorFilter;->addError(Ljava/lang/String;)V

    goto :goto_0
.end method
