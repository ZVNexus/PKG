.class public interface abstract Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;
.super Ljava/lang/Object;
.source "PackageInstallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/wear/PackageInstallerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InstallListener"
.end annotation


# virtual methods
.method public abstract installBeginning()V
.end method

.method public abstract installFailed(ILjava/lang/String;)V
.end method

.method public abstract installSucceeded()V
.end method
