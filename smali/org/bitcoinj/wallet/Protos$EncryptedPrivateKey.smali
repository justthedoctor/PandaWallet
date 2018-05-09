.class public final Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptedPrivateKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    }
.end annotation


# static fields
.field public static final ENCRYPTED_PRIVATE_KEY_FIELD_NUMBER:I = 0x2

.field public static final INITIALISATION_VECTOR_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

.field private initialisationVector_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 725
    new-instance v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 1162
    new-instance v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->defaultInstance:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .line 1163
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->defaultInstance:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->initFields()V

    .line 1164
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 671
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 793
    iput-byte v5, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedIsInitialized:B

    .line 822
    iput v5, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedSerializedSize:I

    .line 672
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->initFields()V

    .line 673
    const/4 v2, 0x0

    .line 674
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 677
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 678
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 679
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 680
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 685
    invoke-virtual {p0, p1, v4, p2, v3}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 687
    const/4 v0, 0x1

    goto :goto_0

    .line 682
    :sswitch_0
    const/4 v0, 0x1

    .line 683
    goto :goto_0

    .line 692
    :sswitch_1
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    .line 693
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->initialisationVector_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 703
    .end local v3    # "tag":I
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 710
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->makeExtensionsImmutable()V

    throw v5

    .line 697
    .restart local v3    # "tag":I
    :sswitch_2
    :try_start_2
    iget v5, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    .line 698
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 705
    .end local v3    # "tag":I
    :catch_1
    move-exception v1

    .line 706
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 709
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 710
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->makeExtensionsImmutable()V

    .line 712
    return-void

    .line 680
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lorg/bitcoinj/wallet/Protos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessage$Builder;, "Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 648
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 793
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedIsInitialized:B

    .line 822
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedSerializedSize:I

    .line 649
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 650
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 651
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 793
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedIsInitialized:B

    .line 822
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedSerializedSize:I

    .line 651
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 643
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 643
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->initialisationVector_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1902(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 643
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2002(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .param p1, "x1"    # I

    .prologue
    .line 643
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->defaultInstance:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 715
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 790
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 791
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 792
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1

    .prologue
    .line 901
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->access$1400()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    .prologue
    .line 904
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->newBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 851
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 857
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 861
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 867
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;
    .locals 1

    .prologue
    .line 659
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->defaultInstance:Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    return-object v0
.end method

.method public getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getInitialisationVector()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->initialisationVector_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 824
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedSerializedSize:I

    .line 825
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 838
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 827
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 828
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 829
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->initialisationVector_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 832
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 833
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 836
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 837
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedSerializedSize:I

    move v1, v0

    .line 838
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasEncryptedPrivateKey()Z
    .locals 2

    .prologue
    .line 776
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

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

.method public hasInitialisationVector()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 752
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 720
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;

    const-class v2, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 795
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedIsInitialized:B

    .line 796
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 807
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 796
    goto :goto_0

    .line 798
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->hasInitialisationVector()Z

    move-result v3

    if-nez v3, :cond_2

    .line 799
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedIsInitialized:B

    move v1, v2

    .line 800
    goto :goto_0

    .line 802
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->hasEncryptedPrivateKey()Z

    move-result v3

    if-nez v3, :cond_3

    .line 803
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedIsInitialized:B

    move v1, v2

    .line 804
    goto :goto_0

    .line 806
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1

    .prologue
    .line 902
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->newBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 911
    new-instance v0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 912
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->toBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->toBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;
    .locals 1

    .prologue
    .line 906
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->newBuilder(Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;)Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 845
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 812
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getSerializedSize()I

    .line 813
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 814
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->initialisationVector_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 816
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 817
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 819
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedPrivateKey;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 820
    return-void
.end method
