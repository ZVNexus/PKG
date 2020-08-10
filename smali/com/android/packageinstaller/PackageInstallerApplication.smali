.class public Lcom/android/packageinstaller/PackageInstallerApplication;
.super Landroid/app/Application;
.source "PackageInstallerApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    return-void
.end method
