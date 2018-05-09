.class public Lch/qos/logback/core/subst/Tokenizer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/subst/Tokenizer$1;,
        Lch/qos/logback/core/subst/Tokenizer$TokenizerState;
    }
.end annotation


# instance fields
.field final pattern:Ljava/lang/String;

.field final patternLength:I

.field pointer:I

.field state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/subst/Tokenizer;->pointer:I

    iput-object p1, p0, Lch/qos/logback/core/subst/Tokenizer;->pattern:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lch/qos/logback/core/subst/Tokenizer;->patternLength:I

    return-void
.end method

.method private addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/subst/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->LITERAL:Lch/qos/logback/core/subst/Token$Type;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleDefaultValueState(CLjava/util/List;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/subst/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x3a

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lch/qos/logback/core/subst/Token;->DEFAULT_SEP_TOKEN:Lch/qos/logback/core/subst/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->START_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch
.end method

.method private handleLiteralState(CLjava/util/List;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/subst/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x24

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->START_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->DEFAULT_VAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    goto :goto_0

    :cond_1
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    sget-object v0, Lch/qos/logback/core/subst/Token;->CURLY_LEFT_TOKEN:Lch/qos/logback/core/subst/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    sget-object v0, Lch/qos/logback/core/subst/Token;->CURLY_RIGHT_TOKEN:Lch/qos/logback/core/subst/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private handleStartState(CLjava/util/List;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/subst/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    sget-object v0, Lch/qos/logback/core/subst/Token;->START_TOKEN:Lch/qos/logback/core/subst/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    return-void

    :cond_0
    const/16 v0, 0x24

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method tokenize()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/subst/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v2, p0, Lch/qos/logback/core/subst/Tokenizer;->pointer:I

    iget v3, p0, Lch/qos/logback/core/subst/Tokenizer;->patternLength:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lch/qos/logback/core/subst/Tokenizer;->pattern:Ljava/lang/String;

    iget v3, p0, Lch/qos/logback/core/subst/Tokenizer;->pointer:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget v3, p0, Lch/qos/logback/core/subst/Tokenizer;->pointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lch/qos/logback/core/subst/Tokenizer;->pointer:I

    sget-object v3, Lch/qos/logback/core/subst/Tokenizer$1;->$SwitchMap$ch$qos$logback$core$subst$Tokenizer$TokenizerState:[I

    iget-object v4, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    invoke-virtual {v4}, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->handleLiteralState(CLjava/util/List;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->handleStartState(CLjava/util/List;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->handleDefaultValueState(CLjava/util/List;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lch/qos/logback/core/subst/Tokenizer$1;->$SwitchMap$ch$qos$logback$core$subst$Tokenizer$TokenizerState:[I

    iget-object v3, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    invoke-virtual {v3}, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :goto_1
    return-object v0

    :pswitch_3
    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lch/qos/logback/core/spi/ScanException;

    const-string v1, "Unexpected end of pattern string"

    invoke-direct {v0, v1}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
