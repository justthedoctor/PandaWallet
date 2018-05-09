.class public Lch/qos/logback/core/pattern/ConverterUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findTail(Lch/qos/logback/core/pattern/Converter;)Lch/qos/logback/core/pattern/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/qos/logback/core/pattern/Converter",
            "<TE;>;)",
            "Lch/qos/logback/core/pattern/Converter",
            "<TE;>;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static setContextForConverters(Lch/qos/logback/core/Context;Lch/qos/logback/core/pattern/Converter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/qos/logback/core/Context;",
            "Lch/qos/logback/core/pattern/Converter",
            "<TE;>;)V"
        }
    .end annotation

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    instance-of v0, v1, Lch/qos/logback/core/spi/ContextAware;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lch/qos/logback/core/spi/ContextAware;

    invoke-interface {v0, p0}, Lch/qos/logback/core/spi/ContextAware;->setContext(Lch/qos/logback/core/Context;)V

    :cond_0
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static startConverters(Lch/qos/logback/core/pattern/Converter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/qos/logback/core/pattern/Converter",
            "<TE;>;)V"
        }
    .end annotation

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    instance-of v0, v1, Lch/qos/logback/core/pattern/CompositeConverter;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lch/qos/logback/core/pattern/CompositeConverter;

    iget-object v2, v0, Lch/qos/logback/core/pattern/CompositeConverter;->childConverter:Lch/qos/logback/core/pattern/Converter;

    invoke-static {v2}, Lch/qos/logback/core/pattern/ConverterUtil;->startConverters(Lch/qos/logback/core/pattern/Converter;)V

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/CompositeConverter;->start()V

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v0, v1, Lch/qos/logback/core/pattern/DynamicConverter;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lch/qos/logback/core/pattern/DynamicConverter;

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/DynamicConverter;->start()V

    goto :goto_1

    :cond_2
    return-void
.end method
