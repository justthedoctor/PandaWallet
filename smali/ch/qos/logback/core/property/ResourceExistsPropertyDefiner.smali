.class public Lch/qos/logback/core/property/ResourceExistsPropertyDefiner;
.super Lch/qos/logback/core/PropertyDefinerBase;


# instance fields
.field resourceStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/PropertyDefinerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getPropertyValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/property/ResourceExistsPropertyDefiner;->resourceStr:Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The \"resource\" property must be set."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/property/ResourceExistsPropertyDefiner;->addError(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/property/ResourceExistsPropertyDefiner;->resourceStr:Ljava/lang/String;

    invoke-static {v0}, Lch/qos/logback/core/util/Loader;->getResourceBySelfClassLoader(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lch/qos/logback/core/property/ResourceExistsPropertyDefiner;->booleanAsStr(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/property/ResourceExistsPropertyDefiner;->resourceStr:Ljava/lang/String;

    return-object v0
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/property/ResourceExistsPropertyDefiner;->resourceStr:Ljava/lang/String;

    return-void
.end method
