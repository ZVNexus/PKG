.class Lcom/android/packageinstaller/television/UninstallAppProgress$MessageHandler;
.super Landroid/os/Handler;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/television/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/packageinstaller/television/UninstallAppProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/packageinstaller/television/UninstallAppProgress;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress$MessageHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress$MessageHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/packageinstaller/television/UninstallAppProgress;

    if-eqz p0, :cond_0

    .line 94
    invoke-static {p0, p1}, Lcom/android/packageinstaller/television/UninstallAppProgress;->access$000(Lcom/android/packageinstaller/television/UninstallAppProgress;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
