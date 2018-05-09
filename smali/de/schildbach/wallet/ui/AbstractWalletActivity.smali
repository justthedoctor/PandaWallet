.class public abstract Lde/schildbach/wallet/ui/AbstractWalletActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "AbstractWalletActivity.java"


# static fields
.field protected static final log:Lorg/slf4j/Logger;


# instance fields
.field private application:Lde/schildbach/wallet/WalletApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lde/schildbach/wallet/ui/AbstractWalletActivity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/AbstractWalletActivity;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWalletApplication()Lde/schildbach/wallet/WalletApplication;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/schildbach/wallet/ui/AbstractWalletActivity;->application:Lde/schildbach/wallet/WalletApplication;

    return-object v0
.end method

.method protected final varargs longToast(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "textResId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->toast(III[Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method protected final varargs longToast(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->toast(Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lde/schildbach/wallet/WalletApplication;

    iput-object v0, p0, Lde/schildbach/wallet/ui/AbstractWalletActivity;->application:Lde/schildbach/wallet/WalletApplication;

    .line 50
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method protected final varargs toast(III[Ljava/lang/Object;)V
    .locals 7
    .param p1, "textResId"    # I
    .param p2, "imageResId"    # I
    .param p3, "duration"    # I
    .param p4, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030036

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 94
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f060088

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 95
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {p0, p1, p4}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v1, p2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 98
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v0, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 101
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void
.end method

.method protected final varargs toast(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "textResId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0, v0, p2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->toast(III[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method protected final varargs toast(Ljava/lang/String;II[Ljava/lang/Object;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "imageResId"    # I
    .param p3, "duration"    # I
    .param p4, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030036

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f060088

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    .local v1, "tv":Landroid/widget/TextView;
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v1, p2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 75
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 77
    invoke-virtual {v0, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 78
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    return-void
.end method

.method protected final varargs toast(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, v0, v0, p2}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->toast(Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 61
    return-void
.end method
