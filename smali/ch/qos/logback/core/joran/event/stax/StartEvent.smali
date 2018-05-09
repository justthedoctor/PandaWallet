.class public Lch/qos/logback/core/joran/event/stax/StartEvent;
.super Lch/qos/logback/core/joran/event/stax/StaxEvent;


# instance fields
.field attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/xml/stream/events/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public elementPath:Lch/qos/logback/core/joran/spi/ElementPath;


# direct methods
.method constructor <init>(Lch/qos/logback/core/joran/spi/ElementPath;Ljava/lang/String;Ljava/util/Iterator;Ljavax/xml/stream/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/joran/spi/ElementPath;",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/xml/stream/events/Attribute;",
            ">;",
            "Ljavax/xml/stream/Location;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p4}, Lch/qos/logback/core/joran/event/stax/StaxEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    invoke-direct {p0, p3}, Lch/qos/logback/core/joran/event/stax/StartEvent;->populateAttributes(Ljava/util/Iterator;)V

    iput-object p1, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    return-void
.end method

.method private populateAttributes(Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/xml/stream/events/Attribute;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->attributes:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->attributes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method getAttributeByName(Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/xml/stream/events/Attribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getElementPath()Lch/qos/logback/core/joran/spi/ElementPath;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->elementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/stax/StartEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->location:Ljavax/xml/stream/Location;

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/joran/event/stax/StartEvent;->location:Ljavax/xml/stream/Location;

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
