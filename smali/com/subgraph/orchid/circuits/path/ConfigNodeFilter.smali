.class public Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
.super Ljava/lang/Object;
.source "ConfigNodeFilter.java"

# interfaces
.implements Lcom/subgraph/orchid/circuits/path/RouterFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$CountryCodeFilter;,
        Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$NameFilter;,
        Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;,
        Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;
    }
.end annotation


# static fields
.field private static final ADDRESS_BITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final COUNTRYCODE_PATTERN:Ljava/util/regex/Pattern;

.field private static final IDENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final NETMASK_PATTERN:Ljava/util/regex/Pattern;

.field private static final ROUTERNAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/path/RouterFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "^(\\d+)\\.(\\d+)\\.(\\d+)\\.(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->NETMASK_PATTERN:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "^(\\d+\\.\\d+\\.\\d+\\.\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->ADDRESS_BITS_PATTERN:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, "^[A-Fa-f0-9]{40}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->IDENTITY_PATTERN:Ljava/util/regex/Pattern;

    .line 24
    const-string v0, "^\\{([A-Za-z]{2})\\}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->COUNTRYCODE_PATTERN:Ljava/util/regex/Pattern;

    .line 25
    const-string v0, "^\\w{1,19}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->ROUTERNAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/subgraph/orchid/circuits/path/RouterFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/path/RouterFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filterList:Ljava/util/List;

    .line 187
    return-void
.end method

.method private static createAddressFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v3, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->ADDRESS_BITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 141
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 144
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/subgraph/orchid/data/IPv4Address;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v2

    .line 145
    .local v2, "network":Lcom/subgraph/orchid/data/IPv4Address;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "bits":I
    new-instance v3, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;

    invoke-direct {v3, v2, v0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$MaskFilter;-><init>(Lcom/subgraph/orchid/data/IPv4Address;I)V

    return-object v3
.end method

.method private static createCountryCodeFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v1, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->COUNTRYCODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 159
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 162
    :cond_0
    new-instance v1, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$CountryCodeFilter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$CountryCodeFilter;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static createFilterFor(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isAddressString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createAddressFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isCountryCodeString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createCountryCodeFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isIdentityString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createIdentityFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isNameString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createNameFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static createFromStrings(Ljava/util/List;)Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/subgraph/orchid/circuits/path/RouterFilter;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->createFilterFor(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;

    move-result-object v0

    .line 176
    .local v0, "f":Lcom/subgraph/orchid/circuits/path/RouterFilter;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v0    # "f":Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;

    invoke-direct {v4, v1}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;-><init>(Ljava/util/List;)V

    return-object v4
.end method

.method private static createIdentityFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isIdentityString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/subgraph/orchid/data/HexDigest;->createFromString(Ljava/lang/String;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    .line 154
    .local v0, "identity":Lcom/subgraph/orchid/data/HexDigest;
    new-instance v1, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$IdentityFilter;-><init>(Lcom/subgraph/orchid/data/HexDigest;)V

    return-object v1
.end method

.method private static createNameFilter(Ljava/lang/String;)Lcom/subgraph/orchid/circuits/path/RouterFilter;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isNameString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 169
    :cond_0
    new-instance v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$NameFilter;

    invoke-direct {v0, p0}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter$NameFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static isAddressString(Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x0

    .line 87
    sget-object v4, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->NETMASK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 88
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v3

    .line 92
    :cond_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 93
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isValidOctetString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 97
    :cond_2
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->isValidMaskValue(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method static isCountryCodeString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->COUNTRYCODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static isIdentityString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->IDENTITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static isNameString(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->ROUTERNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static isValidMaskValue(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "n":I
    if-lez v0, :cond_0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isValidOctetString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, "n":I
    if-ltz v0, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter(Lcom/subgraph/orchid/Router;)Z
    .locals 3
    .param p1, "router"    # Lcom/subgraph/orchid/Router;

    .prologue
    .line 190
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/circuits/path/RouterFilter;

    .line 191
    .local v0, "f":Lcom/subgraph/orchid/circuits/path/RouterFilter;
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/circuits/path/RouterFilter;->filter(Lcom/subgraph/orchid/Router;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/4 v2, 0x1

    .line 195
    .end local v0    # "f":Lcom/subgraph/orchid/circuits/path/RouterFilter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/path/ConfigNodeFilter;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
