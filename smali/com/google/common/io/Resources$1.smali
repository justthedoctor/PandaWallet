.class final Lcom/google/common/io/Resources$1;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Lcom/google/common/io/LineProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/Resources;->readLines(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/LineProcessor",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/Resources$1;->result:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/common/io/Resources$1;->getResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/common/io/Resources$1;->result:Ljava/util/List;

    return-object v0
.end method

.method public processLine(Ljava/lang/String;)Z
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/common/io/Resources$1;->result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v0, 0x1

    return v0
.end method