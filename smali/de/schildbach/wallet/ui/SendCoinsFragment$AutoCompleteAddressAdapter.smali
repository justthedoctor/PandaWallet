.class public Lde/schildbach/wallet/ui/SendCoinsFragment$AutoCompleteAddressAdapter;
.super Landroid/widget/CursorAdapter;
.source "SendCoinsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/schildbach/wallet/ui/SendCoinsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoCompleteAddressAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;


# direct methods
.method public constructor <init>(Lde/schildbach/wallet/ui/SendCoinsFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 997
    iput-object p1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$AutoCompleteAddressAdapter;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    .line 998
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 999
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1011
    const-string v5, "label"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1012
    .local v2, "label":Ljava/lang/String;
    const-string v5, "address"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "address":Ljava/lang/String;
    move-object v4, p1

    .line 1014
    check-cast v4, Landroid/view/ViewGroup;

    .line 1015
    .local v4, "viewGroup":Landroid/view/ViewGroup;
    const v5, 0x7f06002a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1016
    .local v3, "labelView":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    const v5, 0x7f06002c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1018
    .local v1, "addressView":Landroid/widget/TextView;
    const/4 v5, 0x4

    const/16 v6, 0xc

    invoke-static {v0, v5, v6}, Lde/schildbach/wallet/util/WalletUtils;->formatHash(Ljava/lang/String;II)Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1024
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1004
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1005
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1030
    iget-object v0, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$AutoCompleteAddressAdapter;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v0}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v0

    iget-object v1, p0, Lde/schildbach/wallet/ui/SendCoinsFragment$AutoCompleteAddressAdapter;->this$0:Lde/schildbach/wallet/ui/SendCoinsFragment;

    invoke-static {v1}, Lde/schildbach/wallet/ui/SendCoinsFragment;->access$1400(Lde/schildbach/wallet/ui/SendCoinsFragment;)Lde/schildbach/wallet/ui/AbstractBindServiceActivity;

    move-result-object v1

    invoke-virtual {v1}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lde/schildbach/wallet/AddressBookProvider;->contentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "q"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lde/schildbach/wallet/ui/AbstractBindServiceActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1032
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method
