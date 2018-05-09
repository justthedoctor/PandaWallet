.class public interface abstract Lcom/subgraph/orchid/Cell;
.super Ljava/lang/Object;
.source "Cell.java"


# static fields
.field public static final ADDRESS_TYPE_HOSTNAME:I = 0x0

.field public static final ADDRESS_TYPE_IPV4:I = 0x4

.field public static final ADRESS_TYPE_IPV6:I = 0x6

.field public static final AUTHENTICATE:I = 0x83

.field public static final AUTHORIZE:I = 0x84

.field public static final AUTH_CHALLENGE:I = 0x82

.field public static final CELL_HEADER_LEN:I = 0x3

.field public static final CELL_LEN:I = 0x200

.field public static final CELL_PAYLOAD_LEN:I = 0x1fd

.field public static final CELL_VAR_HEADER_LEN:I = 0x5

.field public static final CERTS:I = 0x81

.field public static final CREATE:I = 0x1

.field public static final CREATED:I = 0x2

.field public static final CREATED_FAST:I = 0x6

.field public static final CREATE_FAST:I = 0x5

.field public static final DESTROY:I = 0x4

.field public static final ERROR_CONNECTFAILED:I = 0x6

.field public static final ERROR_DESTROYED:I = 0xb

.field public static final ERROR_FINISHED:I = 0x9

.field public static final ERROR_HIBERNATING:I = 0x4

.field public static final ERROR_INTERNAL:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOSUCHSERVICE:I = 0xc

.field public static final ERROR_OR_CONN_CLOSED:I = 0x8

.field public static final ERROR_OR_IDENTITY:I = 0x7

.field public static final ERROR_PROTOCOL:I = 0x1

.field public static final ERROR_REQUESTED:I = 0x3

.field public static final ERROR_RESOURCELIMIT:I = 0x5

.field public static final ERROR_TIMEOUT:I = 0xa

.field public static final NETINFO:I = 0x8

.field public static final PADDING:I = 0x0

.field public static final RELAY:I = 0x3

.field public static final RELAY_EARLY:I = 0x9

.field public static final VERSIONS:I = 0x7

.field public static final VPADDING:I = 0x80


# virtual methods
.method public abstract cellBytesConsumed()I
.end method

.method public abstract cellBytesRemaining()I
.end method

.method public abstract getByte()I
.end method

.method public abstract getByteArray([B)V
.end method

.method public abstract getByteAt(I)I
.end method

.method public abstract getCellBytes()[B
.end method

.method public abstract getCircuitId()I
.end method

.method public abstract getCommand()I
.end method

.method public abstract getInt()I
.end method

.method public abstract getShort()I
.end method

.method public abstract getShortAt(I)I
.end method

.method public abstract putByte(I)V
.end method

.method public abstract putByteArray([B)V
.end method

.method public abstract putByteArray([BII)V
.end method

.method public abstract putByteAt(II)V
.end method

.method public abstract putInt(I)V
.end method

.method public abstract putShort(I)V
.end method

.method public abstract putShortAt(II)V
.end method

.method public abstract putString(Ljava/lang/String;)V
.end method

.method public abstract resetToPayload()V
.end method
