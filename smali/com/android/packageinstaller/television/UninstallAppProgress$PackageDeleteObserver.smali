.class Lcom/android/packageinstaller/television/UninstallAppProgress$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/television/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/television/UninstallAppProgress;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/television/UninstallAppProgress;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/packageinstaller/television/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/television/UninstallAppProgress;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/television/UninstallAppProgress;Lcom/android/packageinstaller/television/UninstallAppProgress$1;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/television/UninstallAppProgress$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/television/UninstallAppProgress;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/television/UninstallAppProgress;

    invoke-static {v0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->access$200(Lcom/android/packageinstaller/television/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 312
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 313
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 314
    iget-object p0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/television/UninstallAppProgress;

    invoke-static {p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->access$200(Lcom/android/packageinstaller/television/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
