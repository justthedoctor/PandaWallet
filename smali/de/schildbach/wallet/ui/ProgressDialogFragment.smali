.class public Lde/schildbach/wallet/ui/ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressDialogFragment.java"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lde/schildbach/wallet/ui/ProgressDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/ProgressDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dismissProgress(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 46
    sget-object v1, Lde/schildbach/wallet/ui/ProgressDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 47
    .local v0, "fragment":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 48
    return-void
.end method

.method private static instance(Ljava/lang/String;)Lde/schildbach/wallet/ui/ProgressDialogFragment;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 52
    new-instance v1, Lde/schildbach/wallet/ui/ProgressDialogFragment;

    invoke-direct {v1}, Lde/schildbach/wallet/ui/ProgressDialogFragment;-><init>()V

    .line 54
    .local v1, "fragment":Lde/schildbach/wallet/ui/ProgressDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v0}, Lde/schildbach/wallet/ui/ProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method

.method public static showProgress(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "message"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-static {p1}, Lde/schildbach/wallet/ui/ProgressDialogFragment;->instance(Ljava/lang/String;)Lde/schildbach/wallet/ui/ProgressDialogFragment;

    move-result-object v0

    .line 41
    .local v0, "fragment":Lde/schildbach/wallet/ui/ProgressDialogFragment;
    sget-object v1, Lde/schildbach/wallet/ui/ProgressDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lde/schildbach/wallet/ui/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 68
    iput-object p1, p0, Lde/schildbach/wallet/ui/ProgressDialogFragment;->activity:Landroid/app/Activity;

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/schildbach/wallet/ui/ProgressDialogFragment;->setCancelable(Z)V

    .line 77
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lde/schildbach/wallet/ui/ProgressDialogFragment;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v2

    return-object v2
.end method
