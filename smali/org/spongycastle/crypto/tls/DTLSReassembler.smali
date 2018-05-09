.class Lorg/spongycastle/crypto/tls/DTLSReassembler;
.super Ljava/lang/Object;
.source "DTLSReassembler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;
    }
.end annotation


# instance fields
.field private final body:[B

.field private missing:Ljava/util/Vector;

.field private final msg_type:S


# direct methods
.method constructor <init>(SI)V
    .locals 3
    .param p1, "msg_type"    # S
    .param p2, "length"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    .line 15
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->msg_type:S

    .line 16
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->body:[B

    .line 17
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    new-instance v1, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 18
    return-void
.end method


# virtual methods
.method contributeFragment(SI[BIII)V
    .locals 12
    .param p1, "msg_type"    # S
    .param p2, "length"    # I
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "fragment_offset"    # I
    .param p6, "fragment_length"    # I

    .prologue
    .line 34
    add-int v5, p5, p6

    .line 36
    .local v5, "fragment_end":I
    iget-short v9, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->msg_type:S

    if-ne v9, p1, :cond_0

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->body:[B

    array-length v9, v9

    if-ne v9, p2, :cond_0

    if-le v5, p2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    if-nez p6, :cond_2

    .line 44
    if-nez p5, :cond_0

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 46
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;

    .line 47
    .local v4, "firstRange":Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v9

    if-nez v9, :cond_0

    .line 49
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    .line 55
    .end local v4    # "firstRange":Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 57
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;

    .line 58
    .local v8, "range":Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->getStart()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 62
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v9

    move/from16 v0, p5

    if-le v9, v0, :cond_3

    .line 65
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->getStart()I

    move-result v9

    move/from16 v0, p5

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 66
    .local v3, "copyStart":I
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v9

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 67
    .local v1, "copyEnd":I
    sub-int v2, v1, v3

    .line 69
    .local v2, "copyLength":I
    add-int v9, p4, v3

    sub-int v9, v9, p5

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->body:[B

    invoke-static {p3, v9, v10, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->getStart()I

    move-result v9

    if-ne v3, v9, :cond_5

    .line 74
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v9

    if-ne v1, v9, :cond_4

    .line 76
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    add-int/lit8 v7, v6, -0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-virtual {v9, v6}, Ljava/util/Vector;->removeElementAt(I)V

    move v6, v7

    .line 55
    .end local v1    # "copyEnd":I
    .end local v2    # "copyLength":I
    .end local v3    # "copyStart":I
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 80
    .restart local v1    # "copyEnd":I
    .restart local v2    # "copyLength":I
    .restart local v3    # "copyStart":I
    :cond_4
    invoke-virtual {v8, v1}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->setStart(I)V

    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v9

    if-ne v1, v9, :cond_6

    .line 87
    invoke-virtual {v8, v3}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->setEnd(I)V

    goto :goto_2

    .line 91
    :cond_6
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    new-instance v10, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->getEnd()I

    move-result v11

    invoke-direct {v10, v1, v11}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;-><init>(II)V

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9, v10, v6}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 92
    invoke-virtual {v8, v3}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;->setEnd(I)V

    goto :goto_2
.end method

.method getBodyIfComplete()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->body:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getType()S
    .locals 1

    .prologue
    .line 22
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->msg_type:S

    return v0
.end method

.method reset()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->missing:Ljava/util/Vector;

    new-instance v1, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSReassembler;->body:[B

    array-length v3, v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/tls/DTLSReassembler$Range;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 103
    return-void
.end method
