.class public abstract Lch/qos/logback/core/pattern/FormattingConverter;
.super Lch/qos/logback/core/pattern/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/pattern/Converter",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final INITIAL_BUF_SIZE:I = 0x100

.field static final MAX_CAPACITY:I = 0x400


# instance fields
.field formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/pattern/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFormattingInfo()Lch/qos/logback/core/pattern/FormatInfo;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    return-object v0
.end method

.method public final setFormattingInfo(Lch/qos/logback/core/pattern/FormatInfo;)V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FormattingInfo has been already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    return-void
.end method

.method public final write(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "TE;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lch/qos/logback/core/pattern/FormattingConverter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/FormatInfo;->getMin()I

    move-result v1

    iget-object v2, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v2}, Lch/qos/logback/core/pattern/FormatInfo;->getMax()I

    move-result v2

    if-nez v0, :cond_2

    if-lez v1, :cond_0

    invoke-static {p1, v1}, Lch/qos/logback/core/pattern/SpacePadder;->spacePad(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_4

    iget-object v1, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/FormatInfo;->isLeftTruncate()Z

    move-result v1

    if-eqz v1, :cond_3

    sub-int v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    if-ge v3, v1, :cond_6

    iget-object v2, p0, Lch/qos/logback/core/pattern/FormattingConverter;->formattingInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v2}, Lch/qos/logback/core/pattern/FormatInfo;->isLeftPad()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1, v0, v1}, Lch/qos/logback/core/pattern/SpacePadder;->leftPad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/pattern/SpacePadder;->rightPad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
