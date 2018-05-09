.class public Lch/qos/logback/core/pattern/parser/Parser;
.super Lch/qos/logback/core/spi/ContextAwareBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/ContextAwareBase;"
    }
.end annotation


# static fields
.field public static final DEFAULT_COMPOSITE_CONVERTER_MAP:Ljava/util/Map;
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

.field public static final MISSING_RIGHT_PARENTHESIS:Ljava/lang/String; = "http://logback.qos.ch/codes.html#missingRightParenthesis"

.field public static final REPLACE_CONVERTER_WORD:Ljava/lang/String; = "replace"


# instance fields
.field pointer:I

.field final tokenList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Parser;->DEFAULT_COMPOSITE_CONVERTER_MAP:Ljava/util/Map;

    sget-object v0, Lch/qos/logback/core/pattern/parser/Parser;->DEFAULT_COMPOSITE_CONVERTER_MAP:Ljava/util/Map;

    sget-object v1, Lch/qos/logback/core/pattern/parser/Token;->BARE_COMPOSITE_KEYWORD_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lch/qos/logback/core/pattern/IdentityCompositeConverter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lch/qos/logback/core/pattern/parser/Parser;->DEFAULT_COMPOSITE_CONVERTER_MAP:Ljava/util/Map;

    const-string v1, "replace"

    const-class v2, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lch/qos/logback/core/pattern/parser/TokenStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    invoke-virtual {p1}, Lch/qos/logback/core/pattern/parser/TokenStream;->tokenize()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    new-instance v0, Lch/qos/logback/core/pattern/util/RegularEscapeUtil;

    invoke-direct {v0}, Lch/qos/logback/core/pattern/util/RegularEscapeUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/pattern/parser/Parser;-><init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    :try_start_0
    new-instance v0, Lch/qos/logback/core/pattern/parser/TokenStream;

    invoke-direct {v0, p1, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;-><init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/TokenStream;->tokenize()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lch/qos/logback/core/spi/ScanException;

    const-string v2, "Failed to initialize Parser"

    invoke-direct {v1, v2, v0}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method C()Lch/qos/logback/core/pattern/parser/FormattingNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    const-string v1, "a LEFT_PARENTHESIS or KEYWORD"

    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/pattern/parser/Parser;->expectNotNull(Lch/qos/logback/core/pattern/parser/Token;Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->SINGLE()Lch/qos/logback/core/pattern/parser/FormattingNode;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/pattern/parser/Parser;->COMPOSITE(Ljava/lang/String;)Lch/qos/logback/core/pattern/parser/FormattingNode;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method COMPOSITE(Ljava/lang/String;)Lch/qos/logback/core/pattern/parser/FormattingNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    new-instance v1, Lch/qos/logback/core/pattern/parser/CompositeNode;

    invoke-direct {v1, p1}, Lch/qos/logback/core/pattern/parser/CompositeNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->E()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/qos/logback/core/pattern/parser/CompositeNode;->setChildNode(Lch/qos/logback/core/pattern/parser/Node;)V

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getNextToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting RIGHT_PARENTHESIS token but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/pattern/parser/Parser;->addError(Ljava/lang/String;)V

    const-string v1, "See also http://logback.qos.ch/codes.html#missingRightParenthesis"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/pattern/parser/Parser;->addError(Ljava/lang/String;)V

    new-instance v1, Lch/qos/logback/core/spi/ScanException;

    invoke-direct {v1, v0}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v2

    const/16 v3, 0x3ee

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lch/qos/logback/core/pattern/parser/CompositeNode;->setOptions(Ljava/util/List;)V

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    :cond_2
    return-object v1
.end method

.method E()Lch/qos/logback/core/pattern/parser/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->T()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->Eopt()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/parser/Node;->setNext(Lch/qos/logback/core/pattern/parser/Node;)V

    goto :goto_0
.end method

.method Eopt()Lch/qos/logback/core/pattern/parser/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->E()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v0

    goto :goto_0
.end method

.method SINGLE()Lch/qos/logback/core/pattern/parser/FormattingNode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getNextToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    new-instance v1, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v2

    const/16 v3, 0x3ee

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->setOptions(Ljava/util/List;)V

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    :cond_0
    return-object v1
.end method

.method T()Lch/qos/logback/core/pattern/parser/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v1

    const-string v0, "a LITERAL or \'%\'"

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/pattern/parser/Parser;->expectNotNull(Lch/qos/logback/core/pattern/parser/Token;Ljava/lang/String;)V

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    new-instance v0, Lch/qos/logback/core/pattern/parser/Node;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lch/qos/logback/core/pattern/parser/Node;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    const-string v1, "a FORMAT_MODIFIER, SIMPLE_KEYWORD or COMPOUND_KEYWORD"

    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/pattern/parser/Parser;->expectNotNull(Lch/qos/logback/core/pattern/parser/Token;Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v1

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/core/pattern/FormatInfo;->valueOf(Ljava/lang/String;)Lch/qos/logback/core/pattern/FormatInfo;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->C()Lch/qos/logback/core/pattern/parser/FormattingNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/parser/FormattingNode;->setFormatInfo(Lch/qos/logback/core/pattern/FormatInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->C()Lch/qos/logback/core/pattern/parser/FormattingNode;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method advanceTokenPointer()V
    .locals 1

    iget v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    return-void
.end method

.method public compile(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)Lch/qos/logback/core/pattern/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/parser/Node;",
            "Ljava/util/Map;",
            ")",
            "Lch/qos/logback/core/pattern/Converter",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lch/qos/logback/core/pattern/parser/Compiler;

    invoke-direct {v0, p1, p2}, Lch/qos/logback/core/pattern/parser/Compiler;-><init>(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)V

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/parser/Compiler;->setContext(Lch/qos/logback/core/Context;)V

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Compiler;->compile()Lch/qos/logback/core/pattern/Converter;

    move-result-object v0

    return-object v0
.end method

.method expectNotNull(Lch/qos/logback/core/pattern/parser/Token;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All tokens consumed but was expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method getCurentToken()Lch/qos/logback/core/pattern/parser/Token;
    .locals 2

    iget v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    iget v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/pattern/parser/Token;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNextToken()Lch/qos/logback/core/pattern/parser/Token;
    .locals 3

    iget v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    iget v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/pattern/parser/Token;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()Lch/qos/logback/core/pattern/parser/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->E()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v0

    return-object v0
.end method
