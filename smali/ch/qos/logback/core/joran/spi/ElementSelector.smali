.class public Lch/qos/logback/core/joran/spi/ElementSelector;
.super Lch/qos/logback/core/joran/spi/ElementPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lch/qos/logback/core/joran/spi/ElementSelector;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lch/qos/logback/core/joran/spi/ElementSelector;

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v1

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lch/qos/logback/core/joran/spi/ElementSelector;->equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullPathMatch(Lch/qos/logback/core/joran/spi/ElementPath;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementPath;->size()I

    move-result v1

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/ElementPath;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lch/qos/logback/core/joran/spi/ElementSelector;->equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPrefixMatchLength(Lch/qos/logback/core/joran/spi/ElementPath;)I
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementSelector;->partList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    if-gt v0, v1, :cond_3

    move v2, v0

    :goto_1
    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_4

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementSelector;->partList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;->equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public getTailMatchLength(Lch/qos/logback/core/joran/spi/ElementPath;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/joran/spi/ElementSelector;->partList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v1, p1, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-gt v3, v4, :cond_2

    move v2, v3

    :goto_1
    const/4 v1, 0x1

    move v6, v1

    move v5, v0

    :goto_2
    if-gt v6, v2, :cond_3

    iget-object v0, p0, Lch/qos/logback/core/joran/spi/ElementSelector;->partList:Ljava/util/ArrayList;

    sub-int v1, v3, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lch/qos/logback/core/joran/spi/ElementPath;->partList:Ljava/util/ArrayList;

    sub-int v7, v4, v6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/joran/spi/ElementSelector;->equalityCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/spi/ElementSelector;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isContainedIn(Lch/qos/logback/core/joran/spi/ElementPath;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/ElementPath;->toStableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/spi/ElementSelector;->toStableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method
