.class public Lcom/subgraph/orchid/data/exitpolicy/PortRange;
.super Ljava/lang/Object;
.source "PortRange.java"


# static fields
.field public static final ALL_PORTS:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

.field private static final MAX_PORT:I = 0xffff


# instance fields
.field private final portEnd:I

.field private final portStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    const/4 v1, 0x1

    const v2, 0xffff

    invoke-direct {v0, v1, v2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;-><init>(II)V

    sput-object v0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->ALL_PORTS:Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "portValue"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;-><init>(II)V

    .line 36
    return-void
.end method

.method constructor <init>(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1, p2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->isValidRange(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/subgraph/orchid/TorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput p1, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    .line 42
    iput p2, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    .line 43
    return-void
.end method

.method public static createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/exitpolicy/PortRange;
    .locals 5
    .param p0, "ports"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 10
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v4, :cond_0

    .line 11
    new-instance v1, Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->stringToPort(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;-><init>(I)V

    .line 13
    :goto_0
    return-object v1

    .line 12
    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 13
    new-instance v1, Lcom/subgraph/orchid/data/exitpolicy/PortRange;

    aget-object v2, v0, v3

    invoke-static {v2}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->stringToPort(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v0, v4

    invoke-static {v3}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->stringToPort(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;-><init>(II)V

    goto :goto_0

    .line 15
    :cond_1
    new-instance v1, Lcom/subgraph/orchid/TorParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse port range from string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isValidPort(I)Z
    .locals 1
    .param p0, "port"    # I

    .prologue
    .line 55
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidRange(II)Z
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {p0}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->isValidPort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->isValidPort(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    if-gt p0, p1, :cond_0

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static stringToPort(Ljava/lang/String;)I
    .locals 5
    .param p0, "port"    # Ljava/lang/String;

    .prologue
    .line 21
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 22
    .local v1, "portValue":I
    invoke-static {v1}, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->isValidPort(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23
    new-instance v2, Lcom/subgraph/orchid/TorParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal port value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v1    # "portValue":I
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/subgraph/orchid/TorParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse port value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/TorParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "portValue":I
    :cond_0
    return v1
.end method


# virtual methods
.method public rangeContains(I)Z
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 59
    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 64
    const-string v0, "*"

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    iget v1, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    if-ne v0, v1, :cond_1

    .line 66
    iget v0, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portStart:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/data/exitpolicy/PortRange;->portEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
