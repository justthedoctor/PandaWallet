.class public final Lorg/bitcoinj/wallet/Protos$Script$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/bitcoinj/wallet/Protos$Script$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$ScriptOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private creationTimestamp_:J

.field private program_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2990
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 2874
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->maybeForceBuilderInitialization()V

    .line 2875
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 2879
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2990
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 2880
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->maybeForceBuilderInitialization()V

    .line 2881
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;
    .param p2, "x1"    # Lorg/bitcoinj/wallet/Protos$1;

    .prologue
    .line 2857
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3800()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->create()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .prologue
    .line 2887
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2862
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2883
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->access$4000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2885
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->build()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 2

    .prologue
    .line 2913
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    .line 2914
    .local v0, "result":Lorg/bitcoinj/wallet/Protos$Script;
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Script;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2915
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2917
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 5

    .prologue
    .line 2921
    new-instance v1, Lorg/bitcoinj/wallet/Protos$Script;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/bitcoinj/wallet/Protos$Script;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 2922
    .local v1, "result":Lorg/bitcoinj/wallet/Protos$Script;
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 2923
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2924
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2925
    or-int/lit8 v2, v2, 0x1

    .line 2927
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v3}, Lorg/bitcoinj/wallet/Protos$Script;->access$4202(Lorg/bitcoinj/wallet/Protos$Script;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2928
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2929
    or-int/lit8 v2, v2, 0x2

    .line 2931
    :cond_1
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    invoke-static {v1, v3, v4}, Lorg/bitcoinj/wallet/Protos$Script;->access$4302(Lorg/bitcoinj/wallet/Protos$Script;J)J

    .line 2932
    invoke-static {v1, v2}, Lorg/bitcoinj/wallet/Protos$Script;->access$4402(Lorg/bitcoinj/wallet/Protos$Script;I)I

    .line 2933
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onBuilt()V

    .line 2934
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .prologue
    .line 2891
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2892
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 2893
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 2894
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    .line 2895
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 2896
    return-object p0
.end method

.method public clearCreationTimestamp()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .prologue
    .line 3072
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 3073
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    .line 3074
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onChanged()V

    .line 3075
    return-object p0
.end method

.method public clearProgram()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1

    .prologue
    .line 3019
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 3020
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Script;->getProgram()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 3021
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onChanged()V

    .line 3022
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

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
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2

    .prologue
    .line 2900
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->create()Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .prologue
    .line 3047
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2857
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Script;
    .locals 1

    .prologue
    .line 2909
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2905
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getProgram()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 3001
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasCreationTimestamp()Z
    .locals 2

    .prologue
    .line 3036
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

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

.method public hasProgram()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2995
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

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
    .line 2867
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Script;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Script$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2959
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->hasProgram()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2967
    :cond_0
    :goto_0
    return v0

    .line 2963
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->hasCreationTimestamp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2967
    const/4 v0, 0x1

    goto :goto_0
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
    .line 2857
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2857
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

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
    .line 2857
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

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
    .line 2857
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2857
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

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
    .line 2857
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2974
    const/4 v2, 0x0

    .line 2976
    .local v2, "parsedMessage":Lorg/bitcoinj/wallet/Protos$Script;
    :try_start_0
    sget-object v3, Lorg/bitcoinj/wallet/Protos$Script;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2981
    if-eqz v2, :cond_0

    .line 2982
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .line 2985
    :cond_0
    return-object p0

    .line 2977
    :catch_0
    move-exception v1

    .line 2978
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Script;

    move-object v2, v0

    .line 2979
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2981
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2982
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 2938
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Script;

    if-eqz v0, :cond_0

    .line 2939
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Script;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    move-result-object p0

    .line 2942
    .end local p0    # "this":Lorg/bitcoinj/wallet/Protos$Script$Builder;
    :goto_0
    return-object p0

    .line 2941
    .restart local p0    # "this":Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Script;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 2
    .param p1, "other"    # Lorg/bitcoinj/wallet/Protos$Script;

    .prologue
    .line 2947
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Script;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Script;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2955
    :goto_0
    return-object p0

    .line 2948
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->hasProgram()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2949
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->getProgram()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->setProgram(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .line 2951
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->hasCreationTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2952
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->getCreationTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Script$Builder;

    .line 2954
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Script;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 3058
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 3059
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->creationTimestamp_:J

    .line 3060
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onChanged()V

    .line 3061
    return-object p0
.end method

.method public setProgram(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Script$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3007
    if-nez p1, :cond_0

    .line 3008
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3010
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->bitField0_:I

    .line 3011
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Script$Builder;->program_:Lcom/google/protobuf/ByteString;

    .line 3012
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Script$Builder;->onChanged()V

    .line 3013
    return-object p0
.end method
