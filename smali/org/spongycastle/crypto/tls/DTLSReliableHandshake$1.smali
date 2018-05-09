.class Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;
.super Ljava/lang/Object;
.source "DTLSReliableHandshake.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedHandshakeRecord(I[BII)V
    .locals 9
    .param p1, "epoch"    # I
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/16 v3, 0xc

    if-ge p4, v3, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    add-int/lit8 v3, p3, 0x9

    invoke-static {p2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v6

    .line 252
    .local v6, "fragment_length":I
    add-int/lit8 v3, v6, 0xc

    if-ne p4, v3, :cond_0

    .line 256
    add-int/lit8 v3, p3, 0x4

    invoke-static {p2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v8

    .line 257
    .local v8, "seq":I
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->access$100(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)I

    move-result v3

    if-ge v8, v3, :cond_0

    .line 262
    invoke-static {p2, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    .line 265
    .local v1, "msg_type":S
    const/16 v3, 0x14

    if-ne v1, v3, :cond_2

    const/4 v7, 0x1

    .line 266
    .local v7, "expectedEpoch":I
    :goto_1
    if-ne p1, v7, :cond_0

    .line 271
    add-int/lit8 v3, p3, 0x1

    invoke-static {p2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v2

    .line 272
    .local v2, "length":I
    add-int/lit8 v3, p3, 0x6

    invoke-static {p2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v5

    .line 273
    .local v5, "fragment_offset":I
    add-int v3, v5, v6

    if-gt v3, v2, :cond_0

    .line 278
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->access$200(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {v8}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/tls/DTLSReassembler;

    .line 279
    .local v0, "reassembler":Lorg/spongycastle/crypto/tls/DTLSReassembler;
    if-eqz v0, :cond_0

    .line 281
    add-int/lit8 v4, p3, 0xc

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/DTLSReassembler;->contributeFragment(SI[BIII)V

    .line 283
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->access$200(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->access$300(Ljava/util/Hashtable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->access$400(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)V

    .line 286
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$1;->this$0:Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->access$200(Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;->access$500(Ljava/util/Hashtable;)V

    goto :goto_0

    .line 265
    .end local v0    # "reassembler":Lorg/spongycastle/crypto/tls/DTLSReassembler;
    .end local v2    # "length":I
    .end local v5    # "fragment_offset":I
    .end local v7    # "expectedEpoch":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method
