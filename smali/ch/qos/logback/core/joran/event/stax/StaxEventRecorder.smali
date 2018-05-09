.class public Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;
.super Lch/qos/logback/core/spi/ContextAwareBase;


# instance fields
.field eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/joran/event/stax/StaxEvent;",
            ">;"
        }
    .end annotation
.end field

.field globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    new-instance v0, Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->setContext(Lch/qos/logback/core/Context;)V

    return-void
.end method

.method private addCharacters(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 3

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->getLastEvent()Lch/qos/logback/core/joran/event/stax/StaxEvent;

    move-result-object v0

    instance-of v2, v0, Lch/qos/logback/core/joran/event/stax/BodyEvent;

    if-eqz v2, :cond_1

    check-cast v0, Lch/qos/logback/core/joran/event/stax/BodyEvent;

    invoke-interface {v1}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/joran/event/stax/BodyEvent;->append(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljavax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lch/qos/logback/core/joran/event/stax/BodyEvent;

    invoke-interface {v1}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/joran/event/stax/BodyEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    iget-object v1, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addEndEvent(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 3

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asEndElement()Ljavax/xml/stream/events/EndElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/qos/logback/core/joran/event/stax/EndEvent;

    invoke-interface {v0}, Ljavax/xml/stream/events/EndElement;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lch/qos/logback/core/joran/event/stax/EndEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ElementPath;->pop()V

    return-void
.end method

.method private addStartElement(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 5

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v2, v1}, Lch/qos/logback/core/joran/spi/ElementPath;->push(Ljava/lang/String;)V

    iget-object v2, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v2}, Lch/qos/logback/core/joran/spi/ElementPath;->duplicate()Lch/qos/logback/core/joran/spi/ElementPath;

    move-result-object v2

    new-instance v3, Lch/qos/logback/core/joran/event/stax/StartEvent;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-direct {v3, v2, v1, v4, v0}, Lch/qos/logback/core/joran/event/stax/StartEvent;-><init>(Lch/qos/logback/core/joran/spi/ElementPath;Ljava/lang/String;Ljava/util/Iterator;Ljavax/xml/stream/Location;)V

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private read(Ljavax/xml/stream/XMLEventReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->addStartElement(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->addCharacters(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->addEndEvent(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/qos/logback/core/joran/event/stax/StaxEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    return-object v0
.end method

.method getLastEvent()Lch/qos/logback/core/joran/event/stax/StaxEvent;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/joran/event/stax/StaxEvent;

    goto :goto_0
.end method

.method public recordEvents(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->read(Ljavax/xml/stream/XMLEventReader;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lch/qos/logback/core/joran/spi/JoranException;

    const-string v2, "Problem parsing XML document. See previously reported errors."

    invoke-direct {v1, v2, v0}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
