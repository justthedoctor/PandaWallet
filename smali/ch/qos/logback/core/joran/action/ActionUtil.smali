.class public Lch/qos/logback/core/joran/action/ActionUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/joran/action/ActionUtil$1;,
        Lch/qos/logback/core/joran/action/ActionUtil$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setProperties(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/util/Properties;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V
    .locals 2

    sget-object v0, Lch/qos/logback/core/joran/action/ActionUtil$1;->$SwitchMap$ch$qos$logback$core$joran$action$ActionUtil$Scope:[I

    invoke-virtual {p2}, Lch/qos/logback/core/joran/action/ActionUtil$Scope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addSubstitutionProperties(Ljava/util/Properties;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lch/qos/logback/core/util/ContextUtil;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/qos/logback/core/util/ContextUtil;-><init>(Lch/qos/logback/core/Context;)V

    invoke-virtual {v0, p1}, Lch/qos/logback/core/util/ContextUtil;->addProperties(Ljava/util/Properties;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Lch/qos/logback/core/util/OptionHelper;->setSystemProperties(Lch/qos/logback/core/spi/ContextAware;Ljava/util/Properties;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setProperty(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Ljava/lang/String;Lch/qos/logback/core/joran/action/ActionUtil$Scope;)V
    .locals 2

    sget-object v0, Lch/qos/logback/core/joran/action/ActionUtil$1;->$SwitchMap$ch$qos$logback$core$joran$action$ActionUtil$Scope:[I

    invoke-virtual {p3}, Lch/qos/logback/core/joran/action/ActionUtil$Scope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->addSubstitutionProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lch/qos/logback/core/Context;->putProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2}, Lch/qos/logback/core/util/OptionHelper;->setSystemProperty(Lch/qos/logback/core/spi/ContextAware;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stringToScope(Ljava/lang/String;)Lch/qos/logback/core/joran/action/ActionUtil$Scope;
    .locals 1

    sget-object v0, Lch/qos/logback/core/joran/action/ActionUtil$Scope;->SYSTEM:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/ActionUtil$Scope;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lch/qos/logback/core/joran/action/ActionUtil$Scope;->SYSTEM:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lch/qos/logback/core/joran/action/ActionUtil$Scope;->CONTEXT:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/action/ActionUtil$Scope;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lch/qos/logback/core/joran/action/ActionUtil$Scope;->CONTEXT:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    goto :goto_0

    :cond_1
    sget-object v0, Lch/qos/logback/core/joran/action/ActionUtil$Scope;->LOCAL:Lch/qos/logback/core/joran/action/ActionUtil$Scope;

    goto :goto_0
.end method
