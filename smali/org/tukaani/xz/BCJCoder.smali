.class abstract Lorg/tukaani/xz/BCJCoder;
.super Ljava/lang/Object;
.source "BCJCoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterCoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBCJFilterID(J)Z
    .locals 2

    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x9

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public changesSize()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public lastOK()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public nonLastOK()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
