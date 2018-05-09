.class public Lde/schildbach/wallet/ui/WalletAddressesAdapter;
.super Landroid/widget/BaseAdapter;
.source "WalletAddressesAdapter.java"


# instance fields
.field private final colorInsignificant:I

.field private final colorLessSignificant:I

.field private final colorSignificant:I

.field private final context:Landroid/content/Context;

.field private final dateFormat:Ljava/text/DateFormat;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;"
        }
    .end annotation
.end field

.field private selectedAddress:Ljava/lang/String;

.field private final wallet:Lcom/google/bitcoin/core/Wallet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/bitcoin/core/Wallet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wallet"    # Lcom/google/bitcoin/core/Wallet;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->keys:Ljava/util/List;

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->selectedAddress:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->wallet:Lcom/google/bitcoin/core/Wallet;

    .line 68
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->dateFormat:Ljava/text/DateFormat;

    .line 69
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->colorSignificant:I

    .line 70
    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->colorInsignificant:I

    .line 71
    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->colorLessSignificant:I

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 73
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/bitcoin/core/ECKey;

    invoke-virtual {v0}, Lcom/google/bitcoin/core/ECKey;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "row"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    invoke-virtual/range {p0 .. p1}, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/bitcoin/core/ECKey;

    .line 118
    .local v8, "key":Lcom/google/bitcoin/core/ECKey;
    sget-object v12, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual {v8, v12}, Lcom/google/bitcoin/core/ECKey;->toAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v1

    .line 119
    .local v1, "address":Lcom/google/bitcoin/core/Address;
    move-object/from16 v0, p0

    iget-object v12, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->wallet:Lcom/google/bitcoin/core/Wallet;

    invoke-virtual {v12, v8}, Lcom/google/bitcoin/core/Wallet;->isKeyRotating(Lcom/google/bitcoin/core/ECKey;)Z

    move-result v7

    .line 121
    .local v7, "isRotateKey":Z
    if-nez p2, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->inflater:Landroid/view/LayoutInflater;

    const v13, 0x7f030015

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 124
    :cond_0
    invoke-virtual {v1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->selectedAddress:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 126
    .local v6, "isDefaultAddress":Z
    if-eqz v6, :cond_1

    const v12, 0x7f080014

    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    const v12, 0x7f06002c

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 129
    .local v2, "addressView":Landroid/widget/TextView;
    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-static {v1, v12, v13}, Lde/schildbach/wallet/util/WalletUtils;->formatAddress(Lcom/google/bitcoin/core/Address;II)Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->colorInsignificant:I

    :goto_1
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    const v12, 0x7f06002a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 133
    .local v10, "labelView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "label":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 136
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->colorInsignificant:I

    :goto_2
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    :goto_3
    const v12, 0x7f06002b

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 146
    .local v5, "createdView":Landroid/widget/TextView;
    invoke-virtual {v8}, Lcom/google/bitcoin/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long v3, v12, v14

    .line 147
    .local v3, "createdMs":J
    const-wide/16 v12, 0x0

    cmp-long v12, v3, v12

    if-eqz v12, :cond_5

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->dateFormat:Ljava/text/DateFormat;

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :goto_4
    const v12, 0x7f06002d

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 158
    .local v11, "messageView":Landroid/widget/TextView;
    if-eqz v7, :cond_6

    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    return-object p2

    .line 126
    .end local v2    # "addressView":Landroid/widget/TextView;
    .end local v3    # "createdMs":J
    .end local v5    # "createdView":Landroid/widget/TextView;
    .end local v9    # "label":Ljava/lang/String;
    .end local v10    # "labelView":Landroid/widget/TextView;
    .end local v11    # "messageView":Landroid/widget/TextView;
    :cond_1
    const v12, 0x7f080013

    goto/16 :goto_0

    .line 130
    .restart local v2    # "addressView":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->colorSignificant:I

    goto :goto_1

    .line 137
    .restart local v9    # "label":Ljava/lang/String;
    .restart local v10    # "labelView":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->colorLessSignificant:I

    goto :goto_2

    .line 141
    :cond_4
    const v12, 0x7f0b00fe

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 142
    move-object/from16 v0, p0

    iget v12, v0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->colorInsignificant:I

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 154
    .restart local v3    # "createdMs":J
    .restart local v5    # "createdView":Landroid/widget/TextView;
    :cond_5
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 158
    .restart local v11    # "messageView":Landroid/widget/TextView;
    :cond_6
    const/16 v12, 0x8

    goto :goto_5
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public replace(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/bitcoin/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/bitcoin/core/ECKey;>;"
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public setSelectedAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedAddress"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->selectedAddress:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lde/schildbach/wallet/ui/WalletAddressesAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method
