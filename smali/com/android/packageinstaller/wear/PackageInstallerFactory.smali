.class public Lcom/android/packageinstaller/wear/PackageInstallerFactory;
.super Ljava/lang/Object;
.source "PackageInstallerFactory.java"


# static fields
.field private static sPackageInstaller:Lcom/android/packageinstaller/wear/PackageInstallerImpl;


# direct methods
.method public static declared-synchronized getPackageInstaller(Landroid/content/Context;)Lcom/android/packageinstaller/wear/PackageInstallerImpl;
    .locals 2

    const-class v0, Lcom/android/packageinstaller/wear/PackageInstallerFactory;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/android/packageinstaller/wear/PackageInstallerFactory;->sPackageInstaller:Lcom/android/packageinstaller/wear/PackageInstallerImpl;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/android/packageinstaller/wear/PackageInstallerImpl;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/wear/PackageInstallerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/packageinstaller/wear/PackageInstallerFactory;->sPackageInstaller:Lcom/android/packageinstaller/wear/PackageInstallerImpl;

    .line 34
    :cond_0
    sget-object p0, Lcom/android/packageinstaller/wear/PackageInstallerFactory;->sPackageInstaller:Lcom/android/packageinstaller/wear/PackageInstallerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
