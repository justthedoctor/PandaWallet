.class public Lcom/subgraph/orchid/config/TorConfigInterval;
.super Ljava/lang/Object;
.source "TorConfigInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/config/TorConfigInterval$1;
    }
.end annotation


# instance fields
.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final value:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "value"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1, p2, p3}, Lcom/subgraph/orchid/config/TorConfigInterval;->getTimeUnitFor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 56
    invoke-static {p1, p2, p3}, Lcom/subgraph/orchid/config/TorConfigInterval;->getValueFor(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    .line 58
    return-void
.end method

.method private static createForValueAndUnit(JLjava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;
    .locals 5
    .param p0, "value"    # J
    .param p2, "unitName"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v1, "week"

    invoke-static {p2, v1}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Lcom/subgraph/orchid/config/TorConfigInterval;

    const-wide/16 v2, 0x7

    mul-long/2addr v2, p0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4}, Lcom/subgraph/orchid/config/TorConfigInterval;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 22
    :goto_0
    return-object v1

    .line 21
    :cond_0
    invoke-static {p2}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringToUnit(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    .line 22
    .local v0, "unit":Ljava/util/concurrent/TimeUnit;
    new-instance v1, Lcom/subgraph/orchid/config/TorConfigInterval;

    invoke-direct {v1, p0, p1, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;-><init>(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0
.end method

.method public static createFrom(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 8
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 9
    .local v2, "ss":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 10
    .local v0, "n":J
    array-length v3, v2

    if-ne v3, v4, :cond_0

    .line 11
    new-instance v3, Lcom/subgraph/orchid/config/TorConfigInterval;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v3, v0, v1, v4}, Lcom/subgraph/orchid/config/TorConfigInterval;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 13
    :goto_0
    return-object v3

    :cond_0
    aget-object v3, v2, v4

    invoke-static {v0, v1, v3}, Lcom/subgraph/orchid/config/TorConfigInterval;->createForValueAndUnit(JLjava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;

    move-result-object v3

    goto :goto_0
.end method

.method private static getTimeUnitFor(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/TimeUnit;
    .locals 1
    .param p0, "value"    # J
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-eq p2, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p2, v0, :cond_1

    .line 66
    :cond_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    .end local p2    # "timeUnit":Ljava/util/concurrent/TimeUnit;
    :cond_1
    return-object p2
.end method

.method private static getValueFor(JLjava/util/concurrent/TimeUnit;)J
    .locals 1
    .param p0, "value"    # J
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-eq p2, v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p2, v0, :cond_1

    .line 74
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    .line 76
    .end local p0    # "value":J
    :cond_1
    return-wide p0
.end method

.method private static stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "unitType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static stringToUnit(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "day"

    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 36
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "hour"

    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "minute"

    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "second"

    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 35
    :cond_3
    const-string v0, "millisecond"

    invoke-static {p0, v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->stringMatchesUnit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_0

    .line 38
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static unitToString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2
    .param p0, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 96
    sget-object v0, Lcom/subgraph/orchid/config/TorConfigInterval$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 98
    :pswitch_0
    const-string v0, "millisecond"

    .line 106
    :goto_0
    return-object v0

    .line 100
    :pswitch_1
    const-string v0, "second"

    goto :goto_0

    .line 102
    :pswitch_2
    const-string v0, "minute"

    goto :goto_0

    .line 104
    :pswitch_3
    const-string v0, "hour"

    goto :goto_0

    .line 106
    :pswitch_4
    const-string v0, "days"

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getMilliseconds()J
    .locals 4

    .prologue
    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    iget-object v3, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v9, 0x7

    const-wide/16 v7, 0x1

    .line 81
    iget-object v3, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->timeUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    if-ne v3, v4, :cond_1

    iget-wide v3, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    rem-long/2addr v3, v9

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 82
    iget-wide v3, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    div-long v1, v3, v9

    .line 83
    .local v1, "weeks":J
    cmp-long v3, v1, v7

    if-nez v3, :cond_0

    const-string v3, "1 week"

    .line 92
    .end local v1    # "weeks":J
    :goto_0
    return-object v3

    .line 83
    .restart local v1    # "weeks":J
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " weeks"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 85
    .end local v1    # "weeks":J
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v3, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v3, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3}, Lcom/subgraph/orchid/config/TorConfigInterval;->unitToString(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-wide v3, p0, Lcom/subgraph/orchid/config/TorConfigInterval;->value:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    .line 90
    const-string v3, "s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
