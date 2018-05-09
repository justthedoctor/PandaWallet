.class public Lch/qos/logback/core/joran/event/stax/StaxEvent;
.super Ljava/lang/Object;


# instance fields
.field final location:Ljavax/xml/stream/Location;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/core/joran/event/stax/StaxEvent;->name:Ljava/lang/String;

    iput-object p2, p0, Lch/qos/logback/core/joran/event/stax/StaxEvent;->location:Ljavax/xml/stream/Location;

    return-void
.end method


# virtual methods
.method public getLocation()Ljavax/xml/stream/Location;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEvent;->location:Ljavax/xml/stream/Location;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEvent;->name:Ljava/lang/String;

    return-object v0
.end method
