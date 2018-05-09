.class public Lbrut/androlib/res/decoder/ResAttrDecoder;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(IILjava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbrut/androlib/AndrolibException;
        }
    .end annotation

    if-eqz p3, :cond_0

    :goto_0
    return-object p3

    :cond_0
    const-string p3, ""

    goto :goto_0
.end method
