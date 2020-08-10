.class public Lcom/android/packageinstaller/television/UninstallAppProgress;
.super Landroid/app/Activity;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;,
        Lcom/android/packageinstaller/television/UninstallAppProgress$PackageDeleteObserver;,
        Lcom/android/packageinstaller/television/UninstallAppProgress$MessageHandler;
    }
.end annotation


# instance fields
.field private mAllUsers:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCallback:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewInitialized:Z

.field private volatile mResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    .line 81
    new-instance v0, Lcom/android/packageinstaller/television/UninstallAppProgress$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/television/UninstallAppProgress$MessageHandler;-><init>(Lcom/android/packageinstaller/television/UninstallAppProgress;)V

    iput-object v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/television/UninstallAppProgress;Landroid/os/Message;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/television/UninstallAppProgress;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/packageinstaller/television/UninstallAppProgress;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getProgressFragment()Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;
    .locals 1

    .line 369
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "progress_fragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;

    return-object p0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 104
    :cond_0
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto/16 :goto_6

    .line 106
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->initView()V

    goto/16 :goto_6

    .line 109
    :cond_2
    iget-object v0, v1, Lcom/android/packageinstaller/television/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eq v0, v4, :cond_3

    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->initView()V

    .line 115
    :cond_3
    iget v0, v2, Landroid/os/Message;->arg1:I

    iput v0, v1, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    .line 116
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 118
    iget-object v0, v1, Lcom/android/packageinstaller/television/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    .line 120
    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v0

    .line 122
    :try_start_0
    iget-object v2, v1, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    invoke-interface {v0, v2, v4, v3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 130
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v5, 0x0

    const-string v6, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    iget v2, v1, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    const-string v3, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    iget v2, v1, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    if-ne v2, v4, :cond_5

    const/4 v4, -0x1

    :cond_5
    invoke-virtual {v1, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 142
    :cond_6
    iget v0, v2, Landroid/os/Message;->arg1:I

    const/4 v6, -0x4

    const-string v7, "Failed to talk to package manager"

    const-string v8, "user"

    const v9, 0x7f0c0064

    const-string v10, " with code "

    const-string v11, "Uninstall failed for "

    const-string v12, "UninstallAppProgress"

    if-eq v0, v6, :cond_d

    const/4 v6, -0x2

    if-eq v0, v6, :cond_8

    if-eq v0, v4, :cond_7

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_7
    const v0, 0x7f0c0062

    .line 144
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 147
    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->setResultAndFinish()V

    return-void

    .line 152
    :cond_8
    invoke-virtual {v1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/UserManager;

    const-string v0, "device_policy"

    .line 154
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v6

    .line 156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/4 v9, 0x0

    .line 158
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 161
    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v2, v8, v11}, Lcom/android/packageinstaller/television/UninstallAppProgress;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_0

    .line 164
    :cond_a
    :try_start_1
    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v6, v3, v11}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v11, :cond_9

    goto :goto_1

    :catch_1
    move-exception v0

    .line 169
    invoke-static {v12, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_b
    move-object v0, v9

    :goto_1
    const-string v2, "Uninstall failed because "

    if-nez v0, :cond_c

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a device admin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->getProgressFragment()Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    const v0, 0x7f0c0066

    .line 176
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 179
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a device admin of user "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->getProgressFragment()Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    const v2, 0x7f0c0067

    .line 183
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v0, v3, v5

    .line 182
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 190
    :cond_d
    invoke-virtual {v1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/UserManager;

    const-string v0, "package"

    .line 192
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 191
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 193
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    move v14, v5

    .line 195
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/16 v15, -0x2710

    if-ge v14, v0, :cond_f

    .line 196
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 198
    :try_start_2
    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v8, v3, v9}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 200
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 205
    invoke-static {v12, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const v9, 0x7f0c0064

    goto :goto_2

    :cond_f
    move v0, v15

    .line 208
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 209
    invoke-direct {v1, v6, v7, v0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->getProgressFragment()Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    goto :goto_4

    .line 212
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->getProgressFragment()Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;->setDeviceManagerButtonVisible(Z)V

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->getProgressFragment()Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;->setUsersButtonVisible(Z)V

    :goto_4
    if-nez v0, :cond_11

    const v0, 0x7f0c0060

    .line 217
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_11
    if-ne v0, v15, :cond_12

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " no blocking user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0c0064

    .line 221
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 223
    :cond_12
    iget-boolean v0, v1, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAllUsers:Z

    if-eqz v0, :cond_13

    const v0, 0x7f0c005b

    .line 224
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_13
    const v0, 0x7f0c0061

    .line 225
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->getProgressFragment()Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;->showCompletion(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_6
    return-void
.end method

.method private initView()V
    .locals 6

    .line 324
    iget-boolean v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mIsViewInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 327
    iput-boolean v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mIsViewInitialized:Z

    .line 330
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 331
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010054

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 332
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget v4, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    .line 337
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 336
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010452

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 341
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010451

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 344
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 346
    iget-object v1, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const v0, 0x7f0c006d

    goto :goto_2

    :cond_3
    const v0, 0x7f0c005f

    .line 347
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x1020002

    new-instance v1, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;

    invoke-direct {v1}, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;-><init>()V

    const-string v2, "progress_fragment"

    .line 350
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 351
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method private isProfileOfOrSame(Landroid/os/UserManager;II)Z
    .locals 0

    const/4 p0, 0x1

    if-ne p2, p3, :cond_0

    return p0

    .line 246
    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 247
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 356
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 357
    iget v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 362
    :cond_0
    iget v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 365
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.packageinstaller.applicationInfo"

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const-string v1, "android.content.pm.extra.CALLBACK"

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 261
    iput p1, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    .line 263
    iget-object p1, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mCallback:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 265
    invoke-static {p1}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    invoke-interface {p1, v0, v2, v1}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->setResultAndFinish()V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    .line 278
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAllUsers:Z

    const-string v2, "android.intent.extra.USER"

    .line 279
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    if-nez v0, :cond_2

    .line 281
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 284
    :cond_2
    new-instance v2, Lcom/android/packageinstaller/television/UninstallAppProgress$PackageDeleteObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/packageinstaller/television/UninstallAppProgress$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/television/UninstallAppProgress;Lcom/android/packageinstaller/television/UninstallAppProgress$1;)V

    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/4 v1, 0x2

    .line 294
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 295
    iget-boolean v5, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAllUsers:Z

    if-eqz v5, :cond_3

    move p1, v1

    :cond_3
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 294
    invoke-virtual {v3, v4, v2, p1, v0}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package, not deleting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UninstallAppProgress"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :goto_1
    iget-object p0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setResultAndFinish()V
    .locals 1

    .line 319
    iget v0, p0, Lcom/android/packageinstaller/television/UninstallAppProgress;->mResultCode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 320
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
