.class public final Lde/schildbach/wallet/ui/TransactionFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TransactionFragment.java"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field private static final SHOW_QR_THRESHOLD_BYTES:I = 0x9c4


# instance fields
.field private activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

.field private clipboardManager:Lde/schildbach/wallet/util/AbstractClipboardManager;

.field private dateFormat:Ljava/text/DateFormat;

.field private timeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lde/schildbach/wallet/ui/TransactionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/ui/TransactionFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/schildbach/wallet/ui/TransactionFragment;)Lde/schildbach/wallet/util/AbstractClipboardManager;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/TransactionFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionFragment;->clipboardManager:Lde/schildbach/wallet/util/AbstractClipboardManager;

    return-object v0
.end method

.method static synthetic access$100(Lde/schildbach/wallet/ui/TransactionFragment;)Lde/schildbach/wallet/ui/AbstractWalletActivity;
    .locals 1
    .param p0, "x0"    # Lde/schildbach/wallet/ui/TransactionFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lde/schildbach/wallet/ui/TransactionFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 73
    check-cast v0, Lde/schildbach/wallet/ui/AbstractWalletActivity;

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    .line 75
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionFragment;->dateFormat:Ljava/text/DateFormat;

    .line 76
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionFragment;->timeFormat:Ljava/text/DateFormat;

    .line 77
    new-instance v0, Lde/schildbach/wallet/util/AbstractClipboardManager;

    invoke-virtual {p0}, Lde/schildbach/wallet/ui/TransactionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/schildbach/wallet/util/AbstractClipboardManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lde/schildbach/wallet/ui/TransactionFragment;->clipboardManager:Lde/schildbach/wallet/util/AbstractClipboardManager;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const v0, 0x7f030032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/bitcoin/core/Transaction;)V
    .locals 43
    .param p1, "tx"    # Lcom/google/bitcoin/core/Transaction;

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/TransactionFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lde/schildbach/wallet/ui/AbstractWalletActivity;->getApplication()Landroid/app/Application;

    move-result-object v39

    check-cast v39, Lde/schildbach/wallet/WalletApplication;

    invoke-virtual/range {v39 .. v39}, Lde/schildbach/wallet/WalletApplication;->getWallet()Lcom/google/bitcoin/core/Wallet;

    move-result-object v37

    .line 90
    .local v37, "wallet":Lcom/google/bitcoin/core/Wallet;
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v16

    .line 92
    .local v16, "serializedTx":[B
    const/4 v10, 0x0

    .line 93
    .local v10, "from":Lcom/google/bitcoin/core/Address;
    const/4 v11, 0x0

    .line 96
    .local v11, "fromMine":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/google/bitcoin/core/TransactionInput;

    invoke-virtual/range {v39 .. v39}, Lcom/google/bitcoin/core/TransactionInput;->getFromAddress()Lcom/google/bitcoin/core/Address;

    move-result-object v10

    .line 97
    invoke-virtual {v10}, Lcom/google/bitcoin/core/Address;->getHash160()[B

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->isPubKeyHashMine([B)Z
    :try_end_0
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 104
    :goto_0
    const/16 v18, 0x0

    .line 105
    .local v18, "to":Lcom/google/bitcoin/core/Address;
    const/16 v19, 0x0

    .line 108
    .local v19, "toMine":Z
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v39

    const/16 v40, 0x0

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/google/bitcoin/core/TransactionOutput;

    invoke-virtual/range {v39 .. v39}, Lcom/google/bitcoin/core/TransactionOutput;->getScriptPubKey()Lcom/google/bitcoin/script/Script;

    move-result-object v39

    sget-object v40, Lde/schildbach/wallet/Constants;->NETWORK_PARAMETERS:Lcom/google/bitcoin/core/NetworkParameters;

    invoke-virtual/range {v39 .. v40}, Lcom/google/bitcoin/script/Script;->getToAddress(Lcom/google/bitcoin/core/NetworkParameters;)Lcom/google/bitcoin/core/Address;

    move-result-object v18

    .line 109
    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Address;->getHash160()[B

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Wallet;->isPubKeyHashMine([B)Z
    :try_end_1
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    .line 116
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lde/schildbach/wallet/ui/TransactionFragment;->getView()Landroid/view/View;

    move-result-object v23

    .line 118
    .local v23, "view":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getUpdateTime()Ljava/util/Date;

    move-result-object v17

    .line 119
    .local v17, "time":Ljava/util/Date;
    const v39, 0x7f06006e

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    if-eqz v17, :cond_5

    const/16 v39, 0x0

    :goto_2
    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    if-eqz v17, :cond_0

    .line 122
    const v39, 0x7f06006f

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 123
    .local v27, "viewDate":Landroid/widget/TextView;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v41

    invoke-static/range {v41 .. v42}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v39

    if-eqz v39, :cond_6

    const v39, 0x7f0b00fd

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/TransactionFragment;->getString(I)Ljava/lang/String;

    move-result-object v39

    :goto_3
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/TransactionFragment;->timeFormat:Ljava/text/DateFormat;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .end local v27    # "viewDate":Landroid/widget/TextView;
    :cond_0
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->getValueSentFromMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v5

    .line 130
    .local v5, "amountSent":Ljava/math/BigInteger;
    const v39, 0x7f060070

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v39

    if-eqz v39, :cond_7

    const/16 v39, 0x0

    :goto_4
    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v39

    if-eqz v39, :cond_1

    .line 133
    const v39, 0x7f060071

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 134
    .local v25, "viewAmountSent":Landroid/widget/TextView;
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "-\u2009"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x8

    const/16 v41, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-static {v5, v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lcom/google/bitcoin/core/ScriptException; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    .end local v5    # "amountSent":Ljava/math/BigInteger;
    .end local v25    # "viewAmountSent":Landroid/widget/TextView;
    :cond_1
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/bitcoin/core/Transaction;->getValueSentToMe(Lcom/google/bitcoin/core/Wallet;)Ljava/math/BigInteger;

    move-result-object v4

    .line 143
    .local v4, "amountReceived":Ljava/math/BigInteger;
    const v39, 0x7f060072

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v39

    if-eqz v39, :cond_8

    const/16 v39, 0x0

    :goto_6
    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v39

    if-eqz v39, :cond_2

    .line 146
    const v39, 0x7f060073

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 147
    .local v24, "viewAmountReceived":Landroid/widget/TextView;
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "+\u2009"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const/16 v40, 0x8

    const/16 v41, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-static {v4, v0, v1}, Lde/schildbach/wallet/util/GenericUtils;->formatValue(Ljava/math/BigInteger;II)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .end local v24    # "viewAmountReceived":Landroid/widget/TextView;
    :cond_2
    const v39, 0x7f060074

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 151
    .local v28, "viewFromButton":Landroid/view/View;
    const v39, 0x7f060075

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 152
    .local v29, "viewFromLabel":Landroid/widget/TextView;
    if-eqz v10, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/TransactionFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-object/from16 v39, v0

    invoke-virtual {v10}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 155
    .local v14, "label":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v7, "builder":Ljava/lang/StringBuilder;
    if-eqz v11, :cond_3

    .line 158
    const v39, 0x7f0b0080

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/TransactionFragment;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_3
    if-eqz v14, :cond_9

    .line 162
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :goto_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v10}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "addressStr":Ljava/lang/String;
    new-instance v39, Lde/schildbach/wallet/ui/TransactionFragment$1;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lde/schildbach/wallet/ui/TransactionFragment$1;-><init>(Lde/schildbach/wallet/ui/TransactionFragment;Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .end local v3    # "addressStr":Ljava/lang/String;
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v14    # "label":Ljava/lang/String;
    :goto_8
    const v39, 0x7f060076

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 187
    .local v35, "viewToButton":Landroid/view/View;
    const v39, 0x7f060077

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 188
    .local v36, "viewToLabel":Landroid/widget/TextView;
    if-eqz v18, :cond_c

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/TransactionFragment;->activity:Lde/schildbach/wallet/ui/AbstractWalletActivity;

    move-object/from16 v39, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lde/schildbach/wallet/AddressBookProvider;->resolveLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 191
    .restart local v14    # "label":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    if-eqz v19, :cond_4

    .line 194
    const v39, 0x7f0b0080

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lde/schildbach/wallet/ui/TransactionFragment;->getString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_4
    if-eqz v14, :cond_b

    .line 198
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :goto_9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    .restart local v3    # "addressStr":Ljava/lang/String;
    new-instance v39, Lde/schildbach/wallet/ui/TransactionFragment$2;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lde/schildbach/wallet/ui/TransactionFragment$2;-><init>(Lde/schildbach/wallet/ui/TransactionFragment;Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .end local v3    # "addressStr":Ljava/lang/String;
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v14    # "label":Ljava/lang/String;
    :goto_a
    const v39, 0x7f060078

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 223
    .local v34, "viewStatus":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getConfidence()Lcom/google/bitcoin/core/TransactionConfidence;

    move-result-object v8

    .line 224
    .local v8, "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    invoke-virtual {v8}, Lcom/google/bitcoin/core/TransactionConfidence;->getConfidenceType()Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-result-object v9

    .line 225
    .local v9, "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    sget-object v39, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->DEAD:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v39

    if-ne v9, v0, :cond_d

    .line 226
    const v39, 0x7f0b0085

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    :goto_b
    const v39, 0x7f060079

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 235
    .local v26, "viewConfirmations":Landroid/widget/TextView;
    invoke-virtual {v8}, Lcom/google/bitcoin/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const v39, 0x7f06007b

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 238
    .local v30, "viewHash":Landroid/widget/TextView;
    const v39, 0x7f06007a

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .line 239
    .local v31, "viewHashButton":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/google/bitcoin/core/Transaction;->getHash()Lcom/google/bitcoin/core/Sha256Hash;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/google/bitcoin/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v20

    .line 240
    .local v20, "txHashString":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v39, Lde/schildbach/wallet/ui/TransactionFragment$3;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lde/schildbach/wallet/ui/TransactionFragment$3;-><init>(Lde/schildbach/wallet/ui/TransactionFragment;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v39, 0x7f06007c

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 251
    .local v32, "viewLength":Landroid/widget/TextView;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v39, 0x7f06007d

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    .line 254
    .local v33, "viewQr":Landroid/widget/ImageView;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x9c4

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_13

    .line 256
    const/16 v39, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    :try_start_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 262
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v12, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 263
    .local v12, "gos":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 264
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 266
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 267
    .local v13, "gzippedSerializedTx":[B
    array-length v0, v13

    move/from16 v39, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_10

    const/16 v22, 0x1

    .line 269
    .local v22, "useCompressioon":Z
    :goto_c
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v39, "ltctx:"

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .local v21, "txStr":Ljava/lang/StringBuilder;
    if-eqz v22, :cond_11

    const/16 v39, 0x5a

    :goto_d
    move-object/from16 v0, v21

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    if-eqz v22, :cond_12

    .end local v13    # "gzippedSerializedTx":[B
    :goto_e
    invoke-static {v13}, Lde/schildbach/wallet/util/Base43;->encode([B)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    sget-object v40, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v39

    const/16 v40, 0x200

    invoke-static/range {v39 .. v40}, Lde/schildbach/wallet/util/Qr;->bitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 273
    .local v15, "qrCodeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    new-instance v39, Lde/schildbach/wallet/ui/TransactionFragment$4;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lde/schildbach/wallet/ui/TransactionFragment$4;-><init>(Lde/schildbach/wallet/ui/TransactionFragment;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 291
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "qrCodeBitmap":Landroid/graphics/Bitmap;
    .end local v21    # "txStr":Ljava/lang/StringBuilder;
    .end local v22    # "useCompressioon":Z
    :goto_f
    return-void

    .line 99
    .end local v4    # "amountReceived":Ljava/math/BigInteger;
    .end local v8    # "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    .end local v9    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    .end local v17    # "time":Ljava/util/Date;
    .end local v18    # "to":Lcom/google/bitcoin/core/Address;
    .end local v19    # "toMine":Z
    .end local v20    # "txHashString":Ljava/lang/String;
    .end local v23    # "view":Landroid/view/View;
    .end local v26    # "viewConfirmations":Landroid/widget/TextView;
    .end local v28    # "viewFromButton":Landroid/view/View;
    .end local v29    # "viewFromLabel":Landroid/widget/TextView;
    .end local v30    # "viewHash":Landroid/widget/TextView;
    .end local v31    # "viewHashButton":Landroid/view/View;
    .end local v32    # "viewLength":Landroid/widget/TextView;
    .end local v33    # "viewQr":Landroid/widget/ImageView;
    .end local v34    # "viewStatus":Landroid/widget/TextView;
    .end local v35    # "viewToButton":Landroid/view/View;
    .end local v36    # "viewToLabel":Landroid/widget/TextView;
    :catch_0
    move-exception v38

    .line 101
    .local v38, "x":Lcom/google/bitcoin/core/ScriptException;
    invoke-virtual/range {v38 .. v38}, Lcom/google/bitcoin/core/ScriptException;->printStackTrace()V

    goto/16 :goto_0

    .line 111
    .end local v38    # "x":Lcom/google/bitcoin/core/ScriptException;
    .restart local v18    # "to":Lcom/google/bitcoin/core/Address;
    .restart local v19    # "toMine":Z
    :catch_1
    move-exception v38

    .line 113
    .restart local v38    # "x":Lcom/google/bitcoin/core/ScriptException;
    invoke-virtual/range {v38 .. v38}, Lcom/google/bitcoin/core/ScriptException;->printStackTrace()V

    goto/16 :goto_1

    .line 119
    .end local v38    # "x":Lcom/google/bitcoin/core/ScriptException;
    .restart local v17    # "time":Ljava/util/Date;
    .restart local v23    # "view":Landroid/view/View;
    :cond_5
    const/16 v39, 0x8

    goto/16 :goto_2

    .line 123
    .restart local v27    # "viewDate":Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/schildbach/wallet/ui/TransactionFragment;->dateFormat:Ljava/text/DateFormat;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_3

    .line 130
    .end local v27    # "viewDate":Landroid/widget/TextView;
    .restart local v5    # "amountSent":Ljava/math/BigInteger;
    :cond_7
    const/16 v39, 0x8

    goto/16 :goto_4

    .line 137
    .end local v5    # "amountSent":Ljava/math/BigInteger;
    :catch_2
    move-exception v38

    .line 139
    .restart local v38    # "x":Lcom/google/bitcoin/core/ScriptException;
    invoke-virtual/range {v38 .. v38}, Lcom/google/bitcoin/core/ScriptException;->printStackTrace()V

    goto/16 :goto_5

    .line 143
    .end local v38    # "x":Lcom/google/bitcoin/core/ScriptException;
    .restart local v4    # "amountReceived":Ljava/math/BigInteger;
    :cond_8
    const/16 v39, 0x8

    goto/16 :goto_6

    .line 166
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    .restart local v14    # "label":Ljava/lang/String;
    .restart local v28    # "viewFromButton":Landroid/view/View;
    .restart local v29    # "viewFromLabel":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {v10}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-object v39, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_7

    .line 183
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v14    # "label":Ljava/lang/String;
    :cond_a
    const/16 v39, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 202
    .restart local v7    # "builder":Ljava/lang/StringBuilder;
    .restart local v14    # "label":Ljava/lang/String;
    .restart local v35    # "viewToButton":Landroid/view/View;
    .restart local v36    # "viewToLabel":Landroid/widget/TextView;
    :cond_b
    invoke-virtual/range {v18 .. v18}, Lcom/google/bitcoin/core/Address;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    sget-object v39, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_9

    .line 219
    .end local v7    # "builder":Ljava/lang/StringBuilder;
    .end local v14    # "label":Ljava/lang/String;
    :cond_c
    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 227
    .restart local v8    # "confidence":Lcom/google/bitcoin/core/TransactionConfidence;
    .restart local v9    # "confidenceType":Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;
    .restart local v34    # "viewStatus":Landroid/widget/TextView;
    :cond_d
    sget-object v39, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->PENDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v39

    if-ne v9, v0, :cond_e

    .line 228
    const v39, 0x7f0b0083

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 229
    :cond_e
    sget-object v39, Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;->BUILDING:Lcom/google/bitcoin/core/TransactionConfidence$ConfidenceType;

    move-object/from16 v0, v39

    if-ne v9, v0, :cond_f

    .line 230
    const v39, 0x7f0b0084

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 232
    :cond_f
    const v39, 0x7f0b0082

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 267
    .restart local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gzippedSerializedTx":[B
    .restart local v20    # "txHashString":Ljava/lang/String;
    .restart local v26    # "viewConfirmations":Landroid/widget/TextView;
    .restart local v30    # "viewHash":Landroid/widget/TextView;
    .restart local v31    # "viewHashButton":Landroid/view/View;
    .restart local v32    # "viewLength":Landroid/widget/TextView;
    .restart local v33    # "viewQr":Landroid/widget/ImageView;
    :cond_10
    const/16 v22, 0x0

    goto/16 :goto_c

    .line 270
    .restart local v21    # "txStr":Ljava/lang/StringBuilder;
    .restart local v22    # "useCompressioon":Z
    :cond_11
    const/16 v39, 0x2d

    goto/16 :goto_d

    :cond_12
    move-object/from16 v13, v16

    .line 271
    goto/16 :goto_e

    .line 282
    .end local v6    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v13    # "gzippedSerializedTx":[B
    .end local v21    # "txStr":Ljava/lang/StringBuilder;
    .end local v22    # "useCompressioon":Z
    :catch_3
    move-exception v38

    .line 284
    .local v38, "x":Ljava/io/IOException;
    new-instance v39, Ljava/lang/RuntimeException;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v39

    .line 289
    .end local v38    # "x":Ljava/io/IOException;
    :cond_13
    const/16 v39, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f
.end method
