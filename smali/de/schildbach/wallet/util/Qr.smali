.class public Lde/schildbach/wallet/util/Qr;
.super Ljava/lang/Object;
.source "Qr.java"


# static fields
.field private static final QR_CODE_WRITER:Lcom/google/zxing/qrcode/QRCodeWriter;

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sput-object v0, Lde/schildbach/wallet/util/Qr;->QR_CODE_WRITER:Lcom/google/zxing/qrcode/QRCodeWriter;

    .line 50
    const-class v0, Lde/schildbach/wallet/util/Qr;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lde/schildbach/wallet/util/Qr;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 19
    .param p0, "content"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p1, "size"    # I

    .prologue
    .line 56
    :try_start_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 57
    .local v6, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lde/schildbach/wallet/util/Qr;->QR_CODE_WRITER:Lcom/google/zxing/qrcode/QRCodeWriter;

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v16

    .line 61
    .local v16, "result":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    .line 62
    .local v10, "width":I
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 63
    .local v14, "height":I
    mul-int v1, v10, v14

    new-array v8, v1, [I

    .line 65
    .local v8, "pixels":[I
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v14, :cond_2

    .line 67
    mul-int v15, v18, v10

    .line 68
    .local v15, "offset":I
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v10, :cond_1

    .line 70
    add-int v2, v15, v17

    invoke-virtual/range {v16 .. v18}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    :goto_2
    aput v1, v8, v2

    .line 68
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 70
    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 65
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 74
    .end local v15    # "offset":I
    .end local v17    # "x":I
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 75
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v6    # "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "pixels":[I
    .end local v10    # "width":I
    .end local v14    # "height":I
    .end local v16    # "result":Lcom/google/zxing/common/BitMatrix;
    .end local v18    # "y":I
    :goto_3
    return-object v7

    .line 78
    :catch_0
    move-exception v17

    .line 80
    .local v17, "x":Lcom/google/zxing/WriterException;
    sget-object v1, Lde/schildbach/wallet/util/Qr;->log:Lorg/slf4j/Logger;

    const-string v2, "problem creating qr code"

    move-object/from16 v0, v17

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public static decodeBinary(Ljava/lang/String;)[B
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lde/schildbach/wallet/util/Base43;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeDecompressBinary(Ljava/lang/String;)[B
    .locals 11
    .param p0, "content"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 116
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_1

    move v6, v7

    .line 117
    .local v6, "useCompression":Z
    :goto_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lde/schildbach/wallet/util/Base43;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 119
    .local v2, "bytes":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 120
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v6, :cond_0

    .line 121
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    move-object v3, v4

    .line 122
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x1000

    new-array v1, v7, [B

    .line 126
    .local v1, "buf":[B
    :goto_1
    const/4 v7, -0x1

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    if-eq v7, v5, :cond_2

    .line 127
    invoke-virtual {v0, v1, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "bytes":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "read":I
    .end local v6    # "useCompression":Z
    :cond_1
    move v6, v8

    .line 116
    goto :goto_0

    .line 128
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "bytes":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "read":I
    .restart local v6    # "useCompression":Z
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 129
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method public static encodeBinary([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-static {p0}, Lde/schildbach/wallet/util/Base43;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeCompressBinary([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 89
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v6, p0

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 90
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 91
    .local v1, "gos":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 92
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 94
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 95
    .local v2, "gzippedBytes":[B
    array-length v6, v2

    array-length v7, p0

    if-ge v6, v7, :cond_0

    const/4 v4, 0x1

    .line 97
    .local v4, "useCompressioon":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v3, "str":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_1

    const/16 v6, 0x5a

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    if-eqz v4, :cond_2

    .end local v2    # "gzippedBytes":[B
    :goto_2
    invoke-static {v2}, Lde/schildbach/wallet/util/Base43;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 95
    .end local v3    # "str":Ljava/lang/StringBuilder;
    .end local v4    # "useCompressioon":Z
    .restart local v2    # "gzippedBytes":[B
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 98
    .restart local v3    # "str":Ljava/lang/StringBuilder;
    .restart local v4    # "useCompressioon":Z
    :cond_1
    const/16 v6, 0x2d

    goto :goto_1

    :cond_2
    move-object v2, p0

    .line 99
    goto :goto_2

    .line 103
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v2    # "gzippedBytes":[B
    .end local v3    # "str":Ljava/lang/StringBuilder;
    .end local v4    # "useCompressioon":Z
    :catch_0
    move-exception v5

    .line 105
    .local v5, "x":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
