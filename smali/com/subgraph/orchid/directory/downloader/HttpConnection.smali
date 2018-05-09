.class public Lcom/subgraph/orchid/directory/downloader/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# static fields
.field private static final CHARSET:Ljava/nio/charset/Charset;

.field private static final COMPRESSION_SUFFIX:Ljava/lang/String; = ".z"

.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "Content-Length"

.field private static final HTTP_RESPONSE_REGEX:Ljava/lang/String; = "HTTP/1\\.(\\d) (\\d+) (.*)"


# instance fields
.field private bodyCompressed:Z

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hostname:Ljava/lang/String;

.field private final input:Ljava/io/InputStream;

.field private messageBody:Ljava/nio/ByteBuffer;

.field private final output:Ljava/io/OutputStream;

.field private responseCode:I

.field private responseMessage:Ljava/lang/String;

.field private final stream:Lcom/subgraph/orchid/Stream;

.field private final useCompression:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/Stream;)V
    .locals 1
    .param p1, "stream"    # Lcom/subgraph/orchid/Stream;

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;-><init>(Lcom/subgraph/orchid/Stream;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/Stream;Z)V
    .locals 1
    .param p1, "stream"    # Lcom/subgraph/orchid/Stream;
    .param p2, "useCompression"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->getHostnameFromStream(Lcom/subgraph/orchid/Stream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->hostname:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->stream:Lcom/subgraph/orchid/Stream;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    .line 45
    invoke-interface {p1}, Lcom/subgraph/orchid/Stream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->input:Ljava/io/InputStream;

    .line 46
    invoke-interface {p1}, Lcom/subgraph/orchid/Stream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->output:Ljava/io/OutputStream;

    .line 47
    iput-boolean p2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->useCompression:Z

    .line 48
    return-void
.end method

.method private bytesToBody([B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "bs"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bodyCompressed:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->decompressBuffer([B)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method private decompressBuffer([B)[B
    .locals 8
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 198
    .local v4, "output":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 199
    .local v1, "decompressor":Ljava/util/zip/Inflater;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 200
    .local v0, "decompressBuffer":[B
    invoke-virtual {v1, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 203
    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    .local v3, "n":I
    if-eqz v3, :cond_0

    .line 204
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v3    # "n":I
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Ljava/util/zip/DataFormatException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error decompressing http body: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 206
    .end local v2    # "e":Ljava/util/zip/DataFormatException;
    .restart local v3    # "n":I
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private static getHostnameFromStream(Lcom/subgraph/orchid/Stream;)Ljava/lang/String;
    .locals 4
    .param p0, "stream"    # Lcom/subgraph/orchid/Stream;

    .prologue
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lcom/subgraph/orchid/Stream;->getCircuit()Lcom/subgraph/orchid/Circuit;

    move-result-object v2

    invoke-interface {v2}, Lcom/subgraph/orchid/Circuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v2

    invoke-interface {v2}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v0

    .line 53
    .local v0, "r":Lcom/subgraph/orchid/Router;
    if-nez v0, :cond_0

    .line 54
    const/4 v2, 0x0

    .line 61
    :goto_0
    return-object v2

    .line 56
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/subgraph/orchid/data/IPv4Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v2

    const/16 v3, 0x50

    if-eq v2, v3, :cond_1

    .line 58
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {v0}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private nextResponseLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readInputLine()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 151
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    const-string v2, "Unexpected EOF reading HTTP response"

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    return-object v0
.end method

.method private processContentEncodingHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "identity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bodyCompressed:Z

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v1, "deflate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "x-deflate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bodyCompressed:Z

    goto :goto_0

    .line 173
    :cond_3
    new-instance v1, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized content encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readAll([B)V
    .locals 5
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, "offset":I
    array-length v2, p1

    .line 225
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_1

    .line 226
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->input:Ljava/io/InputStream;

    invoke-virtual {v3, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 227
    .local v0, "n":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 228
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected early EOF reading HTTP body"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_0
    add-int/2addr v1, v0

    .line 231
    sub-int/2addr v2, v0

    .line 232
    goto :goto_0

    .line 233
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private readBody()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->processContentEncodingHeader()V

    .line 159
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readBodyFromContentLength()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readBodyUntilEOF()V

    goto :goto_0
.end method

.method private readBodyFromContentLength()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    const-string v3, "Content-Length"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, "bodyLength":I
    new-array v0, v1, [B

    .line 179
    .local v0, "bodyBuffer":[B
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readAll([B)V

    .line 180
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bytesToBody([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->messageBody:Ljava/nio/ByteBuffer;

    .line 181
    return-void
.end method

.method private readBodyUntilEOF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readToEOF()[B

    move-result-object v0

    .line 185
    .local v0, "bodyBuffer":[B
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->bytesToBody([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->messageBody:Ljava/nio/ByteBuffer;

    .line 186
    return-void
.end method

.method private readHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 136
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 138
    :goto_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->nextResponseLine()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 140
    return-void

    .line 141
    :cond_0
    const-string v2, ": "

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "args":[Ljava/lang/String;
    array-length v2, v0

    if-eq v2, v5, :cond_1

    .line 143
    new-instance v2, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse HTTP header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->headers:Ljava/util/Map;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readInputLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v1, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->input:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 239
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    :goto_1
    return-object v2

    .line 241
    :cond_1
    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    .line 242
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private readStatusLine()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 116
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->nextResponseLine()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "line":Ljava/lang/String;
    const-string v6, "HTTP/1\\.(\\d) (\\d+) (.*)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 118
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 119
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 120
    :cond_0
    new-instance v6, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing HTTP response line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 123
    :cond_1
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, "n1":I
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 125
    .local v4, "n2":I
    if-eqz v3, :cond_2

    if-ne v3, v7, :cond_3

    :cond_2
    const/16 v6, 0x64

    if-lt v4, v6, :cond_3

    const/16 v6, 0x258

    if-lt v4, v6, :cond_4

    .line 127
    :cond_3
    new-instance v6, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse header: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v3    # "n1":I
    .end local v4    # "n2":I
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse header: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 128
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "n1":I
    .restart local v4    # "n2":I
    :cond_4
    :try_start_1
    iput v4, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->responseCode:I

    .line 129
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->responseMessage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    return-void
.end method

.method private readToEOF()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 213
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 214
    .local v2, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x800

    new-array v0, v3, [B

    .line 216
    .local v0, "buffer":[B
    :goto_0
    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->input:Ljava/io/InputStream;

    array-length v4, v0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "n":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 217
    invoke-virtual {v2, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->stream:Lcom/subgraph/orchid/Stream;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->stream:Lcom/subgraph/orchid/Stream;

    invoke-interface {v0}, Lcom/subgraph/orchid/Stream;->close()V

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->hostname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->hostname:Ljava/lang/String;

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "(none)"

    goto :goto_0
.end method

.method public getMessageBody()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->messageBody:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->responseCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public readResponse()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/subgraph/orchid/directory/downloader/DirectoryRequestFailedException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readStatusLine()V

    .line 92
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readHeaders()V

    .line 93
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->readBody()V

    .line 94
    return-void
.end method

.method public sendGetRequest(Ljava/lang/String;)V
    .locals 4
    .param p1, "request"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "GET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-boolean v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->useCompression:Z

    if-eqz v2, :cond_0

    const-string v2, ".z"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    const-string v2, ".z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    const-string v2, " HTTP/1.0\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->hostname:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_1
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "requestLine":Ljava/lang/String;
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->output:Ljava/io/OutputStream;

    sget-object v3, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 79
    iget-object v2, p0, Lcom/subgraph/orchid/directory/downloader/HttpConnection;->output:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 80
    return-void
.end method
