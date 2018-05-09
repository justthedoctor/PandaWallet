.class final Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrut/androlib/res/decoder/AXmlResourceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NamespaceStack"
.end annotation


# instance fields
.field private m_count:I

.field private m_data:[I

.field private m_dataLength:I

.field private m_depth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    return-void
.end method

.method private ensureDataCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    array-length v0, v0

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    sub-int/2addr v0, v1

    if-le v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    array-length v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    iget v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    goto :goto_0
.end method

.method private final find(IZ)I
    .locals 6

    const/4 v0, -0x1

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v2, v1, -0x1

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    move v3, v1

    :goto_1
    if-eqz v3, :cond_0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v1, v1, v2

    add-int/lit8 v2, v2, -0x2

    :goto_2
    if-eqz v1, :cond_4

    if-eqz p2, :cond_2

    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_3

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_3

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v0, v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1
.end method

.method private final get(IZ)I
    .locals 4

    const/4 v0, -0x1

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    :goto_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v3, v3, v2

    if-lt p1, v3, :cond_2

    sub-int/2addr p1, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    if-nez p2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v0, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final decreaseDepth()V
    .locals 3

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v1, v1, v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    goto :goto_0
.end method

.method public final findPrefix(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->find(IZ)I

    move-result v0

    return v0
.end method

.method public final findUri(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->find(IZ)I

    move-result v0

    return v0
.end method

.method public final getAccumulatedCount(I)I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-eqz v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    if-le p1, v1, :cond_2

    iget p1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    :cond_2
    move v1, v0

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v3, v2, v1

    add-int v2, v0, v3

    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public final getCurrentCount()I
    .locals 2

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public final getDepth()I
    .locals 1

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    return v0
.end method

.method public final getPrefix(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->get(IZ)I

    move-result v0

    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    return v0
.end method

.method public final getUri(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->get(IZ)I

    move-result v0

    return v0
.end method

.method public final increaseDepth()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->ensureDataCapacity(I)V

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v2, v1, v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v1, v0

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    return-void
.end method

.method public final pop()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    add-int/lit8 v0, v2, -0x1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v0, v2, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v0, v2, v1

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final pop(II)Z
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v3, v1, -0x1

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v4, v1, v3

    add-int/lit8 v1, v3, -0x2

    move v2, v0

    :goto_1
    if-eq v2, v4, :cond_0

    iget-object v5, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v5, v5, v1

    if-ne v5, p1, :cond_2

    iget-object v5, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    if-eq v5, p2, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v4, -0x1

    if-nez v2, :cond_4

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v0, v2, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v0, v2, v1

    :goto_2
    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v0, v2, v3

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x3

    sub-int v2, v3, v2

    iget-object v3, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput v0, v3, v2

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    iget v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    sub-int/2addr v4, v1

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public final push(II)V
    .locals 5

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->increaseDepth()V

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->ensureDataCapacity(I)V

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aget v1, v1, v0

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    aput v4, v2, v3

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    aput p1, v2, v0

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v3, v0, 0x1

    aput p2, v2, v3

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_data:[I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_dataLength:I

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_count:I

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->m_depth:I

    return-void
.end method
