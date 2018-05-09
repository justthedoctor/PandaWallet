.class Lde/schildbach/wallet/ui/PeerListFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "PeerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/schildbach/wallet/ui/PeerListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/bitcoin/core/Peer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/schildbach/wallet/ui/PeerListFragment;


# direct methods
.method constructor <init>(Lde/schildbach/wallet/ui/PeerListFragment;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 113
    iput-object p1, p0, Lde/schildbach/wallet/ui/PeerListFragment$1;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "row"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lde/schildbach/wallet/ui/PeerListFragment$1;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lde/schildbach/wallet/ui/PeerListFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f030023

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lde/schildbach/wallet/ui/PeerListFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/bitcoin/core/Peer;

    .line 121
    .local v6, "peer":Lcom/google/bitcoin/core/Peer;
    invoke-virtual {v6}, Lcom/google/bitcoin/core/Peer;->getPeerVersionMessage()Lcom/google/bitcoin/core/VersionMessage;

    move-result-object v14

    .line 122
    .local v14, "versionMessage":Lcom/google/bitcoin/core/VersionMessage;
    invoke-virtual {v6}, Lcom/google/bitcoin/core/Peer;->getDownloadData()Z

    move-result v5

    .line 124
    .local v5, "isDownloading":Z
    const v15, 0x7f060046

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 125
    .local v10, "rowIp":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/google/bitcoin/core/Peer;->getAddress()Lcom/google/bitcoin/core/PeerAddress;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/bitcoin/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object v1

    .line 126
    .local v1, "address":Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v15, v0, Lde/schildbach/wallet/ui/PeerListFragment$1;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    invoke-static {v15}, Lde/schildbach/wallet/ui/PeerListFragment;->access$000(Lde/schildbach/wallet/ui/PeerListFragment;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 127
    .local v4, "hostname":Ljava/lang/String;
    if-eqz v4, :cond_1

    .end local v4    # "hostname":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const v15, 0x7f060048

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 130
    .local v9, "rowHeight":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/google/bitcoin/core/Peer;->getBestHeight()J

    move-result-wide v2

    .line 131
    .local v2, "bestHeight":J
    const-wide/16 v15, 0x0

    cmp-long v15, v2, v15

    if-lez v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " blocks"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_1
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    if-eqz v5, :cond_3

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    const v15, 0x7f060047

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 135
    .local v13, "rowVersion":Landroid/widget/TextView;
    iget-object v15, v14, Lcom/google/bitcoin/core/VersionMessage;->subVer:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    if-eqz v5, :cond_4

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_3
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    const v15, 0x7f060049

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 139
    .local v12, "rowProtocol":Landroid/widget/TextView;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "protocol: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v14, Lcom/google/bitcoin/core/VersionMessage;->clientVersion:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    if-eqz v5, :cond_5

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_4
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    const v15, 0x7f06004a

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 143
    .local v11, "rowPing":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/google/bitcoin/core/Peer;->getPingTime()J

    move-result-wide v7

    .line 144
    .local v7, "pingTime":J
    const-wide v15, 0x7fffffffffffffffL

    cmp-long v15, v7, v15

    if-gez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/schildbach/wallet/ui/PeerListFragment$1;->this$0:Lde/schildbach/wallet/ui/PeerListFragment;

    const v16, 0x7f0b0094

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lde/schildbach/wallet/ui/PeerListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    :goto_5
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    if-eqz v5, :cond_7

    sget-object v15, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_6
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    return-object p2

    .line 127
    .end local v2    # "bestHeight":J
    .end local v7    # "pingTime":J
    .end local v9    # "rowHeight":Landroid/widget/TextView;
    .end local v11    # "rowPing":Landroid/widget/TextView;
    .end local v12    # "rowProtocol":Landroid/widget/TextView;
    .end local v13    # "rowVersion":Landroid/widget/TextView;
    .restart local v4    # "hostname":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 131
    .end local v4    # "hostname":Ljava/lang/String;
    .restart local v2    # "bestHeight":J
    .restart local v9    # "rowHeight":Landroid/widget/TextView;
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 132
    :cond_3
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 136
    .restart local v13    # "rowVersion":Landroid/widget/TextView;
    :cond_4
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_3

    .line 140
    .restart local v12    # "rowProtocol":Landroid/widget/TextView;
    :cond_5
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_4

    .line 144
    .restart local v7    # "pingTime":J
    .restart local v11    # "rowPing":Landroid/widget/TextView;
    :cond_6
    const/4 v15, 0x0

    goto :goto_5

    .line 145
    :cond_7
    sget-object v15, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_6
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method
