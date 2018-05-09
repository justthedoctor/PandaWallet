.class public final Lorg/bitcoinj/wallet/Protos;
.super Ljava/lang/Object;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Wallet;,
        Lorg/bitcoinj/wallet/Protos$WalletOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Extension;,
        Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$ScryptParameters;,
        Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Transaction;,
        Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$TransactionConfidence;,
        Lorg/bitcoinj/wallet/Protos$TransactionConfidenceOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$TransactionOutput;,
        Lorg/bitcoinj/wallet/Protos$TransactionOutputOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$TransactionInput;,
        Lorg/bitcoinj/wallet/Protos$TransactionInputOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Script;,
        Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$Key;,
        Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;,
        Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;,
        Lorg/bitcoinj/wallet/Protos$PeerAddress;,
        Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_wallet_EncryptedPrivateKey_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_EncryptedPrivateKey_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_Extension_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Extension_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_Key_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Key_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_PeerAddress_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_PeerAddress_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_Script_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Script_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_ScryptParameters_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_ScryptParameters_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_TransactionConfidence_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_TransactionConfidence_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_TransactionInput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_TransactionInput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_TransactionOutput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_TransactionOutput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_Transaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Transaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_wallet_Wallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_wallet_Wallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 13796
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\rbitcoin.proto\u0012\u0006wallet\"A\n\u000bPeerAddress\u0012\u0012\n\nip_address\u0018\u0001 \u0002(\u000c\u0012\u000c\n\u0004port\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008services\u0018\u0003 \u0002(\u0004\"S\n\u0013EncryptedPrivateKey\u0012\u001d\n\u0015initialisation_vector\u0018\u0001 \u0002(\u000c\u0012\u001d\n\u0015encrypted_private_key\u0018\u0002 \u0002(\u000c\"\u00e5\u0001\n\u0003Key\u0012\u001e\n\u0004type\u0018\u0001 \u0002(\u000e2\u0010.wallet.Key.Type\u0012\u0013\n\u000bprivate_key\u0018\u0002 \u0001(\u000c\u0012:\n\u0015encrypted_private_key\u0018\u0006 \u0001(\u000b2\u001b.wallet.EncryptedPrivateKey\u0012\u0012\n\npublic_key\u0018\u0003 \u0001(\u000c\u0012\r\n\u0005label\u0018\u0004 \u0001(\t\u0012\u001a\n\u0012creation_timestamp\u0018\u0005 \u0001(\u0003\".\n\u0004Type\u0012\u000c\n\u0008ORIGINAL\u0010\u0001\u0012\u0018\n\u0014ENCRYPTED_SCRYP"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "T_AES\u0010\u0002\"5\n\u0006Script\u0012\u000f\n\u0007program\u0018\u0001 \u0002(\u000c\u0012\u001a\n\u0012creation_timestamp\u0018\u0002 \u0002(\u0003\"\u0083\u0001\n\u0010TransactionInput\u0012\"\n\u001atransaction_out_point_hash\u0018\u0001 \u0002(\u000c\u0012#\n\u001btransaction_out_point_index\u0018\u0002 \u0002(\r\u0012\u0014\n\u000cscript_bytes\u0018\u0003 \u0002(\u000c\u0012\u0010\n\u0008sequence\u0018\u0004 \u0001(\r\"\u007f\n\u0011TransactionOutput\u0012\r\n\u0005value\u0018\u0001 \u0002(\u0003\u0012\u0014\n\u000cscript_bytes\u0018\u0002 \u0002(\u000c\u0012!\n\u0019spent_by_transaction_hash\u0018\u0003 \u0001(\u000c\u0012\"\n\u001aspent_by_transaction_index\u0018\u0004 \u0001(\u0005\"\u009c\u0003\n\u0015TransactionConfidence\u00120\n\u0004type\u0018\u0001 \u0001(\u000e2\".wallet.TransactionConfidence.Typ"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "e\u0012\u001a\n\u0012appeared_at_height\u0018\u0002 \u0001(\u0005\u0012\u001e\n\u0016overriding_transaction\u0018\u0003 \u0001(\u000c\u0012\r\n\u0005depth\u0018\u0004 \u0001(\u0005\u0012\u0011\n\twork_done\u0018\u0005 \u0001(\u0003\u0012)\n\u000cbroadcast_by\u0018\u0006 \u0003(\u000b2\u0013.wallet.PeerAddress\u00124\n\u0006source\u0018\u0007 \u0001(\u000e2$.wallet.TransactionConfidence.Source\"O\n\u0004Type\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u000c\n\u0008BUILDING\u0010\u0001\u0012\u000b\n\u0007PENDING\u0010\u0002\u0012\u0015\n\u0011NOT_IN_BEST_CHAIN\u0010\u0003\u0012\u0008\n\u0004DEAD\u0010\u0004\"A\n\u0006Source\u0012\u0012\n\u000eSOURCE_UNKNOWN\u0010\u0000\u0012\u0012\n\u000eSOURCE_NETWORK\u0010\u0001\u0012\u000f\n\u000bSOURCE_SELF\u0010\u0002\"\u009e\u0004\n\u000bTransaction\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\u0005\u0012\u000c\n\u0004hash\u0018\u0002 \u0002(\u000c\u0012&\n\u0004pool\u0018\u0003 \u0001("

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u000e2\u0018.wallet.Transaction.Pool\u0012\u0011\n\tlock_time\u0018\u0004 \u0001(\r\u0012\u0012\n\nupdated_at\u0018\u0005 \u0001(\u0003\u00123\n\u0011transaction_input\u0018\u0006 \u0003(\u000b2\u0018.wallet.TransactionInput\u00125\n\u0012transaction_output\u0018\u0007 \u0003(\u000b2\u0019.wallet.TransactionOutput\u0012\u0012\n\nblock_hash\u0018\u0008 \u0003(\u000c\u0012 \n\u0018block_relativity_offsets\u0018\u000b \u0003(\u0005\u00121\n\nconfidence\u0018\t \u0001(\u000b2\u001d.wallet.TransactionConfidence\u00125\n\u0007purpose\u0018\n \u0001(\u000e2\u001b.wallet.Transaction.Purpose:\u0007UNKNOWN\"Y\n\u0004Pool\u0012\u000b\n\u0007UNSPENT\u0010\u0004\u0012\t\n\u0005SPENT\u0010\u0005\u0012\u000c\n\u0008INACTIVE\u0010\u0002\u0012\u0008\n\u0004DEAD\u0010\n\u0012\u000b\n\u0007PENDIN"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "G\u0010\u0010\u0012\u0014\n\u0010PENDING_INACTIVE\u0010\u0012\":\n\u0007Purpose\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0010\n\u000cUSER_PAYMENT\u0010\u0001\u0012\u0010\n\u000cKEY_ROTATION\u0010\u0002\"N\n\u0010ScryptParameters\u0012\u000c\n\u0004salt\u0018\u0001 \u0002(\u000c\u0012\u0010\n\u0001n\u0018\u0002 \u0001(\u0003:\u000516384\u0012\u000c\n\u0001r\u0018\u0003 \u0001(\u0005:\u00018\u0012\u000c\n\u0001p\u0018\u0004 \u0001(\u0005:\u00011\"8\n\tExtension\u0012\n\n\u0002id\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004data\u0018\u0002 \u0002(\u000c\u0012\u0011\n\tmandatory\u0018\u0003 \u0002(\u0008\"\u0093\u0004\n\u0006Wallet\u0012\u001a\n\u0012network_identifier\u0018\u0001 \u0002(\t\u0012\u001c\n\u0014last_seen_block_hash\u0018\u0002 \u0001(\u000c\u0012\u001e\n\u0016last_seen_block_height\u0018\u000c \u0001(\r\u0012!\n\u0019last_seen_block_time_secs\u0018\u000e \u0001(\u0003\u0012\u0018\n\u0003key\u0018\u0003 \u0003(\u000b2\u000b.wallet.Key\u0012(\n\u000btransaction"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u0018\u0004 \u0003(\u000b2\u0013.wallet.Transaction\u0012&\n\u000ewatched_script\u0018\u000f \u0003(\u000b2\u000e.wallet.Script\u0012C\n\u000fencryption_type\u0018\u0005 \u0001(\u000e2\u001d.wallet.Wallet.EncryptionType:\u000bUNENCRYPTED\u00127\n\u0015encryption_parameters\u0018\u0006 \u0001(\u000b2\u0018.wallet.ScryptParameters\u0012\u000f\n\u0007version\u0018\u0007 \u0001(\u0005\u0012$\n\textension\u0018\n \u0003(\u000b2\u0011.wallet.Extension\u0012\u0013\n\u000bdescription\u0018\u000b \u0001(\t\u0012\u0019\n\u0011key_rotation_time\u0018\r \u0001(\u0004\";\n\u000eEncryptionType\u0012\u000f\n\u000bUNENCRYPTED\u0010\u0001\u0012\u0018\n\u0014ENCRYPTED_SCRYPT_AES\u0010\u0002B\u001d\n\u0013org.bitcoinj.walletB\u0006Protos"

    aput-object v3, v1, v2

    .line 13858
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lorg/bitcoinj/wallet/Protos$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$1;-><init>()V

    .line 13932
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 13936
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_PeerAddress_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_PeerAddress_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_PeerAddress_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_PeerAddress_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$10600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ScryptParameters_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ScryptParameters_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$10700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ScryptParameters_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_ScryptParameters_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_EncryptedPrivateKey_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_EncryptedPrivateKey_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Extension_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Extension_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Extension_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Extension_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_EncryptedPrivateKey_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_EncryptedPrivateKey_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$12900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Wallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Wallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$13000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Wallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Wallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$15402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Key_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Key_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Key_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Key_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Script_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Script_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Script_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Script_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionInput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionInput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionInput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionInput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionOutput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionOutput_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionOutput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionOutput_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionConfidence_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionConfidence_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionConfidence_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_TransactionConfidence_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$8500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Transaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Transaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$8600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Transaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lorg/bitcoinj/wallet/Protos;->internal_static_wallet_Transaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 13791
    sget-object v0, Lorg/bitcoinj/wallet/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
