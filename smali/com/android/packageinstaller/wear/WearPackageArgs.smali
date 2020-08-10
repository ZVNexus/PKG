.class public Lcom/android/packageinstaller/wear/WearPackageArgs;
.super Ljava/lang/Object;
.source "WearPackageArgs.java"


# direct methods
.method public static checkPerms(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_CHECK_PERMS"

    .line 69
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getAssetUri(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_ASSET_URI"

    .line 61
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public static getCompanionDeviceVersion(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_KEY_COMPANION_DEVICE_VERSION"

    .line 81
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCompanionSdkVersion(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_KEY_COMPANION_SDK_VERSION"

    .line 77
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getCompressionAlg(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_KEY_COMPRESSION_ALG"

    .line 85
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageName(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_PACKAGE_NAME"

    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPermUri(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_PERM_URI"

    .line 65
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method public static getStartId(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_START_ID"

    .line 89
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setPackageName(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_PACKAGE_NAME"

    .line 56
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static setStartId(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_START_ID"

    .line 97
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static skipIfLowerVersion(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.google.android.clockwork.EXTRA_SKIP_IF_LOWER_VERSION"

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static skipIfSameVersion(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "com.google.android.clockwork.EXTRA_SKIP_IF_SAME_VERSION"

    .line 73
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
