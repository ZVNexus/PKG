.class Lorg/tukaani/xz/DeltaDecoder;
.super Lorg/tukaani/xz/DeltaCoder;
.source "DeltaDecoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterDecoder;


# instance fields
.field private final distance:I


# direct methods
.method constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/tukaani/xz/DeltaCoder;-><init>()V

    .line 18
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 22
    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p1, v1

    iput p1, p0, Lorg/tukaani/xz/DeltaDecoder;->distance:I

    return-void

    .line 19
    :cond_0
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string p1, "Unsupported Delta filter properties"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 0

    .line 30
    new-instance p2, Lorg/tukaani/xz/DeltaInputStream;

    iget p0, p0, Lorg/tukaani/xz/DeltaDecoder;->distance:I

    invoke-direct {p2, p1, p0}, Lorg/tukaani/xz/DeltaInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object p2
.end method

.method public getMemoryUsage()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
