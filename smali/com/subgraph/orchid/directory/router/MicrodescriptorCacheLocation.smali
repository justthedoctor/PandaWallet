.class public Lcom/subgraph/orchid/directory/router/MicrodescriptorCacheLocation;
.super Ljava/lang/Object;
.source "MicrodescriptorCacheLocation.java"


# instance fields
.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/subgraph/orchid/directory/router/MicrodescriptorCacheLocation;->offset:I

    .line 10
    iput p2, p0, Lcom/subgraph/orchid/directory/router/MicrodescriptorCacheLocation;->length:I

    .line 11
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/subgraph/orchid/directory/router/MicrodescriptorCacheLocation;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/subgraph/orchid/directory/router/MicrodescriptorCacheLocation;->offset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MD Cache offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/directory/router/MicrodescriptorCacheLocation;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/subgraph/orchid/directory/router/MicrodescriptorCacheLocation;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
