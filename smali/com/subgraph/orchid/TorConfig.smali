.class public interface abstract Lcom/subgraph/orchid/TorConfig;
.super Ljava/lang/Object;
.source "TorConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/TorConfig$ConfigVar;,
        Lcom/subgraph/orchid/TorConfig$AutoBoolValue;,
        Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    }
.end annotation


# virtual methods
.method public abstract addBridge(Lcom/subgraph/orchid/data/IPv4Address;I)V
.end method

.method public abstract addBridge(Lcom/subgraph/orchid/data/IPv4Address;ILcom/subgraph/orchid/data/HexDigest;)V
.end method

.method public abstract addHidServAuth(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getBridges()Ljava/util/List;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BRIDGE_LINE:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/config/TorConfigBridgeLine;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCircuitBuildTimeout()J
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "60 seconds"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getCircuitIdleTimeout()J
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "1 hour"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getCircuitStreamTimeout()J
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "0"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getClientRejectInternalAddress()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "true"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getDataDirectory()Ljava/io/File;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "~/.orchid"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PATH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getEnforceDistinctSubnets()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "true"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getEntryNodes()Ljava/util/List;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExcludeExitNodes()Ljava/util/List;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExcludeNodes()Ljava/util/List;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExitNodes()Ljava/util/List;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->STRINGLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFascistFirewall()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "false"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getFirewallPorts()Ljava/util/List;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "80,443"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PORTLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHandshakeV2Enabled()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "true"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getHandshakeV3Enabled()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "true"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getHidServAuth(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->HS_AUTH:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getLongLivedPorts()Ljava/util/List;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "21,22,706,1863,5050,5190,5222,5223,6523,6667,6697,8300"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->PORTLIST:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxCircuitDirtiness()J
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "10 minutes"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getMaxClientCircuitsPending()I
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "32"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTEGER:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getNewCircuitPeriod()J
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "30 seconds"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getNumEntryGuards()I
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "3"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTEGER:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getSafeLogging()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "true"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getSafeSocks()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "false"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getSocksTimeout()J
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "2 minutes"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->INTERVAL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getStrictNodes()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "false"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getUseBridges()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "false"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getUseEntryGuards()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "true"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getUseMicrodescriptors()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "auto"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->AUTOBOOL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getUseNTorHandshake()Lcom/subgraph/orchid/TorConfig$AutoBoolValue;
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "auto"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->AUTOBOOL:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract getWarnUnsafeSocks()Z
    .annotation runtime Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = "true"
        type = .enum Lcom/subgraph/orchid/TorConfig$ConfigVarType;->BOOLEAN:Lcom/subgraph/orchid/TorConfig$ConfigVarType;
    .end annotation
.end method

.method public abstract setCircuitBuildTimeout(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract setCircuitIdleTimeout(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract setCircuitStreamTimeout(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract setClientRejectInternalAddress(Z)V
.end method

.method public abstract setDataDirectory(Ljava/io/File;)V
.end method

.method public abstract setEnforceDistinctSubnets(Z)V
.end method

.method public abstract setEntryNodes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setExcludeExitNodes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setExcludeNodes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setExitNodes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFascistFirewall(Z)V
.end method

.method public abstract setFirewallPorts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHandshakeV2Enabled(Z)V
.end method

.method public abstract setHandshakeV3Enabled(Z)V
.end method

.method public abstract setLongLivedPorts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMaxCircuitDirtiness(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract setMaxClientCircuitsPending(I)V
.end method

.method public abstract setNewCircuitPeriod(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract setNumEntryGuards(I)V
.end method

.method public abstract setSafeLogging(Z)V
.end method

.method public abstract setSafeSocks(Z)V
.end method

.method public abstract setSocksTimeout(J)V
.end method

.method public abstract setStrictNodes(Z)V
.end method

.method public abstract setUseBridges(Z)V
.end method

.method public abstract setUseEntryGuards(Z)V
.end method

.method public abstract setUseMicrodescriptors(Lcom/subgraph/orchid/TorConfig$AutoBoolValue;)V
.end method

.method public abstract setUseNTorHandshake(Lcom/subgraph/orchid/TorConfig$AutoBoolValue;)V
.end method

.method public abstract setWarnUnsafeSocks(Z)V
.end method
