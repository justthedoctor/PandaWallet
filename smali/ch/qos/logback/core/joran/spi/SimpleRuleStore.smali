.class public Lch/qos/logback/core/joran/spi/SimpleRuleStore;
.super Lch/qos/logback/core/spi/ContextAwareBase;

# interfaces
.implements Lch/qos/logback/core/joran/spi/RuleStore;


# static fields
.field static KLEENE_STAR:Ljava/lang/String;


# instance fields
.field rules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lch/qos/logback/core/joran/spi/ElementSelector;",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "*"

    sput-object v0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->KLEENE_STAR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->setContext(Lch/qos/logback/core/Context;)V

    return-void
.end method

.method private isKleeneStar(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->KLEENE_STAR:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSuffixPattern(Lch/qos/logback/core/joran/spi/ElementSelector;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->KLEENE_STAR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V
    .locals 2

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p2, v0}, Lch/qos/logback/core/joran/action/Action;->setContext(Lch/qos/logback/core/Context;)V

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lch/qos/logback/core/joran/action/Action;

    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->context:Lch/qos/logback/core/Context;

    invoke-static {p2, v0, v2}, Lch/qos/logback/core/util/OptionHelper;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Lch/qos/logback/core/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/action/Action;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->addRule(Lch/qos/logback/core/joran/spi/ElementSelector;Lch/qos/logback/core/joran/action/Action;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate class ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method fullPathMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->fullPathMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchActions(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->fullPathMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->suffixMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->prefixMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->middleMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method middleMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v4

    move v3, v5

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ElementSelector;->peekLast()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_5

    invoke-virtual {v0, v5}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v7}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->isKleeneStar(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v2}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->isKleeneStar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ElementSelector;->getCopyOfPartList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    new-instance v7, Lch/qos/logback/core/joran/spi/ElementSelector;

    invoke-direct {v7, v2}, Lch/qos/logback/core/joran/spi/ElementSelector;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->isContainedIn(Lch/qos/logback/core/joran/spi/ElementPath;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    :goto_2
    if-le v2, v3, :cond_3

    move v1, v2

    :goto_3
    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_4
    return-object v0

    :cond_2
    move-object v0, v4

    goto :goto_4

    :cond_3
    move-object v0, v1

    move v1, v3

    goto :goto_3

    :cond_4
    move v2, v5

    goto :goto_2

    :cond_5
    move-object v2, v4

    goto :goto_1
.end method

.method prefixMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ElementSelector;->peekLast()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->isKleeneStar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->getPrefixMatchLength(Lch/qos/logback/core/joran/spi/ElementPath;)I

    move-result v2

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_2

    if-le v2, v3, :cond_2

    move v1, v2

    :goto_1
    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_2
    return-object v0

    :cond_1
    move-object v0, v4

    goto :goto_2

    :cond_2
    move-object v0, v1

    move v1, v3

    goto :goto_1
.end method

.method suffixMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            ")",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/joran/action/Action;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/spi/ElementSelector;

    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->isSuffixPattern(Lch/qos/logback/core/joran/spi/ElementSelector;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->getTailMatchLength(Lch/qos/logback/core/joran/spi/ElementPath;)I

    move-result v2

    if-le v2, v3, :cond_2

    move v1, v2

    :goto_1
    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_2
    return-object v0

    :cond_1
    move-object v0, v4

    goto :goto_2

    :cond_2
    move-object v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleRuleStore ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rules = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;->rules:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
