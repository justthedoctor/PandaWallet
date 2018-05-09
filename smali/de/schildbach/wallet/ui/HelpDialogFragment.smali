.class public final Lde/schildbach/wallet/ui/HelpDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "HelpDialogFragment.java"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lde/schildbach/wallet/ui/HelpDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/HelpDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static instance(I)Lde/schildbach/wallet/ui/HelpDialogFragment;
    .locals 3
    .param p0, "messageResId"    # I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 47
    new-instance v1, Lde/schildbach/wallet/ui/HelpDialogFragment;

    invoke-direct {v1}, Lde/schildbach/wallet/ui/HelpDialogFragment;-><init>()V

    .line 49
    .local v1, "fragment":Lde/schildbach/wallet/ui/HelpDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "message"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {v1, v0}, Lde/schildbach/wallet/ui/HelpDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method public static page(Landroid/support/v4/app/FragmentManager;I)V
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "messageResId"    # I
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-static {p1}, Lde/schildbach/wallet/ui/HelpDialogFragment;->instance(I)Lde/schildbach/wallet/ui/HelpDialogFragment;

    move-result-object v0

    .line 42
    .local v0, "newFragment":Landroid/support/v4/app/DialogFragment;
    sget-object v1, Lde/schildbach/wallet/ui/HelpDialogFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    iput-object p1, p0, Lde/schildbach/wallet/ui/HelpDialogFragment;->activity:Landroid/app/Activity;

    .line 64
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/HelpDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, "messageResId":I
    new-instance v1, Lde/schildbach/wallet/ui/DialogBuilder;

    iget-object v3, p0, Lde/schildbach/wallet/ui/HelpDialogFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    invoke-virtual {p0, v2}, Lde/schildbach/wallet/ui/HelpDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lde/schildbach/wallet/ui/DialogBuilder;->singleDismissButton(Landroid/content/DialogInterface$OnClickListener;)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 75
    invoke-virtual {v1}, Lde/schildbach/wallet/ui/DialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
