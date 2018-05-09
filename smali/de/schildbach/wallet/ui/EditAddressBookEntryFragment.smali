.class public final Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "EditAddressBookEntryFragment.java"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field private static final KEY_SUGGESTED_ADDRESS_LABEL:Ljava/lang/String; = "suggested_address_label"


# instance fields
.field private activity:Landroid/app/Activity;

.field private contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "address"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static edit(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "address"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "suggestedAddressLabel"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-static {p1, p2}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->instance(Ljava/lang/String;Ljava/lang/String;)Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    move-result-object v0

    .line 58
    .local v0, "newFragment":Landroid/support/v4/app/DialogFragment;
    sget-object v1, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private static instance(Ljava/lang/String;Ljava/lang/String;)Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;
    .locals 3
    .param p0, "address"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "suggestedAddressLabel"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    new-instance v1, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    invoke-direct {v1}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;-><init>()V

    .line 65
    .local v1, "fragment":Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "address"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "suggested_address_label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    iput-object p1, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->activity:Landroid/app/Activity;

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->contentResolver:Landroid/content/ContentResolver;

    .line 83
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 89
    .local v1, "args":Landroid/os/Bundle;
    const-string v12, "address"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "address":Ljava/lang/String;
    const-string v12, "suggested_address_label"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "suggestedAddressLabel":Ljava/lang/String;
    iget-object v12, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->activity:Landroid/app/Activity;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 94
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget-object v12, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lde/schildbach/wallet/AddressBookProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 96
    .local v8, "uri":Landroid/net/Uri;
    iget-object v12, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->activity:Landroid/app/Activity;

    invoke-static {v12, v0}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "label":Ljava/lang/String;
    if-nez v5, :cond_1

    const/4 v4, 0x1

    .line 100
    .local v4, "isAdd":Z
    :goto_0
    new-instance v2, Lde/schildbach/wallet/ui/DialogBuilder;

    iget-object v12, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->activity:Landroid/app/Activity;

    invoke-direct {v2, v12}, Lde/schildbach/wallet/ui/DialogBuilder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v2, "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    if-eqz v4, :cond_2

    const v12, 0x7f0b0075

    :goto_1
    invoke-virtual {v2, v12}, Lde/schildbach/wallet/ui/DialogBuilder;->setTitle(I)Lde/schildbach/wallet/ui/DialogBuilder;

    .line 104
    const v12, 0x7f03001b

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 106
    .local v9, "view":Landroid/view/View;
    const v12, 0x7f060035

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 107
    .local v10, "viewAddress":Landroid/widget/TextView;
    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-static {v0, v12, v13}, Lde/schildbach/wallet/util/WalletUtils;->formatHash(Ljava/lang/String;II)Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v12, 0x7f060036

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 110
    .local v11, "viewLabel":Landroid/widget/TextView;
    if-eqz v5, :cond_3

    .end local v5    # "label":Ljava/lang/String;
    :goto_2
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v2, v9}, Lde/schildbach/wallet/ui/DialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 114
    new-instance v6, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;

    invoke-direct {v6, p0, v11, v4, v8}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;-><init>(Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;Landroid/widget/TextView;ZLandroid/net/Uri;)V

    .line 147
    .local v6, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz v4, :cond_4

    const v12, 0x7f0b00f0

    :goto_3
    invoke-virtual {v2, v12, v6}, Lde/schildbach/wallet/ui/DialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    if-nez v4, :cond_0

    .line 149
    const v12, 0x7f0b00f1

    invoke-virtual {v2, v12, v6}, Lde/schildbach/wallet/ui/DialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    :cond_0
    const v12, 0x7f0b00ed

    invoke-virtual {v2, v12, v6}, Lde/schildbach/wallet/ui/DialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    invoke-virtual {v2}, Lde/schildbach/wallet/ui/DialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    return-object v12

    .line 98
    .end local v2    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    .end local v4    # "isAdd":Z
    .end local v6    # "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewAddress":Landroid/widget/TextView;
    .end local v11    # "viewLabel":Landroid/widget/TextView;
    .restart local v5    # "label":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 102
    .restart local v2    # "dialog":Lde/schildbach/wallet/ui/DialogBuilder;
    .restart local v4    # "isAdd":Z
    :cond_2
    const v12, 0x7f0b0076

    goto :goto_1

    .restart local v9    # "view":Landroid/view/View;
    .restart local v10    # "viewAddress":Landroid/widget/TextView;
    .restart local v11    # "viewLabel":Landroid/widget/TextView;
    :cond_3
    move-object v5, v7

    .line 110
    goto :goto_2

    .line 147
    .end local v5    # "label":Ljava/lang/String;
    .restart local v6    # "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    const v12, 0x7f0b0079

    goto :goto_3
.end method
