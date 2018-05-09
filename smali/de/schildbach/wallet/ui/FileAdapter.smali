.class public abstract Lde/schildbach/wallet/ui/FileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 45
    iput-object p1, p0, Lde/schildbach/wallet/ui/FileAdapter;->context:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/FileAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "row"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/FileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 61
    .local v0, "file":Ljava/io/File;
    if-nez p2, :cond_0

    .line 62
    iget-object v2, p0, Lde/schildbach/wallet/ui/FileAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030030

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 64
    :cond_0
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-object p2
.end method

.method public setFiles(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/FileAdapter;->clear()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 53
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/FileAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method
