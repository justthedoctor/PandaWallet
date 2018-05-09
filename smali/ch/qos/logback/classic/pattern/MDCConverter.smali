.class public Lch/qos/logback/classic/pattern/MDCConverter;
.super Lch/qos/logback/classic/pattern/ClassicConverter;


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lch/qos/logback/classic/pattern/MDCConverter;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method private outputMDCForAllKeys(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lch/qos/logback/classic/pattern/MDCConverter;->defaultValue:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lch/qos/logback/classic/pattern/MDCConverter;->key:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lch/qos/logback/classic/pattern/MDCConverter;->outputMDCForAllKeys(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getMDCPropertyMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/pattern/MDCConverter;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/classic/pattern/MDCConverter;->defaultValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/MDCConverter;->convert(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lch/qos/logback/classic/pattern/MDCConverter;->getFirstOption()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->extractDefaultReplacement(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lch/qos/logback/classic/pattern/MDCConverter;->key:Ljava/lang/String;

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    aget-object v0, v0, v2

    iput-object v0, p0, Lch/qos/logback/classic/pattern/MDCConverter;->defaultValue:Ljava/lang/String;

    :cond_0
    invoke-super {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/pattern/MDCConverter;->key:Ljava/lang/String;

    invoke-super {p0}, Lch/qos/logback/classic/pattern/ClassicConverter;->stop()V

    return-void
.end method
