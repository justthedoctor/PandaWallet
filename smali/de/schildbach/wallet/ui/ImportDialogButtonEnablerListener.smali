.class public Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;
.super Ljava/lang/Object;
.source "ImportDialogButtonEnablerListener.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final dialog:Landroid/app/AlertDialog;

.field private final passwordView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "passwordView"    # Landroid/widget/TextView;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "dialog"    # Landroid/app/AlertDialog;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->passwordView:Landroid/widget/TextView;

    .line 43
    iput-object p2, p0, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->dialog:Landroid/app/AlertDialog;

    .line 45
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->handle()V

    .line 46
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 63
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->handle()V

    .line 64
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 69
    return-void
.end method

.method public handle()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->needsPassword()Z

    move-result v3

    .line 79
    .local v3, "needsPassword":Z
    iget-object v6, p0, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->passwordView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v4

    .line 80
    .local v2, "hasPassword":Z
    :goto_0
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->hasFile()Z

    move-result v1

    .line 82
    .local v1, "hasFile":Z
    iget-object v6, p0, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->dialog:Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 83
    .local v0, "button":Landroid/widget/Button;
    if-eqz v1, :cond_2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    return-void

    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "hasFile":Z
    .end local v2    # "hasPassword":Z
    :cond_1
    move v2, v5

    .line 79
    goto :goto_0

    .restart local v0    # "button":Landroid/widget/Button;
    .restart local v1    # "hasFile":Z
    .restart local v2    # "hasPassword":Z
    :cond_2
    move v4, v5

    .line 83
    goto :goto_1
.end method

.method protected hasFile()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected needsPassword()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->handle()V

    .line 52
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ImportDialogButtonEnablerListener;->handle()V

    .line 58
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 74
    return-void
.end method
