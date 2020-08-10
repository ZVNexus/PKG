.class Lcom/android/packageinstaller/InstallInstalling$InstallSessionCallback;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "InstallInstalling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallInstalling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallInstalling;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/InstallInstalling;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallSessionCallback;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/InstallInstalling;Lcom/android/packageinstaller/InstallInstalling$1;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallInstalling$InstallSessionCallback;-><init>(Lcom/android/packageinstaller/InstallInstalling;)V

    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    return-void
.end method

.method public onCreated(I)V
    .locals 0

    return-void
.end method

.method public onFinished(IZ)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling$InstallSessionCallback;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-static {v0}, Lcom/android/packageinstaller/InstallInstalling;->access$200(Lcom/android/packageinstaller/InstallInstalling;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 316
    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling$InstallSessionCallback;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    const p1, 0x7f0800eb

    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    const p1, 0x7fffffff

    .line 317
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    const/high16 p1, 0x4f000000

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 318
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method
