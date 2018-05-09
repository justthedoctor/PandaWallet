.class public Lde/schildbach/wallet/ui/DialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "DialogBuilder.java"


# instance fields
.field private final customTitle:Landroid/view/View;

.field private final iconView:Landroid/widget/ImageView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/DialogBuilder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->customTitle:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->customTitle:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->iconView:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->customTitle:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->titleView:Landroid/widget/TextView;

    .line 58
    return-void
.end method

.method public static warn(Landroid/content/Context;I)Lde/schildbach/wallet/ui/DialogBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I

    .prologue
    .line 43
    new-instance v0, Lde/schildbach/wallet/ui/DialogBuilder;

    invoke-direct {v0, p0}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "builder":Lde/schildbach/wallet/ui/DialogBuilder;
    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/DialogBuilder;->setIcon(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 45
    invoke-virtual {v0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 46
    return-object v0
.end method


# virtual methods
.method public bridge synthetic setIcon(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;->setIcon(I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)Lde/schildbach/wallet/ui/DialogBuilder;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->customTitle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/DialogBuilder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 79
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :cond_0
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lde/schildbach/wallet/ui/DialogBuilder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->customTitle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/DialogBuilder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 66
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(I)Lde/schildbach/wallet/ui/DialogBuilder;
    .locals 0
    .param p1, "messageResId"    # I

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 123
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 115
    return-object p0
.end method

.method public bridge synthetic setTitle(I)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->customTitle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/DialogBuilder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 104
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->customTitle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/DialogBuilder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v0, p0, Lde/schildbach/wallet/ui/DialogBuilder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    return-object p0
.end method

.method public singleDismissButton(Landroid/content/DialogInterface$OnClickListener;)Lde/schildbach/wallet/ui/DialogBuilder;
    .locals 1
    .param p1, "dismissListener"    # Landroid/content/DialogInterface$OnClickListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 128
    const v0, 0x7f0b00ec

    invoke-virtual {p0, v0, p1}, Lde/schildbach/wallet/ui/DialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    return-object p0
.end method
