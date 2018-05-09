.class public abstract Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;
.super Lch/qos/logback/core/joran/action/Action;


# instance fields
.field evaluator:Lch/qos/logback/core/boolex/EventEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/boolex/EventEvaluator",
            "<*>;"
        }
    .end annotation
.end field

.field inError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    return-void
.end method


# virtual methods
.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    const-string v0, "class"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->defaultClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assuming default evaluator class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addInfo(Ljava/lang/String;)V

    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->defaultClassName()Ljava/lang/String;

    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    const-string v0, "Mandatory \"class\" attribute not set for <evaluator>"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "name"

    invoke-interface {p3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    const-string v0, "Mandatory \"name\" attribute not set for <evaluator>"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    const-class v0, Lch/qos/logback/core/boolex/EventEvaluator;

    iget-object v3, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v1, v0, v3}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/boolex/EventEvaluator;

    iput-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    iget-object v3, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0, v3}, Lch/qos/logback/core/boolex/EventEvaluator;->setContext(Lch/qos/logback/core/Context;)V

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v0, v2}, Lch/qos/logback/core/boolex/EventEvaluator;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->pushObject(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding evaluator named ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] to the object stack"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create evaluator of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract defaultClassName()Ljava/lang/String;
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->inError:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    instance-of v0, v0, Lch/qos/logback/core/spi/LifeCycle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v0}, Lch/qos/logback/core/spi/LifeCycle;->start()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting evaluator named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v1}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addInfo(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->peekObject()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    if-eq v0, v1, :cond_2

    const-string v0, "The object on the top the of the stack is not the evaluator pushed earlier."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->popObject()Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->context:Lch/qos/logback/core/Context;

    const-string v1, "EVALUATOR_MAP"

    invoke-interface {v0, v1}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3

    const-string v0, "Could not find EvaluatorMap"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set evaluator named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v1}, Lch/qos/logback/core/boolex/EventEvaluator;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/action/AbstractEventEvaluatorAction;->evaluator:Lch/qos/logback/core/boolex/EventEvaluator;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public finish(Lch/qos/logback/core/joran/spi/InterpretationContext;)V
    .locals 0

    return-void
.end method
