.class final Lcom/google/protobuf/Descriptors$DescriptorPool;
.super Ljava/lang/Object;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DescriptorPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;,
        Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;,
        Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptorsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$GenericDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final enumValuesByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/google/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1615
    const-class v0, Lcom/google/protobuf/Descriptors;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/protobuf/Descriptors$DescriptorPool;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 6
    .param p1, "dependencies"    # [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 1623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1654
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    .line 1656
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    .line 1658
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    .line 1624
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    .line 1626
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 1627
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    aget-object v5, p1, v2

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1628
    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lcom/google/protobuf/Descriptors$DescriptorPool;->importPublicDependencies(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 1626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1631
    :cond_0
    iget-object v4, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1633
    .local v0, "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    :try_end_0
    .catch Lcom/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1634
    :catch_0
    move-exception v1

    .line 1638
    .local v1, "e":Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    sget-boolean v4, Lcom/google/protobuf/Descriptors$DescriptorPool;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1641
    .end local v0    # "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    .end local v1    # "e":Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    :cond_2
    return-void
.end method

.method static synthetic access$1300(Lcom/google/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$DescriptorPool;

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$DescriptorPool;

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    return-object v0
.end method

.method private importPublicDependencies(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 3
    .param p1, "file"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 1645
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPublicDependencies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1646
    .local v0, "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1647
    invoke-direct {p0, v0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->importPublicDependencies(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    goto :goto_0

    .line 1650
    .end local v0    # "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    :cond_1
    return-void
.end method

.method static validateSymbolName(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V
    .locals 8
    .param p0, "descriptor"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1942
    invoke-interface {p0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1943
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 1944
    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v5, "Missing name."

    invoke-direct {v4, p0, v5, v7}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v4

    .line 1946
    :cond_0
    const/4 v3, 0x1

    .line 1947
    .local v3, "valid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 1948
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1951
    .local v0, "c":C
    const/16 v4, 0x80

    if-lt v0, v4, :cond_1

    .line 1952
    const/4 v3, 0x0

    .line 1956
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v1, :cond_3

    .line 1947
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1960
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1963
    .end local v0    # "c":C
    :cond_4
    if-nez v3, :cond_5

    .line 1964
    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" is not a valid identifier."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v7}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v4

    .line 1968
    :cond_5
    return-void
.end method


# virtual methods
.method addEnumValueByNumber(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)V
    .locals 4
    .param p1, "value"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 1926
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;I)V

    .line 1928
    .local v0, "key":Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 1929
    .local v1, "old":Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-eqz v1, :cond_0

    .line 1930
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->enumValuesByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    :cond_0
    return-void
.end method

.method addFieldByNumber(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 5
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 1907
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;I)V

    .line 1909
    .local v0, "key":Lcom/google/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 1910
    .local v1, "old":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    if-eqz v1, :cond_0

    .line 1911
    iget-object v2, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    new-instance v2, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "has already been used in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" by field \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v2

    .line 1918
    :cond_0
    return-void
.end method

.method addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 6
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/google/protobuf/Descriptors$FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 1855
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1857
    .local v0, "dotpos":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1858
    move-object v1, p1

    .line 1864
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    invoke-direct {v4, v1, p1, p2}, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 1867
    .local v2, "old":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_1

    .line 1868
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    instance-of v3, v2, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-nez v3, :cond_1

    .line 1870
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined (as something other than a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "package) in file \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p2, v4, v5}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 1860
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "old":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 1861
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1875
    .restart local v2    # "old":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_1
    return-void
.end method

.method addSymbol(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V
    .locals 7
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x22

    .line 1797
    invoke-static {p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->validateSymbolName(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V

    .line 1799
    invoke-interface {p1}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 1800
    .local v1, "fullName":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1802
    .local v0, "dotpos":I
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 1803
    .local v2, "old":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_2

    .line 1804
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    invoke-interface {p1}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1807
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1808
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v6}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 1811
    :cond_0
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined in \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v6}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 1817
    :cond_1
    new-instance v3, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is already defined in file \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v6}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v3

    .line 1822
    :cond_2
    return-void
.end method

.method findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .locals 1
    .param p1, "fullName"    # Ljava/lang/String;

    .prologue
    .line 1663
    sget-object v0, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    return-object v0
.end method

.method findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .locals 4
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    .prologue
    .line 1671
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 1672
    .local v2, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_2

    .line 1673
    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v3, :cond_1

    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isType(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isAggregate(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v3, v2

    .line 1691
    :goto_0
    return-object v3

    .line 1680
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/Descriptors$DescriptorPool;->dependencies:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1681
    .local v0, "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;

    move-result-object v3

    iget-object v3, v3, Lcom/google/protobuf/Descriptors$DescriptorPool;->descriptorsByName:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    check-cast v2, Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .line 1682
    .restart local v2    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v2, :cond_3

    .line 1683
    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-eq p2, v3, :cond_5

    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isType(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    sget-object v3, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    if-ne p2, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->isAggregate(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_5
    move-object v3, v2

    .line 1686
    goto :goto_0

    .line 1691
    .end local v0    # "dependency":Lcom/google/protobuf/Descriptors$FileDescriptor;
    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isAggregate(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z
    .locals 1
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .prologue
    .line 1702
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$Descriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$DescriptorPool$PackageDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isType(Lcom/google/protobuf/Descriptors$GenericDescriptor;)Z
    .locals 1
    .param p1, "descriptor"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;

    .prologue
    .line 1696
    instance-of v0, p1, Lcom/google/protobuf/Descriptors$Descriptor;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method lookupSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$GenericDescriptor;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "relativeTo"    # Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .param p3, "filter"    # Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 1721
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1723
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v3

    .line 1783
    .local v3, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_0
    :goto_0
    if-nez v3, :cond_5

    .line 1784
    new-instance v5, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" is not defined."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p2, v6, v7}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v5

    .line 1738
    .end local v3    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    :cond_1
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1740
    .local v2, "firstPartLength":I
    if-ne v2, v7, :cond_2

    .line 1741
    move-object v1, p1

    .line 1748
    .local v1, "firstPart":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1753
    .local v4, "scopeToTry":Ljava/lang/StringBuilder;
    :goto_2
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1754
    .local v0, "dotpos":I
    if-ne v0, v7, :cond_3

    .line 1755
    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v3

    .line 1756
    .restart local v3    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    goto :goto_0

    .line 1743
    .end local v0    # "dotpos":I
    .end local v1    # "firstPart":Ljava/lang/String;
    .end local v3    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    .end local v4    # "scopeToTry":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "firstPart":Ljava/lang/String;
    goto :goto_1

    .line 1758
    .restart local v0    # "dotpos":I
    .restart local v4    # "scopeToTry":Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1761
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;

    invoke-virtual {p0, v5, v6}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v3

    .line 1765
    .restart local v3    # "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v3, :cond_4

    .line 1766
    if-eq v2, v7, :cond_0

    .line 1770
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1771
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;Lcom/google/protobuf/Descriptors$DescriptorPool$SearchFilter;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v3

    goto :goto_0

    .line 1778
    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 1787
    .end local v0    # "dotpos":I
    .end local v1    # "firstPart":Ljava/lang/String;
    .end local v2    # "firstPartLength":I
    .end local v4    # "scopeToTry":Ljava/lang/StringBuilder;
    :cond_5
    return-object v3
.end method
