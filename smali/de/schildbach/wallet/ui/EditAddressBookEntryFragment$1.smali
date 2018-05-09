.class Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;
.super Ljava/lang/Object;
.source "EditAddressBookEntryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

.field final synthetic val$isAdd:Z

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$viewLabel:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;Landroid/widget/TextView;ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->this$0:Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    iput-object p2, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$viewLabel:Landroid/widget/TextView;

    iput-boolean p3, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$isAdd:Z

    iput-object p4, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 119
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 121
    iget-object v2, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$viewLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "newLabel":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "label"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-boolean v2, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$isAdd:Z

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->this$0:Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->access$000(Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 143
    .end local v0    # "newLabel":Ljava/lang/String;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    iget-object v2, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->this$0:Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    invoke-virtual {v2}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->dismiss()V

    .line 144
    return-void

    .line 131
    .restart local v0    # "newLabel":Ljava/lang/String;
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    iget-object v2, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->this$0:Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->access$000(Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_2
    iget-boolean v2, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$isAdd:Z

    if-nez v2, :cond_0

    .line 135
    iget-object v2, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->this$0:Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->access$000(Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 138
    .end local v0    # "newLabel":Ljava/lang/String;
    :cond_3
    const/4 v2, -0x3

    if-ne p2, v2, :cond_0

    .line 140
    iget-object v2, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->this$0:Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;

    invoke-static {v2}, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;->access$000(Lde/schildbach/wallet/ui/EditAddressBookEntryFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lde/schildbach/wallet/ui/EditAddressBookEntryFragment$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
