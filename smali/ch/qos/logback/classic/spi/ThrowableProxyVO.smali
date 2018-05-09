.class public Lch/qos/logback/classic/spi/ThrowableProxyVO;
.super Ljava/lang/Object;

# interfaces
.implements Lch/qos/logback/classic/spi/IThrowableProxy;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xabbcdeca4d89c23L


# instance fields
.field private cause:Lch/qos/logback/classic/spi/IThrowableProxy;

.field private className:Ljava/lang/String;

.field private commonFramesCount:I

.field private message:Ljava/lang/String;

.field private stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

.field private suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lch/qos/logback/classic/spi/IThrowableProxy;)Lch/qos/logback/classic/spi/ThrowableProxyVO;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lch/qos/logback/classic/spi/ThrowableProxyVO;

    invoke-direct {v1}, Lch/qos/logback/classic/spi/ThrowableProxyVO;-><init>()V

    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->message:Ljava/lang/String;

    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCommonFrames()I

    move-result v0

    iput v0, v1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->commonFramesCount:I

    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    move-result-object v0

    iput-object v0, v1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getCause()Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lch/qos/logback/classic/spi/ThrowableProxyVO;->build(Lch/qos/logback/classic/spi/IThrowableProxy;)Lch/qos/logback/classic/spi/ThrowableProxyVO;

    move-result-object v0

    iput-object v0, v1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    :cond_1
    invoke-interface {p0}, Lch/qos/logback/classic/spi/IThrowableProxy;->getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2

    new-array v0, v0, [Lch/qos/logback/classic/spi/IThrowableProxy;

    iput-object v0, v1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    iget-object v3, v1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    aget-object v4, v2, v0

    invoke-static {v4}, Lch/qos/logback/classic/spi/ThrowableProxyVO;->build(Lch/qos/logback/classic/spi/IThrowableProxy;)Lch/qos/logback/classic/spi/ThrowableProxyVO;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lch/qos/logback/classic/spi/ThrowableProxyVO;

    iget-object v2, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    iget-object v3, p1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    iget-object v3, p1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    iget-object v3, p1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    if-nez v2, :cond_8

    iget-object v2, p1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    iget-object v3, p1, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCause()Lch/qos/logback/classic/spi/IThrowableProxy;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->cause:Lch/qos/logback/classic/spi/IThrowableProxy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonFrames()I
    .locals 1

    iget v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->commonFramesCount:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTraceElementProxyArray()[Lch/qos/logback/classic/spi/StackTraceElementProxy;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->stackTraceElementProxyArray:[Lch/qos/logback/classic/spi/StackTraceElementProxy;

    return-object v0
.end method

.method public getSuppressed()[Lch/qos/logback/classic/spi/IThrowableProxy;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->suppressed:[Lch/qos/logback/classic/spi/IThrowableProxy;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/classic/spi/ThrowableProxyVO;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
