.class public Lcom/subgraph/orchid/encoders/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final encoder:Lcom/subgraph/orchid/encoders/Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/subgraph/orchid/encoders/HexEncoder;

    invoke-direct {v0}, Lcom/subgraph/orchid/encoders/HexEncoder;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/encoders/Hex;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

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
    .line 129
    sget-object v0, Lcom/subgraph/orchid/encoders/Hex;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    invoke-interface {v0, p0, p1}, Lcom/subgraph/orchid/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Lcom/subgraph/orchid/encoders/Hex;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    invoke-interface {v2, p0, v0}, Lcom/subgraph/orchid/encoders/Encoder;->decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 110
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/subgraph/orchid/encoders/DecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception decoding Hex string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/subgraph/orchid/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decode([B)[B
    .locals 5
    .param p0, "data"    # [B

    .prologue
    .line 82
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Lcom/subgraph/orchid/encoders/Hex;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    const/4 v3, 0x0

    array-length v4, p0

    invoke-interface {v2, p0, v3, v4, v0}, Lcom/subgraph/orchid/encoders/Encoder;->decode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 88
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/subgraph/orchid/encoders/DecoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception decoding Hex data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/subgraph/orchid/encoders/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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
    .line 71
    sget-object v0, Lcom/subgraph/orchid/encoders/Hex;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

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
    .line 56
    sget-object v0, Lcom/subgraph/orchid/encoders/Hex;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/subgraph/orchid/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public static encode([B)[B
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 19
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/subgraph/orchid/encoders/Hex;->encode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .prologue
    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Lcom/subgraph/orchid/encoders/Hex;->encoder:Lcom/subgraph/orchid/encoders/Encoder;

    invoke-interface {v2, p0, p1, p2, v0}, Lcom/subgraph/orchid/encoders/Encoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 38
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/subgraph/orchid/encoders/EncoderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception encoding Hex string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/subgraph/orchid/encoders/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
