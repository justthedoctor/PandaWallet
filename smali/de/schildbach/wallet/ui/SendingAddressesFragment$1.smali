.class Lde/schildbach/wallet/ui/SendingAddressesFragment$1;
.super Ljava/lang/Object;
.source "SendingAddressesFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/SendingAddressesFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/SendingAddressesFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendingAddressesFragment$1;->this$0:Lde/schildbach/wallet/ui/SendingAddressesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "columnIndex"    # I

    .prologue
    .line 101
    const-string v0, "address"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 107
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return v0

    .line 104
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lde/schildbach/wallet/util/WalletUtils;->formatHash(Ljava/lang/String;II)Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v0, 0x1

    goto :goto_0
.end method
