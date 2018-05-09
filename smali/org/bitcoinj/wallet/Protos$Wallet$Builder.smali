.class public final Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$WalletOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$WalletOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters;",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

.field private encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

.field private extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            "Lorg/bitcoinj/wallet/Protos$Extension$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation
.end field

.field private keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            "Lorg/bitcoinj/wallet/Protos$Key$Builder;",
            "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private keyRotationTime_:J

.field private key_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

.field private lastSeenBlockHeight_:I

.field private lastSeenBlockTimeSecs_:J

.field private networkIdentifier_:Ljava/lang/Object;

.field private transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private transaction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I

.field private watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            "Lorg/bitcoinj/wallet/Protos$Script$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private watchedScript_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11783
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 12170
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 12268
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 12402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 12642
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 12882
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 13122
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 13158
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 13328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 13568
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 11784
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->maybeForceBuilderInitialization()V

    .line 11785
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 11789
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 12170
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 12268
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 12402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 12642
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 12882
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 13122
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 13158
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 13328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 13568
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 11790
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->maybeForceBuilderInitialization()V

    .line 11791
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 11767
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$13200()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->create()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 11802
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;-><init>()V

    return-object v0
.end method

.method private ensureExtensionIsMutable()V
    .locals 2

    .prologue
    .line 13331
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 13332
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 13333
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13335
    :cond_0
    return-void
.end method

.method private ensureKeyIsMutable()V
    .locals 2

    .prologue
    .line 12405
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 12406
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 12407
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12409
    :cond_0
    return-void
.end method

.method private ensureTransactionIsMutable()V
    .locals 2

    .prologue
    .line 12645
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 12646
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 12647
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12649
    :cond_0
    return-void
.end method

.method private ensureWatchedScriptIsMutable()V
    .locals 2

    .prologue
    .line 12885
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 12886
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 12887
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12889
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11772
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$12900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionParametersFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters;",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13263
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13264
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 13269
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 13271
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            "Lorg/bitcoinj/wallet/Protos$Extension$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13555
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13556
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v3, 0x400

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 13562
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 13564
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 13556
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            "Lorg/bitcoinj/wallet/Protos$Key$Builder;",
            "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12629
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12630
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 12636
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 12638
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 12630
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;",
            "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12869
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12870
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 12876
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 12878
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 12870
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            "Lorg/bitcoinj/wallet/Protos$Script$Builder;",
            "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13109
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13110
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 13116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 13118
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 13110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 11793
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$13400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11794
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 11795
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 11796
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 11797
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getEncryptionParametersFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 11798
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 11800
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllExtension(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .prologue
    .line 13467
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/bitcoinj/wallet/Protos$Extension;>;"
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13468
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 13469
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13470
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13474
    :goto_0
    return-object p0

    .line 13472
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllKey(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .prologue
    .line 12541
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/bitcoinj/wallet/Protos$Key;>;"
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12542
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 12543
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12544
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12548
    :goto_0
    return-object p0

    .line 12546
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllTransaction(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .prologue
    .line 12781
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/bitcoinj/wallet/Protos$Transaction;>;"
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12782
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 12783
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 12784
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12788
    :goto_0
    return-object p0

    .line 12786
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllWatchedScript(Ljava/lang/Iterable;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;)",
            "Lorg/bitcoinj/wallet/Protos$Wallet$Builder;"
        }
    .end annotation

    .prologue
    .line 13021
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/bitcoinj/wallet/Protos$Script;>;"
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13022
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 13023
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13024
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13028
    :goto_0
    return-object p0

    .line 13026
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtension(ILorg/bitcoinj/wallet/Protos$Extension$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .prologue
    .line 13453
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13454
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 13455
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13456
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13460
    :goto_0
    return-object p0

    .line 13458
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtension(ILorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$Extension;

    .prologue
    .line 13422
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 13423
    if-nez p2, :cond_0

    .line 13424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13426
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 13427
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13428
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13432
    :goto_0
    return-object p0

    .line 13430
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtension(Lorg/bitcoinj/wallet/Protos$Extension$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .prologue
    .line 13439
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13440
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 13441
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13442
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13446
    :goto_0
    return-object p0

    .line 13444
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtension(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$Extension;

    .prologue
    .line 13405
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 13406
    if-nez p1, :cond_0

    .line 13407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13409
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 13410
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13411
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13415
    :goto_0
    return-object p0

    .line 13413
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addExtensionBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2

    .prologue
    .line 13534
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    return-object v0
.end method

.method public addExtensionBuilder(I)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 13542
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    return-object v0
.end method

.method public addKey(ILorg/bitcoinj/wallet/Protos$Key$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .prologue
    .line 12527
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12528
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 12529
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12530
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12534
    :goto_0
    return-object p0

    .line 12532
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addKey(ILorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$Key;

    .prologue
    .line 12496
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12497
    if-nez p2, :cond_0

    .line 12498
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12500
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 12501
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12502
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12506
    :goto_0
    return-object p0

    .line 12504
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addKey(Lorg/bitcoinj/wallet/Protos$Key$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .prologue
    .line 12513
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12514
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 12515
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12516
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12520
    :goto_0
    return-object p0

    .line 12518
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addKey(Lorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$Key;

    .prologue
    .line 12479
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12480
    if-nez p1, :cond_0

    .line 12481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12483
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 12484
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12485
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12489
    :goto_0
    return-object p0

    .line 12487
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addKeyBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2

    .prologue
    .line 12608
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    return-object v0
.end method

.method public addKeyBuilder(I)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 12616
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    return-object v0
.end method

.method public addTransaction(ILorg/bitcoinj/wallet/Protos$Transaction$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .prologue
    .line 12767
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12768
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 12769
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12770
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12774
    :goto_0
    return-object p0

    .line 12772
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransaction(ILorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$Transaction;

    .prologue
    .line 12736
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12737
    if-nez p2, :cond_0

    .line 12738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12740
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 12741
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12742
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12746
    :goto_0
    return-object p0

    .line 12744
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransaction(Lorg/bitcoinj/wallet/Protos$Transaction$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .prologue
    .line 12753
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12754
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 12755
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12756
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12760
    :goto_0
    return-object p0

    .line 12758
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransaction(Lorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$Transaction;

    .prologue
    .line 12719
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12720
    if-nez p1, :cond_0

    .line 12721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12723
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 12724
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12725
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12729
    :goto_0
    return-object p0

    .line 12727
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addTransactionBuilder()Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2

    .prologue
    .line 12848
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    return-object v0
.end method

.method public addTransactionBuilder(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 12856
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Transaction;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    return-object v0
.end method

.method public addWatchedScript(ILorg/bitcoinj/wallet/Protos$Script$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .prologue
    .line 13007
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13008
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 13009
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 13010
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13014
    :goto_0
    return-object p0

    .line 13012
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addWatchedScript(ILorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$Script;

    .prologue
    .line 12976
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12977
    if-nez p2, :cond_0

    .line 12978
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12980
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 12981
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12982
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12986
    :goto_0
    return-object p0

    .line 12984
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addWatchedScript(Lorg/bitcoinj/wallet/Protos$Script$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .prologue
    .line 12993
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12994
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 12995
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12996
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13000
    :goto_0
    return-object p0

    .line 12998
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addWatchedScript(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$Script;

    .prologue
    .line 12959
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12960
    if-nez p1, :cond_0

    .line 12961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12963
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 12964
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12965
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12969
    :goto_0
    return-object p0

    .line 12967
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addWatchedScriptBuilder()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .prologue
    .line 13088
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    return-object v0
.end method

.method public addWatchedScriptBuilder(I)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 13096
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->build()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->build()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 2

    .prologue
    .line 11870
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    .line 11871
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$Wallet;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11872
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 11874
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 5

    .prologue
    .line 11878
    new-instance v1, Lorg/bitcoinj/wallet/Protos$Wallet;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 11879
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$Wallet;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11880
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 11881
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 11882
    or-int/lit8 v2, v2, 0x1

    .line 11884
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$13602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11885
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 11886
    or-int/lit8 v2, v2, 0x2

    .line 11888
    :cond_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$13702(Lorg/bitcoinj/wallet/Protos$Wallet;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 11889
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 11890
    or-int/lit8 v2, v2, 0x4

    .line 11892
    :cond_2
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$13802(Lorg/bitcoinj/wallet/Protos$Wallet;I)I

    .line 11893
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 11894
    or-int/lit8 v2, v2, 0x8

    .line 11896
    :cond_3
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$13902(Lorg/bitcoinj/wallet/Protos$Wallet;J)J

    .line 11897
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_d

    .line 11898
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 11899
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 11900
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11902
    :cond_4
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14002(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    .line 11906
    :goto_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_e

    .line 11907
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 11908
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 11909
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11911
    :cond_5
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14102(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    .line 11915
    :goto_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_f

    .line 11916
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 11917
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 11918
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11920
    :cond_6
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14202(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    .line 11924
    :goto_2
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 11925
    or-int/lit8 v2, v2, 0x10

    .line 11927
    :cond_7
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14302(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 11928
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 11929
    or-int/lit8 v2, v2, 0x20

    .line 11931
    :cond_8
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_10

    .line 11932
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14402(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 11936
    :goto_3
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 11937
    or-int/lit8 v2, v2, 0x40

    .line 11939
    :cond_9
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14502(Lorg/bitcoinj/wallet/Protos$Wallet;I)I

    .line 11940
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_11

    .line 11941
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 11942
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 11943
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11945
    :cond_a
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    .line 11949
    :goto_4
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 11950
    or-int/lit16 v2, v2, 0x80

    .line 11952
    :cond_b
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14702(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11953
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 11954
    or-int/lit16 v2, v2, 0x100

    .line 11956
    :cond_c
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14802(Lorg/bitcoinj/wallet/Protos$Wallet;J)J

    .line 11957
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14902(Lorg/bitcoinj/wallet/Protos$Wallet;I)I

    .line 11958
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onBuilt()V

    .line 11959
    return-object v1

    .line 11904
    :cond_d
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14002(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    .line 11913
    :cond_e
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14102(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_1

    .line 11922
    :cond_f
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14202(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_2

    .line 11934
    :cond_10
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14402(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    goto :goto_3

    .line 11947
    :cond_11
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;

    goto :goto_4
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 11806
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 11807
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 11808
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11809
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 11810
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11811
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    .line 11812
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11813
    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    .line 11814
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11815
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 11816
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 11817
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11821
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 11822
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 11823
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11827
    :goto_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 11828
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 11829
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11833
    :goto_2
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 11834
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11835
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    .line 11836
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 11840
    :goto_3
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11841
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    .line 11842
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11843
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_4

    .line 11844
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 11845
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11849
    :goto_4
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 11850
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11851
    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    .line 11852
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11853
    return-object p0

    .line 11819
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0

    .line 11825
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1

    .line 11831
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_2

    .line 11838
    :cond_3
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_3

    .line 11847
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_4
.end method

.method public clearDescription()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 13642
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13643
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 13644
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13645
    return-object p0
.end method

.method public clearEncryptionParameters()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 13230
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13231
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 13232
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13236
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13237
    return-object p0

    .line 13234
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 13151
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13152
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 13153
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13154
    return-object p0
.end method

.method public clearExtension()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 13480
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13481
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 13482
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13483
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13487
    :goto_0
    return-object p0

    .line 13485
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearKey()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 12554
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12555
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 12556
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12557
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12561
    :goto_0
    return-object p0

    .line 12559
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearKeyRotationTime()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2

    .prologue
    .line 13716
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13717
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    .line 13718
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13719
    return-object p0
.end method

.method public clearLastSeenBlockHash()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 12313
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12314
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 12315
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12316
    return-object p0
.end method

.method public clearLastSeenBlockHeight()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 12362
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12363
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    .line 12364
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12365
    return-object p0
.end method

.method public clearLastSeenBlockTimeSecs()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2

    .prologue
    .line 12395
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12396
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    .line 12397
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12398
    return-object p0
.end method

.method public clearNetworkIdentifier()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 12244
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12245
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getNetworkIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 12246
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12247
    return-object p0
.end method

.method public clearTransaction()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 12794
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12795
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 12796
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12797
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12801
    :goto_0
    return-object p0

    .line 12799
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearVersion()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 13321
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13322
    const/4 v0, 0x0

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    .line 13323
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13324
    return-object p0
.end method

.method public clearWatchedScript()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 13034
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13035
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 13036
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13037
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13041
    :goto_0
    return-object p0

    .line 13039
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2

    .prologue
    .line 11857
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->create()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11767
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1

    .prologue
    .line 11866
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13587
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 13588
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 13589
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13591
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 13594
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 13606
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 13607
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13608
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13611
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 13614
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11862
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$12900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .prologue
    .line 13171
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13172
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 13174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    goto :goto_0
.end method

.method public getEncryptionParametersBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .prologue
    .line 13243
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13244
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13245
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getEncryptionParametersFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    return-object v0
.end method

.method public getEncryptionParametersOrBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;
    .locals 1

    .prologue
    .line 13251
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 13252
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;

    .line 13254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    goto :goto_0
.end method

.method public getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1

    .prologue
    .line 13133
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object v0
.end method

.method public getExtension(I)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 13364
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13365
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    .line 13367
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    goto :goto_0
.end method

.method public getExtensionBuilder(I)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 13507
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    return-object v0
.end method

.method public getExtensionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Extension$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13550
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 13354
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13355
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 13357
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13344
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13345
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13347
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtensionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 13514
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13515
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;

    .line 13516
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;

    goto :goto_0
.end method

.method public getExtensionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13524
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 13525
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 13527
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey(I)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12438
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12439
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    .line 12441
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    goto :goto_0
.end method

.method public getKeyBuilder(I)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12581
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    return-object v0
.end method

.method public getKeyBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Key$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12624
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 12428
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12429
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 12431
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12418
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12419
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12421
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyOrBuilder(I)Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12588
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12589
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;

    .line 12590
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;

    goto :goto_0
.end method

.method public getKeyOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12598
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 12599
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 12601
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getKeyRotationTime()J
    .locals 2

    .prologue
    .line 13689
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    return-wide v0
.end method

.method public getLastSeenBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 12287
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastSeenBlockHeight()I
    .locals 1

    .prologue
    .line 12339
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    return v0
.end method

.method public getLastSeenBlockTimeSecs()J
    .locals 2

    .prologue
    .line 12380
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    return-wide v0
.end method

.method public getNetworkIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 12189
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 12190
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 12191
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12193
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 12196
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getNetworkIdentifierBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 12208
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 12209
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 12210
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12213
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 12216
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getTransaction(I)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12678
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12679
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    .line 12681
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    goto :goto_0
.end method

.method public getTransactionBuilder(I)Lorg/bitcoinj/wallet/Protos$Transaction$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12821
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    return-object v0
.end method

.method public getTransactionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12864
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionCount()I
    .locals 1

    .prologue
    .line 12668
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12669
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 12671
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getTransactionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12658
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12659
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12661
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransactionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12828
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12829
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;

    .line 12830
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;

    goto :goto_0
.end method

.method public getTransactionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12838
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 12839
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 12841
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 13296
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    return v0
.end method

.method public getWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12918
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12919
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    .line 12921
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    goto :goto_0
.end method

.method public getWatchedScriptBuilder(I)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 13061
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    return-object v0
.end method

.method public getWatchedScriptBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Script$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13104
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWatchedScriptCount()I
    .locals 1

    .prologue
    .line 12908
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12909
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 12911
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getWatchedScriptList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Script;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12898
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12899
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12901
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getWatchedScriptOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 13068
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13069
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;

    .line 13070
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;

    goto :goto_0
.end method

.method public getWatchedScriptOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13078
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 13079
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 13081
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 13577
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEncryptionParameters()Z
    .locals 2

    .prologue
    .line 13165
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEncryptionType()Z
    .locals 2

    .prologue
    .line 13127
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyRotationTime()Z
    .locals 2

    .prologue
    .line 13677
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastSeenBlockHash()Z
    .locals 2

    .prologue
    .line 12277
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastSeenBlockHeight()Z
    .locals 2

    .prologue
    .line 12329
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLastSeenBlockTimeSecs()Z
    .locals 2

    .prologue
    .line 12374
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNetworkIdentifier()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12179
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 2

    .prologue
    .line 13285
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 11777
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$13000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Wallet;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 12113
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->hasNetworkIdentifier()Z

    move-result v2

    if-nez v2, :cond_1

    .line 12147
    :cond_0
    :goto_0
    return v1

    .line 12117
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 12118
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKey(I)Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Key;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12123
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 12124
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransaction(I)Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Transaction;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12129
    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 12130
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Script;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12129
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 12135
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->hasEncryptionParameters()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12136
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12141
    :cond_5
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 12142
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtension(I)Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Extension;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12141
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12147
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public mergeEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .prologue
    .line 13211
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13212
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13214
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 13219
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13223
    :goto_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13224
    return-object p0

    .line 13217
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    goto :goto_0

    .line 13221
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11767
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 11767
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11767
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11767
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 11767
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11767
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12154
    const/4 v2, 0x0

    .line 12156
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$Wallet;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12161
    if-eqz v2, :cond_0

    .line 12162
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 12165
    :cond_0
    return-object p0

    .line 12157
    :catch_0
    move-exception v1

    .line 12158
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    move-object v2, v0

    .line 12159
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12161
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 12162
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 11963
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Wallet;

    if-eqz v0, :cond_0

    .line 11964
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Wallet;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object p0

    .line 11967
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    :goto_0
    return-object p0

    .line 11966
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 4
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$Wallet;

    .prologue
    const/4 v1, 0x0

    .line 11972
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 12109
    :goto_0
    return-object p0

    .line 11973
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasNetworkIdentifier()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11974
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11975
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$13600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 11976
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 11978
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockHash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11979
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 11981
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockHeight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11982
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockHeight(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 11984
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasLastSeenBlockTimeSecs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11985
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getLastSeenBlockTimeSecs()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setLastSeenBlockTimeSecs(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 11987
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_f

    .line 11988
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 11989
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 11990
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 11991
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 11996
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12013
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_13

    .line 12014
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12015
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 12016
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 12017
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12022
    :goto_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12039
    :cond_6
    :goto_4
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_17

    .line 12040
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 12041
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 12042
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 12043
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12048
    :goto_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12065
    :cond_7
    :goto_6
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasEncryptionType()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12066
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setEncryptionType(Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 12068
    :cond_8
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasEncryptionParameters()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12069
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 12071
    :cond_9
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12072
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setVersion(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 12074
    :cond_a
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1b

    .line 12075
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 12076
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 12077
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 12078
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12083
    :goto_7
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12100
    :cond_b
    :goto_8
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 12101
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12102
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14700(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 12103
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12105
    :cond_c
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasKeyRotationTime()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12106
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKeyRotationTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->setKeyRotationTime(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    .line 12108
    :cond_d
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 11993
    :cond_e
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 11994
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 11999
    :cond_f
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12000
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 12001
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 12002
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 12003
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    .line 12004
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12005
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$15000()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getKeyFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_10
    move-object v0, v1

    goto :goto_9

    .line 12009
    :cond_11
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 12019
    :cond_12
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 12020
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 12025
    :cond_13
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12026
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 12027
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 12028
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 12029
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    .line 12030
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12031
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$15100()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getTransactionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    :cond_14
    move-object v0, v1

    goto :goto_a

    .line 12035
    :cond_15
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 12045
    :cond_16
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 12046
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 12051
    :cond_17
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 12052
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 12053
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 12054
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 12055
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    .line 12056
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12057
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$15200()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getWatchedScriptFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6

    :cond_18
    move-object v0, v1

    goto :goto_b

    .line 12061
    :cond_19
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6

    .line 12080
    :cond_1a
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 12081
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    .line 12086
    :cond_1b
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 12087
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 12088
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 12089
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 12090
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    .line 12091
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12092
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$15300()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->getExtensionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_1c
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_8

    .line 12096
    :cond_1d
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->access$14600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_8
.end method

.method public removeExtension(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 13493
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13494
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 13495
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13496
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13500
    :goto_0
    return-object p0

    .line 13498
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeKey(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12567
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12568
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 12569
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12570
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12574
    :goto_0
    return-object p0

    .line 12572
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeTransaction(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 12807
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12808
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 12809
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 12810
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12814
    :goto_0
    return-object p0

    .line 12812
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removeWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 13047
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13048
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 13049
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13050
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13054
    :goto_0
    return-object p0

    .line 13052
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 13626
    if-nez p1, :cond_0

    .line 13627
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13629
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13630
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 13631
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13632
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 13656
    if-nez p1, :cond_0

    .line 13657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13659
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13660
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->description_:Ljava/lang/Object;

    .line 13661
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13662
    return-object p0
.end method

.method public setEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .prologue
    .line 13198
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 13199
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 13200
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13204
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13205
    return-object p0

    .line 13202
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->build()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setEncryptionParameters(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .prologue
    .line 13181
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 13182
    if-nez p1, :cond_0

    .line 13183
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13185
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 13186
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13190
    :goto_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13191
    return-object p0

    .line 13188
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionParametersBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setEncryptionType(Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .prologue
    .line 13139
    if-nez p1, :cond_0

    .line 13140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13142
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13143
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 13144
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13145
    return-object p0
.end method

.method public setExtension(ILorg/bitcoinj/wallet/Protos$Extension$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .prologue
    .line 13392
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 13393
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 13394
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13395
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13399
    :goto_0
    return-object p0

    .line 13397
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setExtension(ILorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$Extension;

    .prologue
    .line 13375
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 13376
    if-nez p2, :cond_0

    .line 13377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13379
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureExtensionIsMutable()V

    .line 13380
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extension_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13381
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13385
    :goto_0
    return-object p0

    .line 13383
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->extensionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setKey(ILorg/bitcoinj/wallet/Protos$Key$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .prologue
    .line 12466
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12467
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 12468
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12469
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12473
    :goto_0
    return-object p0

    .line 12471
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setKey(ILorg/bitcoinj/wallet/Protos$Key;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$Key;

    .prologue
    .line 12449
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12450
    if-nez p2, :cond_0

    .line 12451
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12453
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureKeyIsMutable()V

    .line 12454
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->key_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12455
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12459
    :goto_0
    return-object p0

    .line 12457
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setKeyRotationTime(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 13701
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13702
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->keyRotationTime_:J

    .line 13703
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13704
    return-object p0
.end method

.method public setLastSeenBlockHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 12297
    if-nez p1, :cond_0

    .line 12298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12300
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12301
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 12302
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12303
    return-object p0
.end method

.method public setLastSeenBlockHeight(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 12349
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12350
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockHeight_:I

    .line 12351
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12352
    return-object p0
.end method

.method public setLastSeenBlockTimeSecs(J)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 12386
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12387
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->lastSeenBlockTimeSecs_:J

    .line 12388
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12389
    return-object p0
.end method

.method public setNetworkIdentifier(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12228
    if-nez p1, :cond_0

    .line 12229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12231
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12232
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 12233
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12234
    return-object p0
.end method

.method public setNetworkIdentifierBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 12258
    if-nez p1, :cond_0

    .line 12259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12261
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 12262
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->networkIdentifier_:Ljava/lang/Object;

    .line 12263
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12264
    return-object p0
.end method

.method public setTransaction(ILorg/bitcoinj/wallet/Protos$Transaction$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Transaction$Builder;

    .prologue
    .line 12706
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12707
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 12708
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12709
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12713
    :goto_0
    return-object p0

    .line 12711
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Transaction$Builder;->build()Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setTransaction(ILorg/bitcoinj/wallet/Protos$Transaction;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$Transaction;

    .prologue
    .line 12689
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12690
    if-nez p2, :cond_0

    .line 12691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12693
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureTransactionIsMutable()V

    .line 12694
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12695
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12699
    :goto_0
    return-object p0

    .line 12697
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->transactionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setVersion(I)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 13307
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->bitField0_:I

    .line 13308
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->version_:I

    .line 13309
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 13310
    return-object p0
.end method

.method public setWatchedScript(ILorg/bitcoinj/wallet/Protos$Script$Builder;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .prologue
    .line 12946
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 12947
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 12948
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12949
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12953
    :goto_0
    return-object p0

    .line 12951
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setWatchedScript(ILorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lorg/bitcoinj/wallet/Protos$Script;

    .prologue
    .line 12929
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 12930
    if-nez p2, :cond_0

    .line 12931
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12933
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->ensureWatchedScriptIsMutable()V

    .line 12934
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12935
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->onChanged()V

    .line 12939
    :goto_0
    return-object p0

    .line 12937
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->watchedScriptBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
