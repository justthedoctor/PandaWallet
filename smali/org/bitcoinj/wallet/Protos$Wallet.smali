.class public final Lorg/bitcoinj/wallet/Protos$Wallet;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$WalletOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wallet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Wallet$Builder;,
        Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0xb

.field public static final ENCRYPTION_PARAMETERS_FIELD_NUMBER:I = 0x6

.field public static final ENCRYPTION_TYPE_FIELD_NUMBER:I = 0x5

.field public static final EXTENSION_FIELD_NUMBER:I = 0xa

.field public static final KEY_FIELD_NUMBER:I = 0x3

.field public static final KEY_ROTATION_TIME_FIELD_NUMBER:I = 0xd

.field public static final LAST_SEEN_BLOCK_HASH_FIELD_NUMBER:I = 0x2

.field public static final LAST_SEEN_BLOCK_HEIGHT_FIELD_NUMBER:I = 0xc

.field public static final LAST_SEEN_BLOCK_TIME_SECS_FIELD_NUMBER:I = 0xe

.field public static final NETWORK_IDENTIFIER_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Wallet;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x7

.field public static final WATCHED_SCRIPT_FIELD_NUMBER:I = 0xf

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Wallet;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

.field private encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private networkIdentifier_:Ljava/lang/Object;

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

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private version_:I

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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10988
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Wallet$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 13726
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Wallet;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Wallet;

    .line 13727
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Wallet;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->initFields()V

    .line 13728
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10841
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 11536
    const/4 v8, -0x1

    iput-byte v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    .line 11624
    const/4 v8, -0x1

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    .line 10842
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->initFields()V

    .line 10843
    const/4 v2, 0x0

    .line 10844
    .local v2, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 10847
    .local v6, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 10848
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_c

    .line 10849
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 10850
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 10855
    invoke-virtual {p0, p1, v6, p2, v5}, Lorg/bitcoinj/wallet/Protos$Wallet;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 10857
    const/4 v0, 0x1

    goto :goto_0

    .line 10852
    :sswitch_0
    const/4 v0, 0x1

    .line 10853
    goto :goto_0

    .line 10862
    :sswitch_1
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 10863
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10954
    .end local v5    # "tag":I
    :catch_0
    move-exception v1

    .line 10955
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10960
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v2, 0x10

    const/16 v10, 0x10

    if-ne v9, v10, :cond_1

    .line 10961
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    .line 10963
    :cond_1
    and-int/lit8 v9, v2, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_2

    .line 10964
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    .line 10966
    :cond_2
    and-int/lit16 v9, v2, 0x400

    const/16 v10, 0x400

    if-ne v9, v10, :cond_3

    .line 10967
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    .line 10969
    :cond_3
    and-int/lit8 v9, v2, 0x40

    const/16 v10, 0x40

    if-ne v9, v10, :cond_4

    .line 10970
    iget-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    .line 10972
    :cond_4
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 10973
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->makeExtensionsImmutable()V

    throw v8

    .line 10867
    .restart local v5    # "tag":I
    :sswitch_2
    :try_start_2
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 10868
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 10956
    .end local v5    # "tag":I
    :catch_1
    move-exception v1

    .line 10957
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10872
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "tag":I
    :sswitch_3
    and-int/lit8 v8, v2, 0x10

    const/16 v9, 0x10

    if-eq v8, v9, :cond_5

    .line 10873
    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    .line 10874
    or-int/lit8 v2, v2, 0x10

    .line 10876
    :cond_5
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    sget-object v9, Lorg/bitcoinj/wallet/Protos$Key;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 10880
    :sswitch_4
    and-int/lit8 v8, v2, 0x20

    const/16 v9, 0x20

    if-eq v8, v9, :cond_6

    .line 10881
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    .line 10882
    or-int/lit8 v2, v2, 0x20

    .line 10884
    :cond_6
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    sget-object v9, Lorg/bitcoinj/wallet/Protos$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 10888
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 10889
    .local v3, "rawValue":I
    invoke-static {v3}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->valueOf(I)Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v7

    .line 10890
    .local v7, "value":Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    if-nez v7, :cond_7

    .line 10891
    const/4 v8, 0x5

    invoke-virtual {v6, v8, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 10893
    :cond_7
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 10894
    iput-object v7, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    goto/16 :goto_0

    .line 10899
    .end local v3    # "rawValue":I
    .end local v7    # "value":Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    :sswitch_6
    const/4 v4, 0x0

    .line 10900
    .local v4, "subBuilder":Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v8, v8, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_8

    .line 10901
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v8}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->toBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v4

    .line 10903
    :cond_8
    sget-object v8, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 10904
    if-eqz v4, :cond_9

    .line 10905
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {v4, v8}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 10906
    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 10908
    :cond_9
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    goto/16 :goto_0

    .line 10912
    .end local v4    # "subBuilder":Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    :sswitch_7
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 10913
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    goto/16 :goto_0

    .line 10917
    :sswitch_8
    and-int/lit16 v8, v2, 0x400

    const/16 v9, 0x400

    if-eq v8, v9, :cond_a

    .line 10918
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    .line 10919
    or-int/lit16 v2, v2, 0x400

    .line 10921
    :cond_a
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    sget-object v9, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 10925
    :sswitch_9
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 10926
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 10930
    :sswitch_a
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 10931
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v8

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    goto/16 :goto_0

    .line 10935
    :sswitch_b
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 10936
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    goto/16 :goto_0

    .line 10940
    :sswitch_c
    iget v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    .line 10941
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    goto/16 :goto_0

    .line 10945
    :sswitch_d
    and-int/lit8 v8, v2, 0x40

    const/16 v9, 0x40

    if-eq v8, v9, :cond_b

    .line 10946
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    .line 10947
    or-int/lit8 v2, v2, 0x40

    .line 10949
    :cond_b
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    sget-object v9, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 10960
    .end local v5    # "tag":I
    :cond_c
    and-int/lit8 v8, v2, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_d

    .line 10961
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    .line 10963
    :cond_d
    and-int/lit8 v8, v2, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_e

    .line 10964
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    .line 10966
    :cond_e
    and-int/lit16 v8, v2, 0x400

    const/16 v9, 0x400

    if-ne v8, v9, :cond_f

    .line 10967
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    .line 10969
    :cond_f
    and-int/lit8 v8, v2, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_10

    .line 10970
    iget-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    .line 10972
    :cond_10
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 10973
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->makeExtensionsImmutable()V

    .line 10975
    return-void

    .line 10850
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x52 -> :sswitch_8
        0x5a -> :sswitch_9
        0x60 -> :sswitch_a
        0x68 -> :sswitch_b
        0x70 -> :sswitch_c
        0x7a -> :sswitch_d
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
    .line 10813
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Wallet;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 10818
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 11536
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    .line 11624
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    .line 10819
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 10820
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$Builder;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 10813
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 10821
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 11536
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    .line 11624
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    .line 10821
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$13400()Z
    .locals 1

    .prologue
    .line 10813
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;

    .prologue
    .line 10813
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 10813
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13702(Lorg/bitcoinj/wallet/Protos$Wallet;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 10813
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$13802(Lorg/bitcoinj/wallet/Protos$Wallet;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # I

    .prologue
    .line 10813
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    return p1
.end method

.method static synthetic access$13902(Lorg/bitcoinj/wallet/Protos$Wallet;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # J

    .prologue
    .line 10813
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    return-wide p1
.end method

.method static synthetic access$14000(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;

    .prologue
    .line 10813
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14002(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 10813
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14100(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;

    .prologue
    .line 10813
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14102(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 10813
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14200(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;

    .prologue
    .line 10813
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14202(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 10813
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14302(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;)Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .prologue
    .line 10813
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object p1
.end method

.method static synthetic access$14402(Lorg/bitcoinj/wallet/Protos$Wallet;Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .prologue
    .line 10813
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p1
.end method

.method static synthetic access$14502(Lorg/bitcoinj/wallet/Protos$Wallet;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # I

    .prologue
    .line 10813
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    return p1
.end method

.method static synthetic access$14600(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;

    .prologue
    .line 10813
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14602(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 10813
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14700(Lorg/bitcoinj/wallet/Protos$Wallet;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;

    .prologue
    .line 10813
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14702(Lorg/bitcoinj/wallet/Protos$Wallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 10813
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14802(Lorg/bitcoinj/wallet/Protos$Wallet;J)J
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # J

    .prologue
    .line 10813
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    return-wide p1
.end method

.method static synthetic access$14902(Lorg/bitcoinj/wallet/Protos$Wallet;I)I
    .locals 0
    .param p0, "x0"    # Lorg/bitcoinj/wallet/Protos$Wallet;
    .param p1, "x1"    # I

    .prologue
    .line 10813
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    return p1
.end method

.method static synthetic access$15000()Z
    .locals 1

    .prologue
    .line 10813
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15100()Z
    .locals 1

    .prologue
    .line 10813
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15200()Z
    .locals 1

    .prologue
    .line 10813
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15300()Z
    .locals 1

    .prologue
    .line 10813
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Wallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1

    .prologue
    .line 10825
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 10978
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$12900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 11522
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    .line 11523
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    .line 11524
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    .line 11525
    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    .line 11526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    .line 11527
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    .line 11528
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    .line 11529
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    .line 11530
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 11531
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    .line 11532
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    .line 11533
    const-string v0, ""

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    .line 11534
    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    .line 11535
    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 11747
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->access$13200()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1
    .param p0, "prototype"    # Lorg/bitcoinj/wallet/Protos$Wallet;

    .prologue
    .line 11750
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11727
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11733
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11697
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11703
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11738
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11744
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11717
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11723
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11707
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11713
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 10813
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10813
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Wallet;
    .locals 1

    .prologue
    .line 10829
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Wallet;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 11459
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    .line 11460
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 11461
    check-cast v1, Ljava/lang/String;

    .line 11469
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 11463
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11465
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11466
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11467
    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11469
    goto :goto_0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 11481
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    .line 11482
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11483
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11486
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->description_:Ljava/lang/Object;

    .line 11489
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

.method public getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .prologue
    .line 11367
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getEncryptionParametersOrBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;
    .locals 1

    .prologue
    .line 11373
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 1

    .prologue
    .line 11351
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    return-object v0
.end method

.method public getExtension(I)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 11428
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .prologue
    .line 11422
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .line 11409
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getExtensionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 11435
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;

    return-object v0
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
    .line 11416
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Lorg/bitcoinj/wallet/Protos$Key;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 11256
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    return-object v0
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 11250
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .line 11237
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    return-object v0
.end method

.method public getKeyOrBuilder(I)Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 11263
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$KeyOrBuilder;

    return-object v0
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
    .line 11244
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    return-object v0
.end method

.method public getKeyRotationTime()J
    .locals 2

    .prologue
    .line 11518
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    return-wide v0
.end method

.method public getLastSeenBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 11187
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLastSeenBlockHeight()I
    .locals 1

    .prologue
    .line 11211
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    return v0
.end method

.method public getLastSeenBlockTimeSecs()J
    .locals 2

    .prologue
    .line 11227
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    return-wide v0
.end method

.method public getNetworkIdentifier()Ljava/lang/String;
    .locals 4

    .prologue
    .line 11132
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    .line 11133
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 11134
    check-cast v1, Ljava/lang/String;

    .line 11142
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 11136
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11138
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11139
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11140
    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11142
    goto :goto_0
.end method

.method public getNetworkIdentifierBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 11154
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    .line 11155
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11156
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11159
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->networkIdentifier_:Ljava/lang/Object;

    .line 11162
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/bitcoinj/wallet/Protos$Wallet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11000
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11626
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    .line 11627
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 11684
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 11629
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 11630
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 11631
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getNetworkIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11634
    :cond_1
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 11635
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11638
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 11639
    const/4 v4, 0x3

    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11638
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11642
    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 11643
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11642
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11646
    :cond_4
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 11647
    const/4 v3, 0x5

    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 11650
    :cond_5
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 11651
    const/4 v3, 0x6

    iget-object v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11654
    :cond_6
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 11655
    const/4 v3, 0x7

    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 11658
    :cond_7
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 11659
    const/16 v4, 0xa

    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11658
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 11662
    :cond_8
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_9

    .line 11663
    const/16 v3, 0xb

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11666
    :cond_9
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_a

    .line 11667
    const/16 v3, 0xc

    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 11670
    :cond_a
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_b

    .line 11671
    const/16 v3, 0xd

    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 11674
    :cond_b
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_c

    .line 11675
    const/16 v3, 0xe

    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 11678
    :cond_c
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 11679
    const/16 v4, 0xf

    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 11678
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 11682
    :cond_d
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 11683
    iput v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedSerializedSize:I

    move v2, v1

    .line 11684
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0
.end method

.method public getTransaction(I)Lorg/bitcoinj/wallet/Protos$Transaction;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 11292
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Transaction;

    return-object v0
.end method

.method public getTransactionCount()I
    .locals 1

    .prologue
    .line 11286
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .line 11273
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    return-object v0
.end method

.method public getTransactionOrBuilder(I)Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 11299
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$TransactionOrBuilder;

    return-object v0
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
    .line 11280
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 10836
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 11399
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    return v0
.end method

.method public getWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 11328
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    return-object v0
.end method

.method public getWatchedScriptCount()I
    .locals 1

    .prologue
    .line 11322
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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
    .line 11309
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    return-object v0
.end method

.method public getWatchedScriptOrBuilder(I)Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 11335
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;

    return-object v0
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
    .line 11316
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 2

    .prologue
    .line 11449
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method public hasEncryptionParameters()Z
    .locals 2

    .prologue
    .line 11361
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 11345
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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
    .line 11506
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

.method public hasLastSeenBlockHash()Z
    .locals 2

    .prologue
    .line 11177
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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
    .line 11201
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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
    .line 11221
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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

    .line 11122
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

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
    .line 11388
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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
    .line 10983
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$13000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Wallet;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11538
    iget-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    .line 11539
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    :goto_0
    move v3, v2

    .line 11576
    :goto_1
    return v3

    :cond_0
    move v2, v3

    .line 11539
    goto :goto_0

    .line 11541
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasNetworkIdentifier()Z

    move-result v4

    if-nez v4, :cond_2

    .line 11542
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    goto :goto_1

    .line 11545
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKeyCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 11546
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getKey(I)Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$Key;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 11547
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    goto :goto_1

    .line 11545
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11551
    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransactionCount()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 11552
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getTransaction(I)Lorg/bitcoinj/wallet/Protos$Transaction;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$Transaction;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_5

    .line 11553
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    goto :goto_1

    .line 11551
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 11557
    :cond_6
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getWatchedScriptCount()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 11558
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getWatchedScript(I)Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$Script;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_7

    .line 11559
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    goto :goto_1

    .line 11557
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 11563
    :cond_8
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->hasEncryptionParameters()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 11564
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getEncryptionParameters()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_9

    .line 11565
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    goto :goto_1

    .line 11569
    :cond_9
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getExtensionCount()I

    move-result v4

    if-ge v0, v4, :cond_b

    .line 11570
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getExtension(I)Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Protos$Extension;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_a

    .line 11571
    iput-byte v3, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    goto :goto_1

    .line 11569
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 11575
    :cond_b
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->memoizedIsInitialized:B

    move v3, v2

    .line 11576
    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10813
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 10813
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10813
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 11748
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 11757
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Wallet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 11758
    .local v0, "builder":Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 10813
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->toBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10813
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->toBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Wallet$Builder;
    .locals 1

    .prologue
    .line 11752
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->newBuilder(Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Protos$Wallet$Builder;

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
    .line 11691
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11581
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getSerializedSize()I

    .line 11582
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 11583
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getNetworkIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11585
    :cond_0
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 11586
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11588
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 11589
    const/4 v2, 0x3

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->key_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11591
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 11592
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->transaction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11594
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 11595
    const/4 v1, 0x5

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionType_:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11597
    :cond_4
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 11598
    const/4 v1, 0x6

    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->encryptionParameters_:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11600
    :cond_5
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 11601
    const/4 v1, 0x7

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->version_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11603
    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 11604
    const/16 v2, 0xa

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->extension_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11603
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11606
    :cond_7
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 11607
    const/16 v1, 0xb

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11609
    :cond_8
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_9

    .line 11610
    const/16 v1, 0xc

    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockHeight_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 11612
    :cond_9
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_a

    .line 11613
    const/16 v1, 0xd

    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->keyRotationTime_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 11615
    :cond_a
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 11616
    const/16 v1, 0xe

    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->lastSeenBlockTimeSecs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11618
    :cond_b
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 11619
    const/16 v2, 0xf

    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Wallet;->watchedScript_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11618
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 11621
    :cond_c
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Wallet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 11622
    return-void
.end method
