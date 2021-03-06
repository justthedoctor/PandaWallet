.class public Lch/qos/logback/core/rolling/helper/FileNamePattern;
.super Lch/qos/logback/core/spi/ContextAwareBase;


# static fields
.field static final CONVERTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field headTokenConverter:Lch/qos/logback/core/pattern/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/pattern/Converter",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->CONVERTER_MAP:Ljava/util/Map;

    sget-object v0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->CONVERTER_MAP:Ljava/util/Map;

    const-string v1, "i"

    const-class v2, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->CONVERTER_MAP:Ljava/util/Map;

    const-string v1, "d"

    const-class v2, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lch/qos/logback/core/Context;)V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    invoke-static {p1}, Lch/qos/logback/core/rolling/helper/FileFilterUtil;->slashify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->setPattern(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {p0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->parse()V

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    invoke-static {v0}, Lch/qos/logback/core/pattern/ConverterUtil;->startConverters(Lch/qos/logback/core/pattern/Converter;)V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertInt(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs convertMultipleArguments([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    :goto_0
    if-eqz v1, :cond_3

    instance-of v0, v1, Lch/qos/logback/core/rolling/helper/MonoTypedConverter;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lch/qos/logback/core/rolling/helper/MonoTypedConverter;

    array-length v4, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, p1, v2

    invoke-interface {v0, v5}, Lch/qos/logback/core/rolling/helper/MonoTypedConverter;->isApplicable(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method escapeRightParantesis(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    const-string v1, ")"

    const-string v2, "\\)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerTokenConverter()Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;
    .locals 2

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    if-eqz v1, :cond_0

    check-cast v0, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryDateTokenConverter()Lch/qos/logback/core/rolling/helper/DateTokenConverter;
    .locals 3

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    :goto_0
    if-eqz v1, :cond_1

    instance-of v0, v1, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method parse()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->escapeRightParantesis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lch/qos/logback/core/pattern/parser/Parser;

    new-instance v2, Lch/qos/logback/core/pattern/util/AlmostAsIsEscapeUtil;

    invoke-direct {v2}, Lch/qos/logback/core/pattern/util/AlmostAsIsEscapeUtil;-><init>()V

    invoke-direct {v1, v0, v2}, Lch/qos/logback/core/pattern/parser/Parser;-><init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v0}, Lch/qos/logback/core/pattern/parser/Parser;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/Parser;->parse()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v0

    sget-object v2, Lch/qos/logback/core/rolling/helper/FileNamePattern;->CONVERTER_MAP:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lch/qos/logback/core/pattern/parser/Parser;->compile(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;
    :try_end_0
    .catch Lch/qos/logback/core/spi/ScanException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse pattern \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/rolling/helper/FileNamePattern;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toRegex()Ljava/lang/String;
    .locals 3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    :goto_0
    if-eqz v1, :cond_3

    instance-of v0, v1, Lch/qos/logback/core/pattern/LiteralConverter;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v0, v1, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    if-eqz v0, :cond_2

    const-string v0, "\\d{1,2}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    invoke-virtual {v0}, Lch/qos/logback/core/rolling/helper/DateTokenConverter;->toRegex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRegexForFixedDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->headTokenConverter:Lch/qos/logback/core/pattern/Converter;

    :goto_0
    if-eqz v0, :cond_3

    instance-of v2, v0, Lch/qos/logback/core/pattern/LiteralConverter;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/Converter;->getNext()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v2, v0, Lch/qos/logback/core/rolling/helper/IntegerTokenConverter;

    if-eqz v2, :cond_2

    const-string v2, "(\\d{1,3})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    instance-of v2, v0, Lch/qos/logback/core/rolling/helper/DateTokenConverter;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lch/qos/logback/core/pattern/Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/FileNamePattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
