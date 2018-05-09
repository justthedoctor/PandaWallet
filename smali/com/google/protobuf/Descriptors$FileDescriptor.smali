.class public final Lcom/google/protobuf/Descriptors$FileDescriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    }
.end annotation


# instance fields
.field private final dependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

.field private final extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field private final messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

.field private final pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

.field private proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

.field private final publicDependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$DescriptorPool;)V
    .locals 9
    .param p1, "proto"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p2, "dependencies"    # [Lcom/google/protobuf/Descriptors$FileDescriptor;
    .param p3, "pool"    # Lcom/google/protobuf/Descriptors$DescriptorPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    .line 352
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 353
    invoke-virtual {p2}, [Lcom/google/protobuf/Descriptors$FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 354
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 356
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyCount()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 357
    invoke-virtual {p1, v4}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependency(I)I

    move-result v7

    .line 358
    .local v7, "index":I
    if-ltz v7, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    array-length v0, v0

    if-lt v7, v0, :cond_1

    .line 359
    :cond_0
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v1, "Invalid public dependency index."

    invoke-direct {v0, p0, v1, v3}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependency(I)I

    move-result v2

    aget-object v1, v1, v2

    aput-object v1, v0, v4

    .line 356
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 366
    .end local v7    # "index":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 368
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    .line 369
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 370
    iget-object v6, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Descriptors$Descriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;ILcom/google/protobuf/Descriptors$1;)V

    aput-object v0, v6, v4

    .line 369
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 374
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 375
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 376
    iget-object v6, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    new-instance v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;ILcom/google/protobuf/Descriptors$1;)V

    aput-object v0, v6, v4

    .line 375
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 379
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    .line 380
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 381
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    new-instance v1, Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v2

    invoke-direct {v1, v2, p0, v4, v3}, Lcom/google/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;ILcom/google/protobuf/Descriptors$1;)V

    aput-object v1, v0, v4

    .line 380
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 384
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 385
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 386
    iget-object v8, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    new-instance v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, v4}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;IZLcom/google/protobuf/Descriptors$1;)V

    aput-object v0, v8, v4

    .line 385
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 389
    :cond_6
    return-void
.end method

.method static synthetic access$1200(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    return-object v0
.end method

.method public static buildFrom(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 6
    .param p0, "proto"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "dependencies"    # [Lcom/google/protobuf/Descriptors$FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 235
    new-instance v1, Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-direct {v1, p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;-><init>([Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 236
    .local v1, "pool":Lcom/google/protobuf/Descriptors$DescriptorPool;
    new-instance v2, Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$DescriptorPool;)V

    .line 239
    .local v2, "result":Lcom/google/protobuf/Descriptors$FileDescriptor;
    array-length v3, p1

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 240
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v4, "Dependencies passed to FileDescriptor.buildFrom() don\'t match those listed in the FileDescriptorProto."

    invoke-direct {v3, v2, v4, v5}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 244
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 245
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependency(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v4, "Dependencies passed to FileDescriptor.buildFrom() don\'t match those listed in the FileDescriptorProto."

    invoke-direct {v3, v2, v4, v5}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 244
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_2
    invoke-direct {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->crossLink()V

    .line 253
    return-object v2
.end method

.method private crossLink()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    .local v0, "arr$":[Lcom/google/protobuf/Descriptors$Descriptor;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 394
    .local v4, "messageType":Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v4}, Lcom/google/protobuf/Descriptors$Descriptor;->access$500(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 393
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v4    # "messageType":Lcom/google/protobuf/Descriptors$Descriptor;
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    .local v0, "arr$":[Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 398
    .local v5, "service":Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    invoke-static {v5}, Lcom/google/protobuf/Descriptors$ServiceDescriptor;->access$600(Lcom/google/protobuf/Descriptors$ServiceDescriptor;)V

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    .end local v5    # "service":Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .local v0, "arr$":[Lcom/google/protobuf/Descriptors$FieldDescriptor;
    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 402
    .local v1, "extension":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-static {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->access$700(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 401
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 404
    .end local v1    # "extension":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_2
    return-void
.end method

.method public static internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V
    .locals 13
    .param p0, "descriptorDataParts"    # [Ljava/lang/String;
    .param p1, "dependencies"    # [Lcom/google/protobuf/Descriptors$FileDescriptor;
    .param p2, "descriptorAssigner"    # Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;

    .prologue
    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v2, "descriptorData":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 278
    .local v6, "part":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 283
    .end local v6    # "part":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ISO-8859-1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 291
    .local v1, "descriptorBytes":[B
    :try_start_1
    invoke-static {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([B)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 299
    .local v7, "proto":Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    :try_start_2
    invoke-static {v7, p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->buildFrom(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    :try_end_2
    .catch Lcom/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .line 305
    .local v9, "result":Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-interface {p2, v9}, Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;->assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v8

    .line 308
    .local v8, "registry":Lcom/google/protobuf/ExtensionRegistry;
    if-eqz v8, :cond_1

    .line 311
    :try_start_3
    invoke-static {v1, v8}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 318
    invoke-direct {v9, v7}, Lcom/google/protobuf/Descriptors$FileDescriptor;->setProto(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    .line 320
    :cond_1
    return-void

    .line 284
    .end local v1    # "descriptorBytes":[B
    .end local v7    # "proto":Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .end local v8    # "registry":Lcom/google/protobuf/ExtensionRegistry;
    .end local v9    # "result":Lcom/google/protobuf/Descriptors$FileDescriptor;
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Standard encoding ISO-8859-1 not supported by JVM."

    invoke-direct {v10, v11, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 292
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "descriptorBytes":[B
    :catch_1
    move-exception v3

    .line 293
    .local v3, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v10, v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 300
    .end local v3    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v7    # "proto":Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    :catch_2
    move-exception v3

    .line 301
    .local v3, "e":Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid embedded descriptor for \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 312
    .end local v3    # "e":Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    .restart local v8    # "registry":Lcom/google/protobuf/ExtensionRegistry;
    .restart local v9    # "result":Lcom/google/protobuf/Descriptors$FileDescriptor;
    :catch_3
    move-exception v3

    .line 313
    .local v3, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v10, v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method private setProto(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V
    .locals 3
    .param p1, "proto"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$Descriptor;->access$800(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->access$900(Lcom/google/protobuf/Descriptors$EnumDescriptor;Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$ServiceDescriptor;->access$1000(Lcom/google/protobuf/Descriptors$ServiceDescriptor;Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 431
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->access$1100(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 434
    :cond_3
    return-void
.end method


# virtual methods
.method public findEnumTypeByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x2e

    .line 149
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 160
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 156
    .local v0, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 158
    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 160
    goto :goto_0
.end method

.method public findExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x2e

    .line 196
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 207
    :goto_0
    return-object v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 203
    .local v0, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 205
    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 207
    goto :goto_0
.end method

.method public findMessageTypeByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x2e

    .line 125
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 136
    :goto_0
    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 132
    .local v0, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/google/protobuf/Descriptors$Descriptor;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 134
    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 136
    goto :goto_0
.end method

.method public findServiceByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x2e

    .line 173
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 184
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 180
    .local v0, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 182
    check-cast v0, Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 184
    goto :goto_0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/Descriptors$EnumDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/Descriptors$ServiceDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toProto()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method
