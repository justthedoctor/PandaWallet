.class public Lch/qos/logback/classic/turbo/MDCFilter;
.super Lch/qos/logback/classic/turbo/MatchingFilter;


# instance fields
.field MDCKey:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/classic/turbo/MatchingFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 2

    iget-object v0, p0, Lch/qos/logback/classic/turbo/MDCFilter;->MDCKey:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MDCFilter;->MDCKey:Ljava/lang/String;

    invoke-static {v0}, Lorg/slf4j/MDC;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/turbo/MDCFilter;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/qos/logback/classic/turbo/MDCFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lch/qos/logback/classic/turbo/MDCFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    goto :goto_0
.end method

.method public setMDCKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/turbo/MDCFilter;->MDCKey:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/turbo/MDCFilter;->value:Ljava/lang/String;

    return-void
.end method
