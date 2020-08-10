.class public Lcom/android/packageinstaller/UninstallerActivity;
.super Landroid/app/Activity;
.source "UninstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;
    }
.end annotation


# instance fields
.field private mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 0

    .line 392
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 396
    aget-object p0, p0, p1

    return-object p0
.end method

.method private isTv()Z
    .locals 1

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showAppNotFound()V
    .locals 3

    .line 226
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->isTv()Z

    move-result v0

    const v1, 0x7f0c0007

    const v2, 0x7f0c0008

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/android/packageinstaller/television/ErrorFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/television/ErrorFragment;-><init>()V

    invoke-direct {p0, v0, v2, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showContentFragment(Landroid/app/Fragment;II)V

    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;-><init>()V

    invoke-direct {p0, v0, v2, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;II)V

    :goto_0
    return-void
.end method

.method private showConfirmationDialog()V
    .locals 2

    .line 218
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->isTv()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/packageinstaller/television/UninstallAlertFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/television/UninstallAlertFragment;-><init>()V

    invoke-direct {p0, v0, v1, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showContentFragment(Landroid/app/Fragment;II)V

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Lcom/android/packageinstaller/handheld/UninstallAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/handheld/UninstallAlertDialogFragment;-><init>()V

    invoke-direct {p0, v0, v1, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;II)V

    :goto_0
    return-void
.end method

.method private showContentFragment(Landroid/app/Fragment;II)V
    .locals 2

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.android.packageinstaller.arg.title"

    .line 261
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "com.android.packageinstaller.arg.text"

    .line 262
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const p2, 0x1020002

    .line 266
    invoke-virtual {p0, p2, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private showDialogFragment(Landroid/app/DialogFragment;II)V
    .locals 3

    .line 272
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 275
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 278
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    const-string v2, "com.android.packageinstaller.arg.title"

    .line 280
    invoke-virtual {p0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string p2, "com.android.packageinstaller.arg.text"

    .line 282
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    invoke-virtual {p1, p0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 285
    invoke-virtual {p1, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method private showGenericError()V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->isTv()Z

    move-result v0

    const v1, 0x7f0c000f

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lcom/android/packageinstaller/television/ErrorFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/television/ErrorFragment;-><init>()V

    const v2, 0x7f0c0010

    invoke-direct {p0, v0, v2, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showContentFragment(Landroid/app/Fragment;II)V

    goto :goto_0

    .line 249
    :cond_0
    new-instance v0, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;II)V

    :goto_0
    return-void
.end method

.method private showUserIsNotAllowed()V
    .locals 3

    .line 236
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->isTv()Z

    move-result v0

    const v1, 0x7f0c0074

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/android/packageinstaller/television/ErrorFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/television/ErrorFragment;-><init>()V

    const v2, 0x7f0c0075

    invoke-direct {p0, v0, v2, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showContentFragment(Landroid/app/Fragment;II)V

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/packageinstaller/handheld/ErrorDialogFragment;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/packageinstaller/UninstallerActivity;->showDialogFragment(Landroid/app/DialogFragment;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchAborted()V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 381
    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v0

    .line 384
    :try_start_0
    iget-object p0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    const/4 v1, -0x5

    const-string v2, "Cancelled by user"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getDialogInfo()Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string p1, "android.permission.DELETE_PACKAGES"

    const-string v0, "android.permission.REQUEST_DELETE_PACKAGES"

    const-string v1, "UninstallerActivity"

    const/4 v2, 0x0

    .line 92
    invoke-super {p0, v2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    .line 95
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v3

    .line 97
    invoke-direct {p0, v3}, Lcom/android/packageinstaller/UninstallerActivity;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package not found for originating uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v5, "appops"

    .line 104
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    const-string v6, "android:request_delete_packages"

    .line 106
    invoke-virtual {v5, v6, v3, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Install from uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " disallowed by AppOps"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 116
    :cond_1
    invoke-static {p0, v3}, Lcom/android/packageinstaller/PackageUtil;->getMaxTargetSdkVersionForUid(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_2

    .line 117
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    .line 143
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "No package URI in intent"

    .line 146
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    .line 150
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name in URI: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    :cond_4
    const-string v2, "package"

    .line 158
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 157
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 160
    new-instance v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    invoke-direct {v3}, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;-><init>()V

    iput-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    .line 162
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    const/4 v4, 0x0

    const-string v5, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    .line 163
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v3, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz v3, :cond_5

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-nez v3, :cond_5

    const-string p1, "Only admin user can request uninstall for all users"

    .line 164
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showUserIsNotAllowed()V

    return-void

    .line 168
    :cond_5
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    const-string v5, "android.intent.extra.USER"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    iput-object v5, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 169
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v5, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    if-nez v5, :cond_6

    .line 170
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iput-object v5, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_6
    const-string v3, "user"

    .line 172
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 173
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    .line 174
    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v5, v5, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " can\'t request uninstall for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showUserIsNotAllowed()V

    return-void

    .line 182
    :cond_7
    :goto_0
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    const-string v5, "android.content.pm.extra.CALLBACK"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    .line 185
    :try_start_1
    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    const/high16 v5, 0x400000

    iget-object v6, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v6, v6, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 186
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 185
    invoke-interface {v2, v3, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Unable to get packageName. Package manager is dead?"

    .line 188
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_1
    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_8

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid packageName: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showAppNotFound()V

    return-void

    .line 198
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 201
    :try_start_2
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/packageinstaller/UninstallerActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v3, v5, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 203
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 201
    invoke-interface {v2, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, "Unable to get className. Package manager is dead?"

    .line 205
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showConfirmationDialog()V

    return-void

    :catch_2
    const-string p1, "Could not determine the launching uid."

    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public startUninstallProgress(Z)V
    .locals 13

    const-string v0, "UninstallerActivity"

    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 290
    iget-object v4, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v4, v4, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 292
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->isTv()Z

    move-result v5

    const/high16 v6, 0x2000000

    const-string v7, "android.content.pm.extra.CALLBACK"

    const-string v8, "android.intent.extra.USER"

    const-string v9, "com.android.packageinstaller.applicationInfo"

    const-string v10, "android.intent.extra.UNINSTALL_ALL_USERS"

    const/4 v11, 0x1

    if-eqz v5, :cond_1

    .line 293
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v0, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    invoke-virtual {p1, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 297
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v0, v0, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    :cond_0
    const-class v0, Lcom/android/packageinstaller/television/UninstallAppProgress;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_1
    const-string v5, "com.android.packageinstaller.extra.APP_LABEL"

    if-nez v1, :cond_5

    .line 306
    iget-object v12, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v12, v12, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    if-nez v12, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_2

    goto/16 :goto_1

    .line 328
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/android/packageinstaller/UninstallEventReceiver;->getNewId(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/android/packageinstaller/UninstallFinish;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000000

    .line 336
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 337
    iget-object v6, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v6, v6, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    invoke-virtual {v2, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    iget-object v6, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v6, v6, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 339
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v5, "com.android.packageinstaller.extra.UNINSTALL_ID"

    .line 340
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0x8000000

    .line 342
    invoke-static {p0, v1, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 345
    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 346
    new-instance v7, Landroid/app/NotificationChannel;

    const v8, 0x7f0c0070

    .line 347
    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "uninstalling"

    invoke-direct {v7, v9, v8, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 349
    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 351
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v8, 0x7f060007

    .line 353
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v3, v11, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f0c006f

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v3

    .line 354
    invoke-virtual {p0, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 355
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 357
    invoke-virtual {v6, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 360
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninstalling extras="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v2, v2, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz p1, :cond_4

    move v3, v11

    :cond_4
    or-int v10, v2, v3

    .line 365
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v7

    new-instance v8, Landroid/content/pm/VersionedPackage;

    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {v8, p1, v2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 368
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v11

    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    .line 369
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 365
    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {v6, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v1, "Cannot start uninstall"

    .line 373
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showGenericError()V

    goto :goto_2

    .line 330
    :catch_1
    invoke-direct {p0}, Lcom/android/packageinstaller/UninstallerActivity;->showGenericError()V

    return-void

    .line 307
    :cond_5
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/packageinstaller/UninstallUninstalling;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v3, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-boolean v3, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    invoke-virtual {v0, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    iget-object v3, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object v3, v3, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v3, "com.android.packageinstaller.extra.KEEP_DATA"

    .line 313
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    iget-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity;->mDialogInfo:Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;

    iget-object p1, p1, Lcom/android/packageinstaller/UninstallerActivity$DialogInfo;->callback:Landroid/os/IBinder;

    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    if-eqz v1, :cond_6

    .line 317
    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    if-nez v1, :cond_7

    .line 320
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 321
    :cond_7
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    :cond_8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
