.class public interface abstract Lcom/subgraph/orchid/RelayCell;
.super Ljava/lang/Object;
.source "RelayCell.java"

# interfaces
.implements Lcom/subgraph/orchid/Cell;


# static fields
.field public static final DIGEST_OFFSET:I = 0x8

.field public static final HEADER_SIZE:I = 0xe

.field public static final LENGTH_OFFSET:I = 0xc

.field public static final REASON_CONNECTREFUSED:I = 0x3

.field public static final REASON_CONNRESET:I = 0xc

.field public static final REASON_DESTROY:I = 0x5

.field public static final REASON_DONE:I = 0x6

.field public static final REASON_EXITPOLICY:I = 0x4

.field public static final REASON_HIBERNATING:I = 0x9

.field public static final REASON_INTERNAL:I = 0xa

.field public static final REASON_MISC:I = 0x1

.field public static final REASON_NOROUTE:I = 0x8

.field public static final REASON_NOTDIRECTORY:I = 0xe

.field public static final REASON_RESOLVEFAILED:I = 0x2

.field public static final REASON_RESOURCELIMIT:I = 0xb

.field public static final REASON_TIMEOUT:I = 0x7

.field public static final REASON_TORPROTOCOL:I = 0xd

.field public static final RECOGNIZED_OFFSET:I = 0x4

.field public static final RELAY_BEGIN:I = 0x1

.field public static final RELAY_BEGIN_DIR:I = 0xd

.field public static final RELAY_COMMAND_ESTABLISH_INTRO:I = 0x20

.field public static final RELAY_COMMAND_ESTABLISH_RENDEZVOUS:I = 0x21

.field public static final RELAY_COMMAND_INTRODUCE1:I = 0x22

.field public static final RELAY_COMMAND_INTRODUCE2:I = 0x23

.field public static final RELAY_COMMAND_INTRODUCE_ACK:I = 0x28

.field public static final RELAY_COMMAND_INTRO_ESTABLISHED:I = 0x26

.field public static final RELAY_COMMAND_RENDEZVOUS1:I = 0x24

.field public static final RELAY_COMMAND_RENDEZVOUS2:I = 0x25

.field public static final RELAY_COMMAND_RENDEZVOUS_ESTABLISHED:I = 0x27

.field public static final RELAY_CONNECTED:I = 0x4

.field public static final RELAY_DATA:I = 0x2

.field public static final RELAY_DROP:I = 0xa

.field public static final RELAY_END:I = 0x3

.field public static final RELAY_EXTEND:I = 0x6

.field public static final RELAY_EXTEND2:I = 0xe

.field public static final RELAY_EXTENDED:I = 0x7

.field public static final RELAY_EXTENDED2:I = 0xf

.field public static final RELAY_RESOLVE:I = 0xb

.field public static final RELAY_RESOLVED:I = 0xc

.field public static final RELAY_SENDME:I = 0x5

.field public static final RELAY_TRUNCATE:I = 0x8

.field public static final RELAY_TRUNCATED:I = 0x9


# virtual methods
.method public abstract getCircuitNode()Lcom/subgraph/orchid/CircuitNode;
.end method

.method public abstract getPayloadBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract getRelayCommand()I
.end method

.method public abstract getStreamId()I
.end method

.method public abstract setDigest([B)V
.end method

.method public abstract setLength()V
.end method
