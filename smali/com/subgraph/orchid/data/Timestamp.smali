.class public Lcom/subgraph/orchid/data/Timestamp;
.super Ljava/lang/Object;
.source "Timestamp.java"


# instance fields
.field private final date:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    .line 27
    return-void
.end method

.method public static createFromDateAndTimeString(Ljava/lang/String;)Lcom/subgraph/orchid/data/Timestamp;
    .locals 6
    .param p0, "dateAndTime"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 15
    .local v1, "format":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 16
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 18
    :try_start_0
    new-instance v2, Lcom/subgraph/orchid/data/Timestamp;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/data/Timestamp;-><init>(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .local v2, "ts":Lcom/subgraph/orchid/data/Timestamp;
    return-object v2

    .line 20
    .end local v2    # "ts":Lcom/subgraph/orchid/data/Timestamp;
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Lcom/subgraph/orchid/TorParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse timestamp string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPassed()Z
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 39
    .local v0, "now":Ljava/util/Date;
    iget-object v1, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    return v1
.end method

.method public isBefore(Lcom/subgraph/orchid/data/Timestamp;)Z
    .locals 2
    .param p1, "ts"    # Lcom/subgraph/orchid/data/Timestamp;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/subgraph/orchid/data/Timestamp;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/subgraph/orchid/data/Timestamp;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
