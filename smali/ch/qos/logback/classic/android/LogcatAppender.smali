.class public Lch/qos/logback/classic/android/LogcatAppender;
.super Lch/qos/logback/core/AppenderBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/AppenderBase",
        "<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_TAG_LENGTH:I = 0x17


# instance fields
.field private checkLoggable:Z

.field private encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

.field private tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    iput-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    iput-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->checkLoggable:Z

    return-void
.end method


# virtual methods
.method public append(Lch/qos/logback/classic/spi/ILoggingEvent;)V
    .locals 2

    invoke-virtual {p0}, Lch/qos/logback/classic/android/LogcatAppender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lch/qos/logback/classic/android/LogcatAppender;->getTag(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v1

    iget v1, v1, Lch/qos/logback/classic/Level;->levelInt:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-boolean v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->checkLoggable:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getLayout()Lch/qos/logback/core/Layout;

    move-result-object v1

    invoke-interface {v1, p1}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iget-boolean v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->checkLoggable:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getLayout()Lch/qos/logback/core/Layout;

    move-result-object v1

    invoke-interface {v1, p1}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    iget-boolean v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->checkLoggable:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getLayout()Lch/qos/logback/core/Layout;

    move-result-object v1

    invoke-interface {v1, p1}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_3
    iget-boolean v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->checkLoggable:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getLayout()Lch/qos/logback/core/Layout;

    move-result-object v1

    invoke-interface {v1, p1}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_4
    iget-boolean v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->checkLoggable:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    iget-object v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getLayout()Lch/qos/logback/core/Layout;

    move-result-object v1

    invoke-interface {v1, p1}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x1388 -> :sswitch_0
        0x2710 -> :sswitch_1
        0x4e20 -> :sswitch_2
        0x7530 -> :sswitch_3
        0x9c40 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic append(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/android/LogcatAppender;->append(Lch/qos/logback/classic/spi/ILoggingEvent;)V

    return-void
.end method

.method public getCheckLoggable()Z
    .locals 1

    iget-boolean v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->checkLoggable:Z

    return v0
.end method

.method public getEncoder()Lch/qos/logback/classic/encoder/PatternLayoutEncoder;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    return-object v0
.end method

.method protected getTag(Lch/qos/logback/classic/spi/ILoggingEvent;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getLayout()Lch/qos/logback/core/Layout;

    move-result-object v0

    invoke-interface {v0, p1}, Lch/qos/logback/core/Layout;->doLayout(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->checkLoggable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lch/qos/logback/classic/spi/ILoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagEncoder()Lch/qos/logback/classic/encoder/PatternLayoutEncoder;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    return-object v0
.end method

.method public setCheckLoggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lch/qos/logback/classic/android/LogcatAppender;->checkLoggable:Z

    return-void
.end method

.method public setEncoder(Lch/qos/logback/classic/encoder/PatternLayoutEncoder;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    return-void
.end method

.method public setTagEncoder(Lch/qos/logback/classic/encoder/PatternLayoutEncoder;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->encoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getLayout()Lch/qos/logback/core/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No layout set for the appender named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/android/LogcatAppender;->addError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getLayout()Lch/qos/logback/core/Layout;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No tag layout set for the appender named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/android/LogcatAppender;->addError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lch/qos/logback/classic/PatternLayout;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->getPattern()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%nopex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v2}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->stop()V

    iget-object v2, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%nopex"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setPattern(Ljava/lang/String;)V

    iget-object v1, p0, Lch/qos/logback/classic/android/LogcatAppender;->tagEncoder:Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-virtual {v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->start()V

    :cond_3
    check-cast v0, Lch/qos/logback/classic/PatternLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/PatternLayout;->setPostCompileProcessor(Lch/qos/logback/core/pattern/PostCompileProcessor;)V

    :cond_4
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->start()V

    goto :goto_0
.end method
