.class public Lch/qos/logback/core/pattern/parser/OptionTokenizer;
.super Ljava/lang/Object;


# static fields
.field private static final EXPECTING_STATE:I = 0x0

.field private static final QUOTED_COLLECTING_STATE:I = 0x2

.field private static final RAW_COLLECTING_STATE:I = 0x1


# instance fields
.field final escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

.field final pattern:Ljava/lang/String;

.field final patternLength:I

.field quoteChar:C

.field state:I

.field final tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;


# direct methods
.method constructor <init>(Lch/qos/logback/core/pattern/parser/TokenStream;)V
    .locals 1

    new-instance v0, Lch/qos/logback/core/pattern/util/AsIsEscapeUtil;

    invoke-direct {v0}, Lch/qos/logback/core/pattern/util/AsIsEscapeUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;-><init>(Lch/qos/logback/core/pattern/parser/TokenStream;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    return-void
.end method

.method constructor <init>(Lch/qos/logback/core/pattern/parser/TokenStream;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget-object v0, p1, Lch/qos/logback/core/pattern/parser/TokenStream;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->pattern:Ljava/lang/String;

    iget v0, p1, Lch/qos/logback/core/pattern/parser/TokenStream;->patternLength:I

    iput v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->patternLength:I

    iput-object p2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    return-void
.end method


# virtual methods
.method emitOptionToken(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v1, 0x3ee

    invoke-direct {v0, v1, p2}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    sget-object v1, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v1, v0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    return-void
.end method

.method escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v0, v0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->patternLength:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->pattern:Ljava/lang/String;

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v2, v1, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v2, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-interface {v1, p1, p2, v0, v2}, Lch/qos/logback/core/pattern/util/IEscapeUtil;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V

    :cond_0
    return-void
.end method

.method tokenize(CLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v2, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->patternLength:I

    if-ge v2, v3, :cond_2

    iget v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :sswitch_0
    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->pattern:Ljava/lang/String;

    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v3, v3, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v3, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    goto :goto_0

    :pswitch_0
    sparse-switch p1, :sswitch_data_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iput v5, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    goto :goto_1

    :sswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    iput-char p1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->quoteChar:C

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    :goto_2
    return-void

    :pswitch_1
    sparse-switch p1, :sswitch_data_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    iput v4, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :pswitch_2
    iget-char v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->quoteChar:C

    if-ne p1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    iput v4, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    goto :goto_1

    :cond_0
    const/16 v2, 0x5c

    if-ne p1, v2, :cond_1

    iget-char v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->quoteChar:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/16 v2, 0x7d

    if-ne p1, v2, :cond_5

    iget v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    if-nez v2, :cond_3

    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    iget v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    if-ne v2, v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    new-instance v0, Lch/qos/logback/core/spi/ScanException;

    const-string v1, "Unexpected end of pattern string in OptionTokenizer"

    invoke-direct {v0, v1}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lch/qos/logback/core/spi/ScanException;

    const-string v1, "Unexpected end of pattern string in OptionTokenizer"

    invoke-direct {v0, v1}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x2c -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_3
        0x7d -> :sswitch_4
    .end sparse-switch
.end method
