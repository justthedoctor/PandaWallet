.class public final Lch/qos/logback/classic/pattern/PropertyConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;


# instance fields
.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/pattern/PropertyConverter;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Property_HAS_NO_KEY"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerContextVO()Lch/qos/logback/classic/spi/LoggerContextVO;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/classic/spi/LoggerContextVO;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/pattern/PropertyConverter;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/classic/pattern/PropertyConverter;->key:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/PropertyConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 1

    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/PropertyConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/PropertyConverter;->key:Ljava/lang/String;

    invoke-super {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;->start()V

    :cond_0
    return-void
.end method
