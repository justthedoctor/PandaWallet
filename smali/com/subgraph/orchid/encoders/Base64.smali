.class public Lcom/subgraph/orchid/encoders/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final encoder:Lcom/subgraph/orchid/encoders/Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/subgraph/orchid/encoders/Base64Encoder;

    invoke-direct {v0}, Lcom/subgraph/orchid/encoders/Base64Encoder;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/encoders/Base64;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/subgraph/orchid/encoders/Base64;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    invoke-interface {v0, p0, p1}, Lcom/subgraph/orchid/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v2, v3, 0x3

    .line 94
    .local v2, "len":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 98
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/subgraph/orchid/encoders/Base64;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    invoke-interface {v3, p0, v0}, Lcom/subgraph/orchid/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/subgraph/orchid/encoders/DecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to decode base64 string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/subgraph/orchid/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static decode([B)[B
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 70
    array-length v3, p0

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v2, v3, 0x3

    .line 71
    .local v2, "len":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 75
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/subgraph/orchid/encoders/Base64;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-interface {v3, p0, v4, v5, v0}, Lcom/subgraph/orchid/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/subgraph/orchid/encoders/DecoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to decode base64 data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/subgraph/orchid/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static encode([BIILjava/io/OutputStream;)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/subgraph/orchid/encoders/Base64;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/subgraph/orchid/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static encode([BLjava/io/OutputStream;)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/subgraph/orchid/encoders/Base64;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/subgraph/orchid/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static encode([B)[B
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 19
    array-length v3, p0

    add-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v2, v3, 0x4

    .line 20
    .local v2, "len":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 24
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Lcom/subgraph/orchid/encoders/Base64;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-interface {v3, p0, v4, v5, v0}, Lcom/subgraph/orchid/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 26
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/subgraph/orchid/encoders/EncoderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception encoding base64 string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/subgraph/orchid/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
