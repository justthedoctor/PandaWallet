.class public interface abstract Lcom/subgraph/orchid/directory/parsing/DocumentFieldParser;
.super Ljava/lang/Object;
.source "DocumentFieldParser.java"


# virtual methods
.method public abstract argumentsRemaining()I
.end method

.method public abstract endSignedEntity()V
.end method

.method public abstract getCurrentKeyword()Ljava/lang/String;
.end method

.method public abstract getRawDocument()Ljava/lang/String;
.end method

.method public abstract getSignatureMessageDigest()Lcom/subgraph/orchid/crypto/TorMessageDigest;
.end method

.method public abstract getSignatureMessageDigest256()Lcom/subgraph/orchid/crypto/TorMessageDigest;
.end method

.method public abstract logDebug(Ljava/lang/String;)V
.end method

.method public abstract logError(Ljava/lang/String;)V
.end method

.method public abstract logWarn(Ljava/lang/String;)V
.end method

.method public abstract parseAddress()Lcom/subgraph/orchid/data/IPv4Address;
.end method

.method public abstract parseBase32Digest()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract parseBase64Data()[B
.end method

.method public abstract parseBoolean()Z
.end method

.method public abstract parseConcatenatedString()Ljava/lang/String;
.end method

.method public abstract parseFingerprint()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract parseHexDigest()Lcom/subgraph/orchid/data/HexDigest;
.end method

.method public abstract parseInteger()I
.end method

.method public abstract parseInteger(Ljava/lang/String;)I
.end method

.method public abstract parseIntegerList()[I
.end method

.method public abstract parseNickname()Ljava/lang/String;
.end method

.method public abstract parseNtorPublicKey()[B
.end method

.method public abstract parseObject()Lcom/subgraph/orchid/directory/parsing/DocumentObject;
.end method

.method public abstract parseParameter()Lcom/subgraph/orchid/directory/parsing/NameIntegerParameter;
.end method

.method public abstract parsePort()I
.end method

.method public abstract parsePort(Ljava/lang/String;)I
.end method

.method public abstract parsePublicKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
.end method

.method public abstract parseSignature()Lcom/subgraph/orchid/crypto/TorSignature;
.end method

.method public abstract parseString()Ljava/lang/String;
.end method

.method public abstract parseTimestamp()Lcom/subgraph/orchid/data/Timestamp;
.end method

.method public abstract processDocument()V
.end method

.method public abstract resetRawDocument()V
.end method

.method public abstract resetRawDocument(Ljava/lang/String;)V
.end method

.method public abstract setDelimiter(Ljava/lang/String;)V
.end method

.method public abstract setHandler(Lcom/subgraph/orchid/directory/parsing/DocumentParsingHandler;)V
.end method

.method public abstract setRecognizeOpt()V
.end method

.method public abstract setSignatureIgnoreToken(Ljava/lang/String;)V
.end method

.method public abstract startSignedEntity()V
.end method

.method public abstract verifyExpectedArgumentCount(Ljava/lang/String;I)V
.end method

.method public abstract verifySignedEntity(Lcom/subgraph/orchid/crypto/TorPublicKey;Lcom/subgraph/orchid/crypto/TorSignature;)Z
.end method
