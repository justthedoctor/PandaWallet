.class public Lch/qos/logback/classic/pattern/color/HighlightingCompositeConverter;
.super Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase",
        "<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/pattern/color/ForegroundCompositeConverterBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getForegroundColorCode(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/classic/Level;->toInt()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "39"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "1;31"

    goto :goto_0

    :sswitch_1
    const-string v0, "31"

    goto :goto_0

    :sswitch_2
    const-string v0, "34"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e20 -> :sswitch_2
        0x7530 -> :sswitch_1
        0x9c40 -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic getForegroundColorCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/pattern/color/HighlightingCompositeConverter;->getForegroundColorCode(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
