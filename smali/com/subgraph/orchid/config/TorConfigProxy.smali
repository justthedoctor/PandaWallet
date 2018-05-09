.class public Lcom/subgraph/orchid/config/TorConfigProxy;
.super Ljava/lang/Object;
.source "TorConfigProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/config/TorConfigProxy$1;
    }
.end annotation


# instance fields
.field private final bridges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/config/TorConfigBridgeLine;",
            ">;"
        }
    .end annotation
.end field

.field private final configValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final parser:Lcom/subgraph/orchid/config/TorConfigParser;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->bridges:Ljava/util/List;

    .line 26
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    const-string v1, "Bridges"

    iget-object v2, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->bridges:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/subgraph/orchid/config/TorConfigParser;

    invoke-direct {v0}, Lcom/subgraph/orchid/config/TorConfigParser;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->parser:Lcom/subgraph/orchid/config/TorConfigParser;

    .line 28
    return-void
.end method

.method private getAnnotationForVariable(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVar;
    .locals 7
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "getName":Ljava/lang/String;
    const-class v5, Lcom/subgraph/orchid/TorConfig;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 193
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    const-class v5, Lcom/subgraph/orchid/TorConfig$ConfigVar;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/subgraph/orchid/TorConfig$ConfigVar;

    .line 197
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_1
    return-object v5

    .line 192
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getDefaultValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getAnnotationForVariable(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVar;

    move-result-object v0

    .line 162
    .local v0, "var":Lcom/subgraph/orchid/TorConfig$ConfigVar;
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    .line 165
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig$ConfigVar;->defaultValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultVariableValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getDefaultValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "defaultValue":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableType(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object v1

    .line 154
    .local v1, "type":Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 157
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->parser:Lcom/subgraph/orchid/config/TorConfigParser;

    invoke-virtual {v2, v0, v1}, Lcom/subgraph/orchid/config/TorConfigParser;->parseValue(Ljava/lang/String;Lcom/subgraph/orchid/TorConfig$ConfigVarType;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private getHSAuth(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigHSAuth;
    .locals 2
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    new-instance v1, Lcom/subgraph/orchid/config/TorConfigHSAuth;

    invoke-direct {v1}, Lcom/subgraph/orchid/config/TorConfigHSAuth;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/config/TorConfigHSAuth;

    return-object v0
.end method

.method private getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "add"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private getVariableType(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .locals 2
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v1, "Bridge"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BRIDGE_LINE:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    .line 178
    :goto_0
    return-object v1

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getAnnotationForVariable(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVar;

    move-result-object v0

    .line 175
    .local v0, "var":Lcom/subgraph/orchid/TorConfig$ConfigVar;
    if-nez v0, :cond_1

    .line 176
    const/4 v1, 0x0

    goto :goto_0

    .line 178
    :cond_1
    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig$ConfigVar;->type()Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object v1

    goto :goto_0
.end method

.method private getVariableValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "varName"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getDefaultVariableValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private invokeAddMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableType(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object v1

    .line 101
    .local v1, "type":Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    sget-object v2, Lcom/subgraph/orchid/config/TorConfigProxy$1;->$SwitchMap$com$subgraph$orchid$TorConfig$ConfigVarType:[I

    invoke-virtual {v1}, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 111
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "addX configuration methods only supported for HS_AUTH or BRIDGE_LINE type"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :pswitch_0
    invoke-direct {p0, v0, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeHSAuthAdd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-void

    .line 107
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeBridgeAdd([Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private invokeBridgeAdd([Ljava/lang/Object;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 116
    array-length v0, p1

    if-lt v0, v5, :cond_1

    aget-object v0, p1, v4

    instance-of v0, v0, Lcom/subgraph/orchid/data/IPv4Address;

    if-eqz v0, :cond_1

    aget-object v0, p1, v6

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 117
    array-length v0, p1

    if-ne v0, v5, :cond_0

    .line 118
    iget-object v2, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->bridges:Ljava/util/List;

    new-instance v3, Lcom/subgraph/orchid/config/TorConfigBridgeLine;

    aget-object v0, p1, v4

    check-cast v0, Lcom/subgraph/orchid/data/IPv4Address;

    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILcom/subgraph/orchid/data/HexDigest;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    aget-object v0, p1, v5

    instance-of v0, v0, Lcom/subgraph/orchid/data/HexDigest;

    if-eqz v0, :cond_1

    .line 121
    iget-object v2, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->bridges:Ljava/util/List;

    new-instance v3, Lcom/subgraph/orchid/config/TorConfigBridgeLine;

    aget-object v0, p1, v4

    check-cast v0, Lcom/subgraph/orchid/data/IPv4Address;

    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v1, p1, v5

    check-cast v1, Lcom/subgraph/orchid/data/HexDigest;

    invoke-direct {v3, v0, v4, v1}, Lcom/subgraph/orchid/config/TorConfigBridgeLine;-><init>(Lcom/subgraph/orchid/data/IPv4Address;ILcom/subgraph/orchid/data/HexDigest;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private invokeGetMethod(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "varName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "value":Ljava/lang/Object;
    instance-of v3, v1, Lcom/subgraph/orchid/config/TorConfigInterval;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 83
    check-cast v0, Lcom/subgraph/orchid/config/TorConfigInterval;

    .line 84
    .local v0, "interval":Lcom/subgraph/orchid/config/TorConfigInterval;
    invoke-virtual {v0}, Lcom/subgraph/orchid/config/TorConfigInterval;->getMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 86
    .end local v0    # "interval":Lcom/subgraph/orchid/config/TorConfigInterval;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method private invokeGetMethodWithArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "varName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableType(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object v1

    sget-object v2, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->HS_AUTH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    if-ne v1, v2, :cond_0

    .line 72
    invoke-direct {p0, v0, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeHSAuthGet(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private invokeHSAuthAdd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    array-length v1, p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, p2, v3

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    aget-object v1, p2, v4

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getHSAuth(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigHSAuth;

    move-result-object v0

    .line 133
    .local v0, "hsAuth":Lcom/subgraph/orchid/config/TorConfigHSAuth;
    aget-object v1, p2, v3

    check-cast v1, Ljava/lang/String;

    aget-object v2, p2, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private invokeHSAuthGet(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 91
    aget-object v1, p2, v2

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getHSAuth(Ljava/lang/String;)Lcom/subgraph/orchid/config/TorConfigHSAuth;

    move-result-object v0

    .line 95
    .local v0, "hsAuth":Lcom/subgraph/orchid/config/TorConfigHSAuth;
    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/config/TorConfigHSAuth;->get(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v1

    return-object v1
.end method

.method private setIntervalValue(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    aget-object v4, p2, v5

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    aget-object v4, p2, v6

    instance-of v4, v4, Ljava/util/concurrent/TimeUnit;

    if-nez v4, :cond_1

    .line 60
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 62
    :cond_1
    aget-object v4, p2, v5

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 63
    .local v1, "time":J
    aget-object v3, p2, v6

    check-cast v3, Ljava/util/concurrent/TimeUnit;

    .line 64
    .local v3, "unit":Ljava/util/concurrent/TimeUnit;
    new-instance v0, Lcom/subgraph/orchid/config/TorConfigInterval;

    invoke-direct {v0, v1, v2, v3}, Lcom/subgraph/orchid/config/TorConfigInterval;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 65
    .local v0, "interval":Lcom/subgraph/orchid/config/TorConfigInterval;
    iget-object v4, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0, p2, p3}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeSetMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 42
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    if-nez p3, :cond_1

    .line 36
    invoke-direct {p0, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeGetMethod(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeGetMethodWithArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/subgraph/orchid/config/TorConfigProxy;->invokeAddMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method invokeSetMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getVariableNameForMethod(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/config/TorConfigProxy;->getAnnotationForVariable(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$ConfigVar;

    move-result-object v0

    .line 51
    .local v0, "annotation":Lcom/subgraph/orchid/TorConfig$ConfigVar;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig$ConfigVar;->type()Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    move-result-object v2

    sget-object v3, Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;

    if-ne v2, v3, :cond_0

    .line 52
    invoke-direct {p0, v1, p2}, Lcom/subgraph/orchid/config/TorConfigProxy;->setIntervalValue(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/subgraph/orchid/config/TorConfigProxy;->configValues:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
