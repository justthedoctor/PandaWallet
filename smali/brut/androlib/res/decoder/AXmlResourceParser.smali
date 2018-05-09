.class public Lbrut/androlib/res/decoder/AXmlResourceParser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_IX_NAME:I = 0x1

.field private static final ATTRIBUTE_IX_NAMESPACE_URI:I = 0x0

.field private static final ATTRIBUTE_IX_VALUE_DATA:I = 0x4

.field private static final ATTRIBUTE_IX_VALUE_STRING:I = 0x2

.field private static final ATTRIBUTE_IX_VALUE_TYPE:I = 0x3

.field private static final ATTRIBUTE_LENGHT:I = 0x5

.field private static final CHUNK_AXML_FILE:I = 0x80003

.field private static final CHUNK_RESOURCEIDS:I = 0x80180

.field private static final CHUNK_XML_END_NAMESPACE:I = 0x100101

.field private static final CHUNK_XML_END_TAG:I = 0x100103

.field private static final CHUNK_XML_FIRST:I = 0x100100

.field private static final CHUNK_XML_LAST:I = 0x100104

.field private static final CHUNK_XML_START_NAMESPACE:I = 0x100100

.field private static final CHUNK_XML_START_TAG:I = 0x100102

.field private static final CHUNK_XML_TEXT:I = 0x100104

.field private static final E_NOT_SUPPORTED:Ljava/lang/String; = "Method is not supported."

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private mAttrDecoder:Lbrut/androlib/res/decoder/ResAttrDecoder;

.field private mFirstError:Lbrut/androlib/AndrolibException;

.field private m_attributes:[I

.field private m_classAttribute:I

.field private m_decreaseDepth:Z

.field private m_event:I

.field private m_idAttribute:I

.field private m_lineNumber:I

.field private m_name:I

.field private m_namespaceUri:I

.field private m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

.field private m_operational:Z

.field private m_reader:Lbrut/util/ExtDataInput;

.field private m_resourceIDs:[I

.field private m_strings:Lbrut/androlib/res/decoder/StringBlock;

.field private m_styleAttribute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lbrut/androlib/res/decoder/AXmlResourceParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbrut/androlib/res/decoder/AXmlResourceParser;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbrut/androlib/res/decoder/ResAttrDecoder;

    invoke-direct {v0}, Lbrut/androlib/res/decoder/ResAttrDecoder;-><init>()V

    iput-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->mAttrDecoder:Lbrut/androlib/res/decoder/ResAttrDecoder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_operational:Z

    new-instance v0, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-direct {v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;-><init>()V

    iput-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-direct {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->resetEventInfo()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;-><init>()V

    invoke-virtual {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->open(Ljava/io/InputStream;)V

    return-void
.end method

.method private final doNext()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const v2, 0x100102

    const v7, 0x100100

    const/4 v0, 0x3

    const/4 v6, 0x1

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    const v3, 0x80003

    invoke-virtual {v1, v3}, Lbrut/util/ExtDataInput;->skipCheckInt(I)V

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->skipInt()V

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-static {v1}, Lbrut/androlib/res/decoder/StringBlock;->read(Lbrut/util/ExtDataInput;)Lbrut/androlib/res/decoder/StringBlock;

    move-result-object v1

    iput-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v1}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->increaseDepth()V

    iput-boolean v6, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_operational:Z

    :cond_0
    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    if-ne v1, v6, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    invoke-direct {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->resetEventInfo()V

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_decreaseDepth:Z

    if-eqz v1, :cond_3

    iput-boolean v8, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_decreaseDepth:Z

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v1}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->decreaseDepth()V

    :cond_3
    if-ne v3, v0, :cond_4

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v1}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->getDepth()I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v1}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->getCurrentCount()I

    move-result v1

    if-nez v1, :cond_4

    iput v6, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    goto :goto_0

    :cond_4
    if-nez v3, :cond_6

    move v1, v2

    :goto_2
    const v4, 0x80180

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v1

    const/16 v4, 0x8

    if-lt v1, v4, :cond_5

    rem-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_7

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource ids size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v1

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v4, v1}, Lbrut/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_resourceIDs:[I

    goto :goto_1

    :cond_8
    if-lt v1, v7, :cond_9

    const v4, 0x100104

    if-le v1, v4, :cond_a

    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid chunk type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-ne v1, v2, :cond_b

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    iput v8, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v4}, Lbrut/util/ExtDataInput;->skipInt()V

    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v4}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v4

    iget-object v5, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v5}, Lbrut/util/ExtDataInput;->skipInt()V

    if-eq v1, v7, :cond_c

    const v5, 0x100101

    if-ne v1, v5, :cond_e

    :cond_c
    if-ne v1, v7, :cond_d

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v1

    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v4}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v4

    iget-object v5, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v5, v1, v4}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->push(II)V

    goto/16 :goto_1

    :cond_d
    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->skipInt()V

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->skipInt()V

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v1}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->pop()Z

    goto/16 :goto_1

    :cond_e
    iput v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_lineNumber:I

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaceUri:I

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_name:I

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->skipInt()V

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x10

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_idAttribute:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v2}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v2

    iput v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_classAttribute:I

    iget v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_classAttribute:I

    ushr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_styleAttribute:I

    iget v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_classAttribute:I

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_classAttribute:I

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v2, v1}, Lbrut/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    :goto_3
    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x18

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->increaseDepth()V

    const/4 v0, 0x2

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    goto/16 :goto_0

    :cond_10
    const v4, 0x100103

    if-ne v1, v4, :cond_11

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaceUri:I

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v1}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v1

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_name:I

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    iput-boolean v6, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_decreaseDepth:Z

    goto/16 :goto_0

    :cond_11
    const v4, 0x100104

    if-ne v1, v4, :cond_2

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v0}, Lbrut/util/ExtDataInput;->readInt()I

    move-result v0

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_name:I

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v0}, Lbrut/util/ExtDataInput;->skipInt()V

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    invoke-virtual {v0}, Lbrut/util/ExtDataInput;->skipInt()V

    const/4 v0, 0x4

    iput v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    goto/16 :goto_0
.end method

.method private final findAttribute(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v1, -0x1

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v0, p2}, Lbrut/androlib/res/decoder/StringBlock;->find(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v0, p1}, Lbrut/androlib/res/decoder/StringBlock;->find(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    array-length v4, v4

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_4

    if-eq v0, v1, :cond_2

    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v5, v2, 0x0

    aget v4, v4, v5

    if-ne v0, v4, :cond_4

    :cond_2
    div-int/lit8 v1, v2, 0x5

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private final getAttributeOffset(I)I
    .locals 3

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Current event is not START_TAG."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    mul-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method private final resetEventInfo()V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_lineNumber:I

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_name:I

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaceUri:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_idAttribute:I

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_classAttribute:I

    iput v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_styleAttribute:I

    return-void
.end method

.method private setFirstError(Lbrut/androlib/AndrolibException;)V
    .locals 1

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->mFirstError:Lbrut/androlib/AndrolibException;

    if-nez v0, :cond_0

    iput-object p1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->mFirstError:Lbrut/androlib/AndrolibException;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_operational:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_operational:Z

    iput-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    iput-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    iput-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_resourceIDs:[I

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->reset()V

    invoke-direct {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->resetEventInfo()V

    goto :goto_0
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttrDecoder()Lbrut/androlib/res/decoder/ResAttrDecoder;
    .locals 1

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->mAttrDecoder:Lbrut/androlib/res/decoder/ResAttrDecoder;

    return-object v0
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lbrut/androlib/res/decoder/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result p3

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 2

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 3

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    :cond_0
    return p2
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2

    invoke-direct {p0, p1, p2}, Lbrut/androlib/res/decoder/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeFloatValue(IF)F

    move-result p3

    goto :goto_0
.end method

.method public getAttributeIntValue(II)I
    .locals 3

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x4

    aget p2, v1, v0

    :cond_0
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lbrut/androlib/res/decoder/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result p3

    goto :goto_0
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v1, v0}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeNameResource(I)I
    .locals 2

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_resourceIDs:[I

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_resourceIDs:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_resourceIDs:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x0

    aget v0, v1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v1, v0}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x0

    aget v0, v1, v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v1, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->findPrefix(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v1, v0}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeResourceValue(II)I
    .locals 3

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x4

    aget p2, v1, v0

    :cond_0
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lbrut/androlib/res/decoder/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeResourceValue(II)I

    move-result p3

    goto :goto_0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1

    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lbrut/androlib/res/decoder/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return p3

    :cond_0
    invoke-virtual {p0, v0, p3}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result p3

    goto :goto_0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 9

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    iget-object v2, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v3, v0, 0x4

    aget v2, v2, v3

    iget-object v3, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v3, v0

    iget-object v3, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->mAttrDecoder:Lbrut/androlib/res/decoder/ResAttrDecoder;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->mAttrDecoder:Lbrut/androlib/res/decoder/ResAttrDecoder;

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeNameResource(I)I

    move-result v4

    invoke-virtual {v3, v1, v2, v0, v4}, Lbrut/androlib/res/decoder/ResAttrDecoder;->decode(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v4, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v4, v0}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbrut/androlib/res/xml/ResXmlEncoders;->escapeXmlChars(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lbrut/androlib/AndrolibException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->setFirstError(Lbrut/androlib/AndrolibException;)V

    sget-object v3, Lbrut/androlib/res/decoder/AXmlResourceParser;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Could not decode attr value, using undecoded value instead: ns=%s, name=%s, value=0x%08x"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    invoke-static {v1, v2}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lbrut/androlib/res/decoder/AXmlResourceParser;->findAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeValueData(I)I
    .locals 2

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    return v0
.end method

.method public getAttributeValueType(I)I
    .locals 2

    invoke-direct {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x3

    aget v0, v1, v0

    return v0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_classAttribute:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_classAttribute:I

    invoke-direct {p0, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v1, v0}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v0}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstError()Lbrut/androlib/AndrolibException;
    .locals 1

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->mFirstError:Lbrut/androlib/AndrolibException;

    return-object v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_idAttribute:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_idAttribute:I

    invoke-direct {p0, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v1, v0}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 3

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_idAttribute:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_idAttribute:I

    invoke-direct {p0, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x4

    aget p1, v1, v0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_name:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_name:I

    invoke-virtual {v0, v1}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaceUri:I

    invoke-virtual {v0, v1}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->getAccumulatedCount(I)I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->getPrefix(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v1, v0}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    invoke-virtual {v0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->getUri(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v1, v0}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaces:Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_namespaceUri:I

    invoke-virtual {v0, v1}, Lbrut/androlib/res/decoder/AXmlResourceParser$NamespaceStack;->findPrefix(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    invoke-virtual {v1, v0}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final getStrings()Lbrut/androlib/res/decoder/StringBlock;
    .locals 1

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 2

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_styleAttribute:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_styleAttribute:I

    invoke-direct {p0, v0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getAttributeOffset(I)I

    move-result v0

    iget-object v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_attributes:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_name:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_strings:Lbrut/androlib/res/decoder/StringBlock;

    iget v1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_name:I

    invoke-virtual {v0, v1}, Lbrut/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    aput v3, p1, v3

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aput v2, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public isAttributeDefault(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    if-nez v0, :cond_0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Parser is not opened."

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->doNext()V

    iget v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_event:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->close()V

    throw v0
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->next()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Expected start or end tag."

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Parser must be on START_TAG to read next text."

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_2

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Event TEXT must be immediately followed by END_TAG."

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-ne v0, v3, :cond_3

    const-string v0, ""

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Parser must be on START_TAG or TEXT to read text."

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->next()I

    move-result v0

    return v0
.end method

.method public open(Ljava/io/InputStream;)V
    .locals 2

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->close()V

    if-eqz p1, :cond_0

    new-instance v0, Lbrut/util/ExtDataInput;

    new-instance v1, Lcom/mindprod/ledatastream/LEDataInputStream;

    invoke-direct {v1, p1}, Lcom/mindprod/ledatastream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lbrut/util/ExtDataInput;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->m_reader:Lbrut/util/ExtDataInput;

    :cond_0
    return-void
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lbrut/androlib/res/decoder/AXmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lbrut/androlib/res/decoder/AXmlResourceParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-void
.end method

.method public setAttrDecoder(Lbrut/androlib/res/decoder/ResAttrDecoder;)V
    .locals 0

    iput-object p1, p0, Lbrut/androlib/res/decoder/AXmlResourceParser;->mAttrDecoder:Lbrut/androlib/res/decoder/ResAttrDecoder;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbrut/androlib/res/decoder/AXmlResourceParser;->open(Ljava/io/InputStream;)V

    return-void
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
