.class public Lcom/android/packageinstaller/PackageInstallerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$InstallErrorDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$NotSupportedOnWearDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;,
        Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;
    }
.end annotation


# static fields
.field private static final ALLOW_UNKNOWN_SOURCES_KEY:Ljava/lang/String;


# instance fields
.field private localLOGV:Z

.field private mAllowUnknownSources:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

.field mCallingPackage:Ljava/lang/String;

.field private mEnableOk:Z

.field mInstaller:Landroid/content/pm/PackageInstaller;

.field mIpm:Landroid/content/pm/IPackageManager;

.field private mOk:Landroid/widget/Button;

.field private mOriginatingPackage:Ljava/lang/String;

.field private mOriginatingURI:Landroid/net/Uri;

.field private mOriginatingUid:I

.field private mPackageURI:Landroid/net/Uri;

.field mPkgInfo:Landroid/content/pm/PackageInfo;

.field mPm:Landroid/content/pm/PackageManager;

.field private mReferrerURI:Landroid/net/Uri;

.field private mSessionId:I

.field mSourceInfo:Landroid/content/pm/ApplicationInfo;

.field mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/packageinstaller/PackageInstallerActivity;

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ALLOW_UNKNOWN_SOURCES_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/PackageInstallerActivity;->ALLOW_UNKNOWN_SOURCES_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    .line 82
    iput v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 120
    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mEnableOk:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    return-void
.end method

.method private bindUi()V
    .locals 6

    .line 381
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v1, v1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setView(I)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0c0015

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$Vln2nluA_QJFjJV_na_l6jbopHM;

    invoke-direct {v2, p0}, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$Vln2nluA_QJFjJV_na_l6jbopHM;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 395
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$5ZUeBcoeWNB5sojcJYIj3vi7S2w;

    invoke-direct {v2, p0}, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$5ZUeBcoeWNB5sojcJYIj3vi7S2w;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    const/4 v5, -0x2

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 406
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    .line 407
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private checkIfAllowedAndInitiateInstall()V
    .locals 5

    .line 416
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    .line 417
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_install_apps"

    .line 416
    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    .line 419
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SHOW_ADMIN_SUPPORT_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 427
    :cond_1
    iget-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallRequestFromUnknownSource(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    .line 432
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "no_install_unknown_sources"

    .line 431
    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    .line 433
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    .line 434
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const-string v4, "no_install_unknown_sources_globally"

    .line 433
    invoke-virtual {v1, v4, v3}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    or-int v3, v0, v1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const/4 v0, 0x5

    .line 438
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 440
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->startAdminSupportDetailsActivity(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 442
    invoke-direct {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->startAdminSupportDetailsActivity(Ljava/lang/String;)V

    goto :goto_1

    .line 445
    :cond_5
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->handleUnknownSources()V

    goto :goto_1

    .line 428
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    :goto_1
    return-void
.end method

.method private createDialog(I)Landroid/app/DialogFragment;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const p0, 0x7f0c0016

    .line 178
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;->newInstance(I)Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;

    move-result-object p0

    return-object p0

    .line 184
    :pswitch_1
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$ExternalSourcesBlockedDialog;->newInstance(Ljava/lang/String;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;

    move-result-object p0

    return-object p0

    .line 176
    :pswitch_2
    invoke-static {}, Lcom/android/packageinstaller/PackageInstallerActivity$NotSupportedOnWearDialog;->newInstance()Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;

    move-result-object p0

    return-object p0

    .line 186
    :pswitch_3
    invoke-static {}, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;->newInstance()Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p0, 0x7f0c0072

    .line 181
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;->newInstance(I)Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;

    move-result-object p0

    return-object p0

    .line 173
    :pswitch_5
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 174
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 173
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$InstallErrorDialog;->newInstance(Ljava/lang/CharSequence;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;

    move-result-object p0

    return-object p0

    .line 170
    :pswitch_6
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 171
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 170
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;->newInstance(Ljava/lang/CharSequence;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/high16 p0, 0x7f0c0000

    .line 168
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;->newInstance(I)Lcom/android/packageinstaller/PackageInstallerActivity$SimpleErrorDialog;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 222
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 223
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 224
    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple packages found for source uid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstaller"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_3
    aget-object p0, v0, v2

    return-object p0
.end method

.method private handleUnknownSources()V
    .locals 5

    .line 462
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    const-string v1, "PackageInstaller"

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No source found for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 464
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void

    :cond_0
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 469
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 470
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid app op mode "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for OP_REQUEST_INSTALL_PACKAGES found for uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_2
    const/16 v0, 0x8

    .line 478
    invoke-direct {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_0

    .line 481
    :cond_3
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    :goto_0
    return-void
.end method

.method private initiateInstall()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    .line 254
    aget-object v0, v1, v3

    .line 255
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 256
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    .line 263
    :try_start_0
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 265
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 266
    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 272
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    return-void
.end method

.method private isInstallRequestFromUnknownSource(Landroid/content/Intent;)Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    .line 238
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private processPackageUri(Landroid/net/Uri;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 499
    iput-object v1, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    .line 501
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x301acbba

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x2ff57c

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_1

    :cond_1
    const-string v3, "package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const/4 v3, -0x2

    const/4 v4, 0x2

    const-string v7, "PackageInstaller"

    if-eqz v2, :cond_5

    if-ne v2, v6, :cond_4

    .line 523
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-static {v0, v2}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Landroid/content/Context;Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v1, "Parse error when parsing manifest. Discontinuing installation"

    .line 528
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 530
    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    return v5

    :cond_3
    const/4 v9, 0x0

    const/16 v10, 0x1000

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    .line 533
    new-instance v16, Landroid/content/pm/PackageUserState;

    invoke-direct/range {v16 .. v16}, Landroid/content/pm/PackageUserState;-><init>()V

    invoke-static/range {v8 .. v16}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 536
    iget-object v1, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1, v2}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    goto :goto_2

    .line 540
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected URI scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_5
    :try_start_0
    iget-object v2, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3000

    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :catch_0
    iget-object v2, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_6

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not available. Discontinuing installation"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-direct {v0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 515
    invoke-virtual {v0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    return v5

    .line 518
    :cond_6
    new-instance v1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 519
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppSnippet:Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    :goto_2
    return v6
.end method

.method private showDialogInner(I)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->createDialog(I)Landroid/app/DialogFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/app/DialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private startAdminSupportDetailsActivity(Ljava/lang/String;)V
    .locals 1

    .line 453
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 454
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method private startInstall()V
    .locals 5

    .line 557
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 558
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v2, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 561
    const-class v1, Lcom/android/packageinstaller/InstallInstalling;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    if-eqz v3, :cond_0

    const-string v4, "android.intent.extra.ORIGINATING_URI"

    .line 565
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 567
    :cond_0
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    if-eqz v3, :cond_1

    const-string v4, "android.intent.extra.REFERRER"

    .line 568
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 570
    :cond_1
    iget v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v4, "android.intent.extra.ORIGINATING_UID"

    .line 571
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    if-eqz v1, :cond_3

    .line 574
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 578
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const/high16 v1, 0x2000000

    .line 580
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 581
    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloaded app uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInstaller"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method private startInstallConfirm()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 126
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const v0, 0x7f080097

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f080096

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f080095

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iput-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mEnableOk:Z

    .line 137
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$bindUi$0$PackageInstallerActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 386
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 387
    iget p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 388
    iget-object p2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_0

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstall()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$bindUi$1$PackageInstallerActivity(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 399
    iget p2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 195
    iput-boolean p3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    const-string p1, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 201
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    .line 202
    iget-object p2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget p3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v0}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "dialog"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroid/app/DialogFragment;

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 549
    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageInstaller;->setPermissionsResult(IZ)V

    .line 552
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/4 v0, 0x0

    .line 286
    invoke-super {p0, v0}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 289
    sget-object v1, Lcom/android/packageinstaller/PackageInstallerActivity;->ALLOW_UNKNOWN_SOURCES_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 293
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mIpm:Landroid/content/pm/IPackageManager;

    const-string p1, "appops"

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 295
    iget-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    const-string p1, "user"

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mUserManager:Landroid/os/UserManager;

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_CALLING_PACKAGE"

    .line 300
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCallingPackage:Ljava/lang/String;

    const-string v1, "EXTRA_ORIGINAL_SOURCE_INFO"

    .line 301
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, -0x1

    const-string v2, "android.intent.extra.ORIGINATING_UID"

    .line 302
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    .line 304
    iget v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingUid:I

    if-eq v2, v1, :cond_1

    .line 305
    invoke-direct {p0, v2}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingPackage:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "PackageInstaller"

    if-eqz v2, :cond_4

    const-string v2, "android.content.pm.extra.SESSION_ID"

    .line 311
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 312
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 313
    iget-boolean v2, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    if-eqz v2, :cond_3

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    .line 319
    :cond_2
    iput p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    .line 320
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 321
    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    .line 322
    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    goto :goto_2

    .line 314
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in funky state; ignoring"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 324
    :cond_4
    iput v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSessionId:I

    .line 325
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    .line 326
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOriginatingURI:Landroid/net/Uri;

    const-string v1, "android.intent.extra.REFERRER"

    .line 327
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mReferrerURI:Landroid/net/Uri;

    move-object p1, v0

    :goto_2
    if-nez p1, :cond_5

    const-string p1, "Unspecified source"

    .line 332
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 338
    :cond_5
    invoke-static {p0}, Lcom/android/packageinstaller/DeviceUtils;->isWear(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    .line 339
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void

    .line 343
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->processPackageUri(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 350
    :cond_7
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->bindUi()V

    .line 351
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->checkIfAllowedAndInitiateInstall()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 365
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 367
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 356
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 358
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 359
    iget-boolean p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mEnableOk:Z

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 375
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 377
    sget-object v0, Lcom/android/packageinstaller/PackageInstallerActivity;->ALLOW_UNKNOWN_SOURCES_KEY:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAllowUnknownSources:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method setPmResult(I)V
    .locals 2

    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.INSTALL_RESULT"

    .line 277
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    .line 278
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/AlertActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
