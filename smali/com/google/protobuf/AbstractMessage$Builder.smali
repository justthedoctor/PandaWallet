.class public abstract Lcom/google/protobuf/AbstractMessage$Builder;
.super Lcom/google/protobuf/AbstractMessageLite$Builder;
.source "AbstractMessage.java"

# interfaces
.implements Lcom/google/protobuf/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/AbstractMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/google/protobuf/AbstractMessage$Builder;",
        ">",
        "Lcom/google/protobuf/AbstractMessageLite$Builder",
        "<TBuilderType;>;",
        "Lcom/google/protobuf/Message$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/MessageOrBuilder;

    .prologue
    .line 268
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static addRepeatedField(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 0
    .param p0, "builder"    # Lcom/google/protobuf/Message$Builder;
    .param p2, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message$Builder;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    if-eqz p0, :cond_0

    .line 370
    invoke-interface {p0, p2, p3}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static eagerlyMergeMessageSetExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;)V
    .locals 5
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extension"    # Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/Message$Builder;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    .local p4, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 689
    .local v0, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    const/4 v3, 0x0

    .line 690
    .local v3, "value":Lcom/google/protobuf/Message;
    invoke-static {p3, p4, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->hasOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 691
    invoke-static {p3, p4, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->getOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message;

    move-result-object v1

    .line 693
    .local v1, "originalMessage":Lcom/google/protobuf/Message;
    invoke-interface {v1}, Lcom/google/protobuf/Message;->toBuilder()Lcom/google/protobuf/Message$Builder;

    move-result-object v2

    .line 694
    .local v2, "subBuilder":Lcom/google/protobuf/Message$Builder;
    invoke-virtual {p0, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 695
    invoke-interface {v2}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v3

    .line 701
    .end local v1    # "originalMessage":Lcom/google/protobuf/Message;
    .end local v2    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    :goto_0
    if-eqz p3, :cond_1

    .line 702
    invoke-interface {p3, v0, v3}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 706
    :goto_1
    return-void

    .line 697
    :cond_0
    iget-object v4, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {v4}, Lcom/google/protobuf/Message;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    .end local v3    # "value":Lcom/google/protobuf/Message;
    check-cast v3, Lcom/google/protobuf/Message;

    .restart local v3    # "value":Lcom/google/protobuf/Message;
    goto :goto_0

    .line 704
    :cond_1
    invoke-virtual {p4, v0, v3}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;
    .locals 2
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MessageOrBuilder;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ""

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 781
    return-object v0
.end method

.method private static findMissingFields(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p0, "message"    # Lcom/google/protobuf/MessageOrBuilder;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MessageOrBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 790
    .local v2, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {p0, v2}, Lcom/google/protobuf/MessageOrBuilder;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 791
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 796
    .end local v2    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    invoke-interface {p0}, Lcom/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 797
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 798
    .restart local v2    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 800
    .local v7, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v8

    sget-object v9, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v8, v9, :cond_2

    .line 801
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 802
    const/4 v3, 0x0

    .line 803
    .local v3, "i":I
    check-cast v7, Ljava/util/List;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 804
    .local v0, "element":Ljava/lang/Object;
    check-cast v0, Lcom/google/protobuf/MessageOrBuilder;

    .end local v0    # "element":Ljava/lang/Object;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/AbstractMessage$Builder;->subMessagePrefix(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V

    move v3, v4

    .line 807
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 809
    .end local v3    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_3
    invoke-interface {p0, v2}, Lcom/google/protobuf/MessageOrBuilder;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 810
    check-cast v7, Lcom/google/protobuf/MessageOrBuilder;

    .end local v7    # "value":Ljava/lang/Object;
    const/4 v8, -0x1

    invoke-static {p1, v2, v8}, Lcom/google/protobuf/AbstractMessage$Builder;->subMessagePrefix(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 817
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v2    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    return-void
.end method

.method private static getOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message;
    .locals 1
    .param p0, "builder"    # Lcom/google/protobuf/Message$Builder;
    .param p2, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message$Builder;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")",
            "Lcom/google/protobuf/Message;"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    if-eqz p0, :cond_0

    .line 407
    invoke-interface {p0, p2}, Lcom/google/protobuf/Message$Builder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    .line 409
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    goto :goto_0
.end method

.method private static hasOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .param p0, "builder"    # Lcom/google/protobuf/Message$Builder;
    .param p2, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message$Builder;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    if-eqz p0, :cond_0

    .line 395
    invoke-interface {p0, p2}, Lcom/google/protobuf/Message$Builder;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v0

    .line 397
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    goto :goto_0
.end method

.method static mergeFieldFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;I)Z
    .locals 18
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet$Builder;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "type"    # Lcom/google/protobuf/Descriptors$Descriptor;
    .param p4, "builder"    # Lcom/google/protobuf/Message$Builder;
    .param p6, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/UnknownFieldSet$Builder;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            "Lcom/google/protobuf/Message$Builder;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    .local p5, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v15

    if-eqz v15, :cond_0

    sget v15, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    move/from16 v0, p6

    if-ne v0, v15, :cond_0

    .line 448
    invoke-static/range {p0 .. p5}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;)V

    .line 450
    const/4 v15, 0x1

    .line 586
    :goto_0
    return v15

    .line 453
    :cond_0
    invoke-static/range {p6 .. p6}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v14

    .line 454
    .local v14, "wireType":I
    invoke-static/range {p6 .. p6}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v6

    .line 457
    .local v6, "fieldNumber":I
    const/4 v3, 0x0

    .line 459
    .local v3, "defaultInstance":Lcom/google/protobuf/Message;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/google/protobuf/Descriptors$Descriptor;->isExtensionNumber(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 465
    move-object/from16 v0, p2

    instance-of v15, v0, Lcom/google/protobuf/ExtensionRegistry;

    if-eqz v15, :cond_3

    move-object/from16 v15, p2

    .line 466
    check-cast v15, Lcom/google/protobuf/ExtensionRegistry;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v6}, Lcom/google/protobuf/ExtensionRegistry;->findExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v4

    .line 469
    .local v4, "extension":Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    if-nez v4, :cond_2

    .line 470
    const/4 v5, 0x0

    .line 490
    .end local v4    # "extension":Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .local v5, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    :goto_1
    const/4 v12, 0x0

    .line 491
    .local v12, "unknown":Z
    const/4 v9, 0x0

    .line 492
    .local v9, "packed":Z
    if-nez v5, :cond_6

    .line 493
    const/4 v12, 0x1

    .line 507
    :goto_2
    if-eqz v12, :cond_9

    .line 508
    move-object/from16 v0, p1

    move/from16 v1, p6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v15

    goto :goto_0

    .line 472
    .end local v5    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v9    # "packed":Z
    .end local v12    # "unknown":Z
    .restart local v4    # "extension":Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    :cond_2
    iget-object v5, v4, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 473
    .restart local v5    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    iget-object v3, v4, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    .line 474
    if-nez v3, :cond_1

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v15

    sget-object v16, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 476
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Message-typed extension lacked default instance: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 482
    .end local v4    # "extension":Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .end local v5    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 484
    .end local v5    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    if-eqz p4, :cond_5

    .line 485
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v5

    .restart local v5    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 487
    .end local v5    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    goto :goto_1

    .line 494
    .restart local v9    # "packed":Z
    .restart local v12    # "unknown":Z
    :cond_6
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v15

    if-ne v14, v15, :cond_7

    .line 497
    const/4 v9, 0x0

    goto :goto_2

    .line 498
    :cond_7
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isPackable()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v15

    if-ne v14, v15, :cond_8

    .line 502
    const/4 v9, 0x1

    goto :goto_2

    .line 504
    :cond_8
    const/4 v12, 0x1

    goto :goto_2

    .line 511
    :cond_9
    if-eqz v9, :cond_d

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v7

    .line 513
    .local v7, "length":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v8

    .line 514
    .local v8, "limit":I
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    sget-object v16, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 515
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_c

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v10

    .line 517
    .local v10, "rawValue":I
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v13

    .line 518
    .local v13, "value":Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v13, :cond_a

    .line 521
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 523
    :cond_a
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v5, v13}, Lcom/google/protobuf/AbstractMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_3

    .line 526
    .end local v10    # "rawValue":I
    .end local v13    # "value":Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v15

    if-lez v15, :cond_c

    .line 527
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v13

    .line 529
    .local v13, "value":Ljava/lang/Object;
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v5, v13}, Lcom/google/protobuf/AbstractMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_4

    .line 532
    .end local v13    # "value":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 586
    .end local v7    # "length":I
    .end local v8    # "limit":I
    :goto_5
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 535
    :cond_d
    sget-object v15, Lcom/google/protobuf/AbstractMessage$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 575
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;

    move-result-object v13

    .line 579
    :cond_e
    :goto_6
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 580
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v5, v13}, Lcom/google/protobuf/AbstractMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto :goto_5

    .line 538
    :pswitch_0
    if-eqz v3, :cond_10

    .line 539
    invoke-interface {v3}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v11

    .line 543
    .local v11, "subBuilder":Lcom/google/protobuf/Message$Builder;
    :goto_7
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v15

    if-nez v15, :cond_f

    .line 544
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v5, v11}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message$Builder;)V

    .line 546
    :cond_f
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 547
    invoke-interface {v11}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v13

    .line 548
    .local v13, "value":Lcom/google/protobuf/Message;
    goto :goto_6

    .line 541
    .end local v11    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    .end local v13    # "value":Lcom/google/protobuf/Message;
    :cond_10
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v11

    .restart local v11    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    goto :goto_7

    .line 552
    .end local v11    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    :pswitch_1
    if-eqz v3, :cond_12

    .line 553
    invoke-interface {v3}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v11

    .line 557
    .restart local v11    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    :goto_8
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v15

    if-nez v15, :cond_11

    .line 558
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v5, v11}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message$Builder;)V

    .line 560
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 561
    invoke-interface {v11}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v13

    .line 562
    .restart local v13    # "value":Lcom/google/protobuf/Message;
    goto :goto_6

    .line 555
    .end local v11    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    .end local v13    # "value":Lcom/google/protobuf/Message;
    :cond_12
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v11

    .restart local v11    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    goto :goto_8

    .line 565
    .end local v11    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v10

    .line 566
    .restart local v10    # "rawValue":I
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v13

    .line 569
    .local v13, "value":Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v13, :cond_e

    .line 570
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v10}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    .line 571
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 582
    .end local v10    # "rawValue":I
    .end local v13    # "value":Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    :cond_13
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v5, v13}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;)V
    .locals 7
    .param p0, "rawBytes"    # Lcom/google/protobuf/ByteString;
    .param p1, "extension"    # Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/Message$Builder;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    .local p4, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 716
    .local v0, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-static {p3, p4, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->hasOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v1

    .line 718
    .local v1, "hasOriginalValue":Z
    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->isEagerlyParseMessageSets()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 720
    :cond_0
    const/4 v5, 0x0

    .line 721
    .local v5, "value":Lcom/google/protobuf/Message;
    if-eqz v1, :cond_1

    .line 722
    invoke-static {p3, p4, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->getOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message;

    move-result-object v3

    .line 724
    .local v3, "originalMessage":Lcom/google/protobuf/Message;
    invoke-interface {v3}, Lcom/google/protobuf/Message;->toBuilder()Lcom/google/protobuf/Message$Builder;

    move-result-object v4

    .line 725
    .local v4, "subBuilder":Lcom/google/protobuf/Message$Builder;
    invoke-interface {v4, p0, p2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;

    .line 726
    invoke-interface {v4}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v5

    .line 731
    .end local v3    # "originalMessage":Lcom/google/protobuf/Message;
    .end local v4    # "subBuilder":Lcom/google/protobuf/Message$Builder;
    :goto_0
    invoke-static {p3, p4, v0, v5}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V

    .line 749
    .end local v5    # "value":Lcom/google/protobuf/Message;
    :goto_1
    return-void

    .line 728
    .restart local v5    # "value":Lcom/google/protobuf/Message;
    :cond_1
    iget-object v6, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {v6}, Lcom/google/protobuf/Message;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v6

    invoke-interface {v6, p0, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "value":Lcom/google/protobuf/Message;
    check-cast v5, Lcom/google/protobuf/Message;

    .restart local v5    # "value":Lcom/google/protobuf/Message;
    goto :goto_0

    .line 734
    .end local v5    # "value":Lcom/google/protobuf/Message;
    :cond_2
    new-instance v2, Lcom/google/protobuf/LazyField;

    iget-object v6, p1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-direct {v2, v6, p2, p0}, Lcom/google/protobuf/LazyField;-><init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    .line 736
    .local v2, "lazyField":Lcom/google/protobuf/LazyField;
    if-eqz p3, :cond_4

    .line 740
    instance-of v6, p3, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;

    if-eqz v6, :cond_3

    .line 741
    invoke-interface {p3, v0, v2}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_1

    .line 743
    :cond_3
    invoke-virtual {v2}, Lcom/google/protobuf/LazyField;->getValue()Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {p3, v0, v6}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_1

    .line 746
    :cond_4
    invoke-virtual {p4, v0, v2}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;)V
    .locals 5
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet$Builder;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "type"    # Lcom/google/protobuf/Descriptors$Descriptor;
    .param p4, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/UnknownFieldSet$Builder;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            "Lcom/google/protobuf/Message$Builder;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    .local p5, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    const/4 v3, 0x0

    .line 620
    .local v3, "typeId":I
    const/4 v1, 0x0

    .line 621
    .local v1, "rawBytes":Lcom/google/protobuf/ByteString;
    const/4 v0, 0x0

    .line 626
    .local v0, "extension":Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 627
    .local v2, "tag":I
    if-nez v2, :cond_2

    .line 665
    :goto_1
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    invoke-virtual {p0, v4}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 668
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 669
    if-eqz v0, :cond_6

    .line 670
    invoke-static {v1, v0, p2, p4, p5}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;)V

    .line 679
    :cond_1
    :goto_2
    return-void

    .line 631
    :cond_2
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    if-ne v2, v4, :cond_3

    .line 632
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    .line 633
    if-eqz v3, :cond_0

    .line 639
    instance-of v4, p2, Lcom/google/protobuf/ExtensionRegistry;

    if-eqz v4, :cond_0

    move-object v4, p2

    .line 640
    check-cast v4, Lcom/google/protobuf/ExtensionRegistry;

    invoke-virtual {v4, p3, v3}, Lcom/google/protobuf/ExtensionRegistry;->findExtensionByNumber(Lcom/google/protobuf/Descriptors$Descriptor;I)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_3
    sget v4, Lcom/google/protobuf/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    if-ne v2, v4, :cond_5

    .line 646
    if-eqz v3, :cond_4

    .line 647
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->isEagerlyParseMessageSets()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 650
    invoke-static {p0, v0, p2, p4, p5}, Lcom/google/protobuf/AbstractMessage$Builder;->eagerlyMergeMessageSetExtension(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;)V

    .line 652
    const/4 v1, 0x0

    .line 653
    goto :goto_0

    .line 657
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto :goto_0

    .line 660
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 673
    :cond_6
    if-eqz v1, :cond_1

    .line 674
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->addLengthDelimited(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/google/protobuf/UnknownFieldSet$Field;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeField(ILcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_2
.end method

.method private static mergeOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p0, "builder"    # Lcom/google/protobuf/Message$Builder;
    .param p2, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p3, "subBuilder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message$Builder;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/google/protobuf/Message$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->getOriginalMessage(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message;

    move-result-object v0

    .line 420
    .local v0, "originalMessage":Lcom/google/protobuf/Message;
    if-eqz v0, :cond_0

    .line 421
    invoke-interface {p3, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    .line 423
    :cond_0
    return-void
.end method

.method protected static newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 2
    .param p0, "message"    # Lcom/google/protobuf/Message;

    .prologue
    .line 770
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static setField(Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)V
    .locals 0
    .param p0, "builder"    # Lcom/google/protobuf/Message$Builder;
    .param p2, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message$Builder;",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    if-eqz p0, :cond_0

    .line 383
    invoke-interface {p0, p2, p3}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static subMessagePrefix(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I

    .prologue
    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 830
    :goto_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 831
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 828
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getAllFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMessage$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 280
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clear()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clear()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

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
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public findInitializationErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-static {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldBuilder(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .prologue
    .line 760
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getFieldBuilder() called on an unsupported message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInitializationErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->findInitializationErrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage;->access$100(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 918
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 861
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 869
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 348
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 349
    .local v6, "tag":I
    if-nez v6, :cond_1

    .line 359
    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;

    .line 360
    return-object p0

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFieldFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/FieldSet;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 8
    .param p1, "other"    # Lcom/google/protobuf/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v7

    if-eq v6, v7, :cond_0

    .line 293
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 307
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 308
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 309
    .local v3, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 310
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 311
    .local v0, "element":Ljava/lang/Object;
    invoke-virtual {p0, v3, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_1

    .line 313
    .end local v0    # "element":Ljava/lang/Object;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v6, v7, :cond_4

    .line 314
    invoke-virtual {p0, v3}, Lcom/google/protobuf/AbstractMessage$Builder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Message;

    .line 315
    .local v2, "existingValue":Lcom/google/protobuf/Message;
    invoke-interface {v2}, Lcom/google/protobuf/Message;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v6

    if-ne v2, v6, :cond_3

    .line 316
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 318
    :cond_3
    invoke-interface {v2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/Message;

    invoke-interface {v7, v6}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 325
    .end local v2    # "existingValue":Lcom/google/protobuf/Message;
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_0

    .line 329
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v3    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_5
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 331
    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 875
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 898
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 890
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/ByteString;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

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
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/ByteString;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

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
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/Message;

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/ByteString;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

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
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    .prologue
    .line 752
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;

    .line 756
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/UnknownFieldSet;

    .prologue
    .line 267
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method
