.class public Lch/qos/logback/core/subst/NodeToStringTransformer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/subst/NodeToStringTransformer$1;
    }
.end annotation


# instance fields
.field final node:Lch/qos/logback/core/subst/Node;

.field final propertyContainer0:Lch/qos/logback/core/spi/PropertyContainer;

.field final propertyContainer1:Lch/qos/logback/core/spi/PropertyContainer;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/spi/PropertyContainer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/qos/logback/core/subst/NodeToStringTransformer;-><init>(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)V

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->node:Lch/qos/logback/core/subst/Node;

    iput-object p2, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->propertyContainer0:Lch/qos/logback/core/spi/PropertyContainer;

    iput-object p3, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->propertyContainer1:Lch/qos/logback/core/spi/PropertyContainer;

    return-void
.end method

.method private compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/subst/Node;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Stack",
            "<",
            "Lch/qos/logback/core/subst/Node;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_0

    sget-object v0, Lch/qos/logback/core/subst/NodeToStringTransformer$1;->$SwitchMap$ch$qos$logback$core$subst$Node$Type:[I

    iget-object v1, p1, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    invoke-virtual {v1}, Lch/qos/logback/core/subst/Node$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object p1, p1, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/subst/NodeToStringTransformer;->handleLiteral(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->handleVariable(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private constructRecursionErrorMessage(Ljava/util/Stack;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lch/qos/logback/core/subst/Node;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Circular variable reference detected while parsing input ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/subst/Node;

    const-string v3, "${"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lch/qos/logback/core/subst/NodeToStringTransformer;->variableNodeValue(Lch/qos/logback/core/subst/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_0

    const-string v0, " --> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private equalNodes(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/subst/Node;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    iget-object v2, p2, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/subst/Node$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    iget-object v2, p2, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    iget-object v2, p2, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleLiteral(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private handleVariable(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/subst/Node;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Stack",
            "<",
            "Lch/qos/logback/core/subst/Node;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->haveVisitedNodeAlready(Lch/qos/logback/core/subst/Node;Ljava/util/Stack;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->constructRecursionErrorMessage(Ljava/util/Stack;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    check-cast v0, Lch/qos/logback/core/subst/Node;

    invoke-direct {p0, v0, v1, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/subst/NodeToStringTransformer;->lookupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lch/qos/logback/core/subst/NodeToStringTransformer;->tokenizeAndParseString(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_IS_UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    check-cast v0, Lch/qos/logback/core/subst/Node;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private haveVisitedNodeAlready(Lch/qos/logback/core/subst/Node;Ljava/util/Stack;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/subst/Node;",
            "Ljava/util/Stack",
            "<",
            "Lch/qos/logback/core/subst/Node;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/subst/Node;

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/subst/NodeToStringTransformer;->equalNodes(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/subst/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->propertyContainer0:Lch/qos/logback/core/spi/PropertyContainer;

    invoke-interface {v0, p1}, Lch/qos/logback/core/spi/PropertyContainer;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->propertyContainer1:Lch/qos/logback/core/spi/PropertyContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->propertyContainer1:Lch/qos/logback/core/spi/PropertyContainer;

    invoke-interface {v0, p1}, Lch/qos/logback/core/spi/PropertyContainer;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {p1, v1}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lch/qos/logback/core/util/OptionHelper;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static substituteVariable(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    invoke-static {p0}, Lch/qos/logback/core/subst/NodeToStringTransformer;->tokenizeAndParseString(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;

    move-result-object v0

    new-instance v1, Lch/qos/logback/core/subst/NodeToStringTransformer;

    invoke-direct {v1, v0, p1, p2}, Lch/qos/logback/core/subst/NodeToStringTransformer;-><init>(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)V

    invoke-virtual {v1}, Lch/qos/logback/core/subst/NodeToStringTransformer;->transform()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static tokenizeAndParseString(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    new-instance v0, Lch/qos/logback/core/subst/Tokenizer;

    invoke-direct {v0, p0}, Lch/qos/logback/core/subst/Tokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/qos/logback/core/subst/Tokenizer;->tokenize()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lch/qos/logback/core/subst/Parser;

    invoke-direct {v1, v0}, Lch/qos/logback/core/subst/Parser;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lch/qos/logback/core/subst/Parser;->parse()Lch/qos/logback/core/subst/Node;

    move-result-object v0

    return-object v0
.end method

.method private variableNodeValue(Lch/qos/logback/core/subst/Node;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    check-cast v0, Lch/qos/logback/core/subst/Node;

    iget-object v0, v0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public transform()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->node:Lch/qos/logback/core/subst/Node;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-direct {p0, v1, v0, v2}, Lch/qos/logback/core/subst/NodeToStringTransformer;->compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
