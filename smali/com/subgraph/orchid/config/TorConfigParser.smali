.class public Lcom/subgraph/orchid/config/TorConfigParser;
.super Ljava/lang/Object;
.source "TorConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/config/TorConfigParser$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private parseAutoBool(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$AutoBoolValue;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->AUTO:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    .line 70
    :goto_0
    return-object v0

    .line 67
    :cond_0
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->TRUE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->FALSE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse AutoBool value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseCSV(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 59
    .local v4, "s":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private parseFileValue(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string v1, "~/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "home":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .end local v0    # "home":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseIntegerList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 51
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private parseIntervalValue(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p1}, Lcom/subgraph/orchid/config/TorConfigInterval;->createFrom(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parseValue(Ljava/lang/String;Lcom/subgraph/orchid/TorConfig$ConfigVarType;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    .prologue
    .line 14
    sget-object v0, Lcom/subgraph/orchid/config/TorConfigParser$1;->$SwitchMap$com$subgraph$orchid$TorConfig$ConfigVarType:[I

    invoke-virtual {p2}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 16
    :pswitch_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 30
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    :pswitch_1
    return-object p1

    .line 18
    .restart local p1    # "value":Ljava/lang/String;
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 20
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseIntervalValue(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigInterval;

    move-result-object p1

    goto :goto_0

    .line 22
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseFileValue(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 24
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseIntegerList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 28
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseCSV(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 30
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseAutoBool(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    move-result-object p1

    goto :goto_0

    .line 14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
