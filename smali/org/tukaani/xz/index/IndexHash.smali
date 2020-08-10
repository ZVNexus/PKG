.class public Lorg/tukaani/xz/index/IndexHash;
.super Lorg/tukaani/xz/index/IndexBase;
.source "IndexHash.java"


# instance fields
.field private hash:Lorg/tukaani/xz/check/Check;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    invoke-direct {p0, v0}, Lorg/tukaani/xz/index/IndexBase;-><init>(Lorg/tukaani/xz/XZIOException;)V

    .line 29
    :try_start_0
    new-instance v0, Lorg/tukaani/xz/check/SHA256;

    invoke-direct {v0}, Lorg/tukaani/xz/check/SHA256;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 31
    :catch_0
    new-instance v0, Lorg/tukaani/xz/check/CRC32;

    invoke-direct {v0}, Lorg/tukaani/xz/check/CRC32;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    :goto_0
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lorg/tukaani/xz/index/IndexBase;->add(JJ)V

    const/16 v0, 0x10

    .line 39
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 42
    iget-object p0, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/check/Check;->update([B)V

    return-void
.end method

.method public bridge synthetic getIndexSize()J
    .locals 2

    .line 22
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getStreamSize()J
    .locals 2

    .line 22
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getStreamSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public validate(Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 50
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v2, p1, v0}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 56
    invoke-static {v2}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v3

    .line 57
    iget-wide v5, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_7

    .line 63
    new-instance p1, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {p1}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    const-wide/16 v3, 0x0

    .line 64
    :goto_0
    iget-wide v5, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    cmp-long v5, v3, v5

    const-string v6, "XZ Index is corrupt"

    if-gez v5, :cond_1

    .line 65
    invoke-static {v2}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v7

    .line 66
    invoke-static {v2}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v9

    .line 69
    :try_start_0
    invoke-virtual {p1, v7, v8, v9, v10}, Lorg/tukaani/xz/index/IndexHash;->add(JJ)V
    :try_end_0
    .catch Lorg/tukaani/xz/XZIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iget-wide v7, p1, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    iget-wide v9, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    cmp-long v5, v7, v9

    if-gtz v5, :cond_0

    iget-wide v7, p1, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    iget-wide v9, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    cmp-long v5, v7, v9

    if-gtz v5, :cond_0

    iget-wide v7, p1, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    iget-wide v9, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    cmp-long v5, v7, v9

    if-gtz v5, :cond_0

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 77
    :cond_0
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0, v6}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :catch_0
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0, v6}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_1
    iget-wide v3, p1, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    iget-wide v7, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_6

    iget-wide v3, p1, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    iget-wide v7, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_6

    iget-wide v3, p1, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    iget-wide v7, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_6

    iget-object p1, p1, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    .line 83
    invoke-virtual {p1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object p1

    iget-object v3, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v3}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 87
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexPaddingSize()I

    move-result p0

    :goto_1
    if-lez p0, :cond_3

    .line 89
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 90
    :cond_2
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0, v6}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_3
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    :goto_2
    const/4 p0, 0x4

    if-ge v1, p0, :cond_5

    mul-int/lit8 p0, v1, 0x8

    ushr-long v4, v2, p0

    const-wide/16 v7, 0xff

    and-long/2addr v4, v7

    .line 95
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p0

    int-to-long v7, p0

    cmp-long p0, v4, v7

    if-nez p0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    :cond_4
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0, v6}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void

    .line 84
    :cond_6
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0, v6}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_7
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    const-string p1, "XZ Block Header or the start of XZ Index is corrupt"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
