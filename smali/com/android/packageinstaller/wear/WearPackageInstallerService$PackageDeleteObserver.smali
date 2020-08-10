.class Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "WearPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/wear/WearPackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field private mStartId:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 543
    iput-object p2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 544
    iput p3, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mStartId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;ILcom/android/packageinstaller/wear/WearPackageInstallerService$1;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1, p2, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "WearPkgInstallerService"

    if-ltz p2, :cond_0

    .line 550
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was uninstalled."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package uninstall failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", returnCode "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :goto_0
    iget-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object p2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mStartId:I

    invoke-static {p1, p2, p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->access$400(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget p0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mStartId:I

    invoke-static {p2, v0, p0}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->access$400(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    throw p1
.end method
