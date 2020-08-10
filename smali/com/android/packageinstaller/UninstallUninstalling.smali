.class public Lcom/android/packageinstaller/UninstallUninstalling;
.super Landroid/app/Activity;
.source "UninstallUninstalling.java"

# interfaces
.implements Lcom/android/packageinstaller/EventResultPersister$EventResultObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/UninstallUninstalling$UninstallUninstallingFragment;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UninstallUninstalling"


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCallback:Landroid/os/IBinder;

.field private mLabel:Ljava/lang/String;

.field private mReturnResult:Z

.field private mUninstallId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/UninstallUninstalling;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mLabel:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "dialog"

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mCallback:Landroid/os/IBinder;

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mReturnResult:Z

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.packageinstaller.extra.APP_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mLabel:Ljava/lang/String;

    const/4 v2, -0x1

    if-nez p1, :cond_2

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.packageinstaller.extra.KEEP_DATA"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.USER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 83
    invoke-virtual {v5, v6}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 85
    :cond_0
    new-instance v6, Lcom/android/packageinstaller/UninstallUninstalling$UninstallUninstallingFragment;

    invoke-direct {v6}, Lcom/android/packageinstaller/UninstallUninstalling$UninstallUninstallingFragment;-><init>()V

    .line 86
    invoke-virtual {v6, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 87
    invoke-virtual {v6, v5, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    const/high16 v0, -0x80000000

    .line 89
    invoke-static {p0, v0, p0}, Lcom/android/packageinstaller/UninstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/android/packageinstaller/EventResultPersister$EventResultObserver;)I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mUninstallId:I

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.packageinstaller.ACTION_UNINSTALL_COMMIT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    .line 93
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "EventResultPersister.EXTRA_ID"

    .line 94
    iget v6, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mUninstallId:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget v5, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mUninstallId:I

    const/high16 v6, 0x8000000

    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :cond_1
    or-int v8, v1, v3

    .line 104
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v5

    new-instance v6, Landroid/content/pm/VersionedPackage;

    iget-object p1, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, p1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    .line 108
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 104
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_2
    const-string v0, "com.android.packageinstaller.UNINSTALL_ID"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mUninstallId:I

    .line 114
    iget p1, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mUninstallId:I

    invoke-static {p0, p1, p0}, Lcom/android/packageinstaller/UninstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/android/packageinstaller/EventResultPersister$EventResultObserver;)I
    :try_end_2
    .catch Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 117
    sget-object v0, Lcom/android/packageinstaller/UninstallUninstalling;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Fails to start uninstall"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, v2, v0}, Lcom/android/packageinstaller/UninstallUninstalling;->onResult(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 165
    iget v0, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mUninstallId:I

    invoke-static {p0, v0}, Lcom/android/packageinstaller/UninstallEventReceiver;->removeObserver(Landroid/content/Context;I)V

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onResult(IILjava/lang/String;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mCallback:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 140
    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0, p2, p3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :cond_0
    iget-boolean p3, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mReturnResult:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 147
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    .line 149
    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 150
    :cond_1
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x7f0c0065

    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 156
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mLabel:Ljava/lang/String;

    aput-object v1, p2, p3

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 160
    :catch_0
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    iget p0, p0, Lcom/android/packageinstaller/UninstallUninstalling;->mUninstallId:I

    const-string v0, "com.android.packageinstaller.UNINSTALL_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
