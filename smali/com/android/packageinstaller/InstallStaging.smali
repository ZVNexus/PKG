.class public Lcom/android/packageinstaller/InstallStaging;
.super Lcom/android/internal/app/AlertActivity;
.source "InstallStaging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;,
        Lcom/android/packageinstaller/InstallStaging$ErrorDialog;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InstallStaging"


# instance fields
.field private mStagedFile:Ljava/io/File;

.field private mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/InstallStaging;)Ljava/io/File;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/packageinstaller/InstallStaging;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/InstallStaging;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallStaging;->showError()V

    return-void
.end method

.method private showError()V
    .locals 3

    .line 126
    new-instance v0, Lcom/android/packageinstaller/InstallStaging$ErrorDialog;

    invoke-direct {v0}, Lcom/android/packageinstaller/InstallStaging$ErrorDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    const/4 v2, -0x2

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/AlertActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$InstallStaging(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/android/packageinstaller/InstallStaging;->mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setView(I)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/packageinstaller/-$$Lambda$InstallStaging$-n_J6648NTcOllT9pIbsLwncgvU;

    invoke-direct {v2, p0}, Lcom/android/packageinstaller/-$$Lambda$InstallStaging$-n_J6648NTcOllT9pIbsLwncgvU;-><init>(Lcom/android/packageinstaller/InstallStaging;)V

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const v0, 0x7f0800fc

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "STAGED_FILE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    .line 78
    iget-object p1, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    iput-object v3, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 86
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 94
    :try_start_0
    invoke-static {p0}, Lcom/android/packageinstaller/TemporaryFileManager;->getStagedFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallStaging;->showError()V

    return-void

    .line 101
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;-><init>(Lcom/android/packageinstaller/InstallStaging;Lcom/android/packageinstaller/InstallStaging$1;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    .line 102
    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagingTask:Lcom/android/packageinstaller/InstallStaging$StagingAsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    iget-object p0, p0, Lcom/android/packageinstaller/InstallStaging;->mStagedFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "STAGED_FILE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
