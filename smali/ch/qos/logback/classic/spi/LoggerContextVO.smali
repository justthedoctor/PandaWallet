.class public Lch/qos/logback/classic/spi/LoggerContextVO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4c296032dbfdf2c3L


# instance fields
.field final birthTime:J

.field final name:Ljava/lang/String;

.field final propertyMap:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Lch/qos/logback/classic/LoggerContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->getCopyOfPropertyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lch/qos/logback/classic/LoggerContext;->getBirthTime()J

    move-result-wide v0

    iput-wide v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    iput-object p2, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    iput-wide p3, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lch/qos/logback/classic/spi/LoggerContextVO;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lch/qos/logback/classic/spi/LoggerContextVO;

    iget-wide v2, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    iget-wide v4, p1, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    iget-object v3, p1, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    iget-object v3, p1, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBirthTime()J
    .locals 2

    iget-wide v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    iget-wide v3, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoggerContextVO{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", propertyMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->propertyMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lch/qos/logback/classic/spi/LoggerContextVO;->birthTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
