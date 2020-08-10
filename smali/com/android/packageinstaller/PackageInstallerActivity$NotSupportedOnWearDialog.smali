.class public Lcom/android/packageinstaller/PackageInstallerActivity$NotSupportedOnWearDialog;
.super Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotSupportedOnWearDialog"
.end annotation


# direct methods
.method static newInstance()Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;
    .locals 1

    const v0, 0x7f0c0079

    .line 660
    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;->newInstance(I)Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;

    move-result-object v0

    return-object v0
.end method
