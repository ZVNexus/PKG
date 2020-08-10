.class public Lcom/android/packageinstaller/InstallInstalling;
.super Lcom/android/internal/app/AlertActivity;
.source "InstallInstalling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;,
        Lcom/android/packageinstaller/InstallInstalling$InstallSessionCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InstallInstalling"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mInstallId:I

.field private mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

.field private mPackageURI:Landroid/net/Uri;

.field private mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

.field private mSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/packageinstaller/InstallInstalling;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/packageinstaller/InstallInstalling;)Landroid/net/Uri;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mPackageURI:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/packageinstaller/InstallInstalling;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/packageinstaller/InstallInstalling;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/packageinstaller/InstallInstalling;ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$Fm5TSD2hD23Z_s5R1z4FKuv9cT0(Lcom/android/packageinstaller/InstallInstalling;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/packageinstaller/InstallInstalling;->launchFinishBasedOnResult(IILjava/lang/String;)V

    return-void
.end method

.method private launchFailure(ILjava/lang/String;)V
    .locals 2

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 202
    const-class v1, Lcom/android/packageinstaller/InstallFailed;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.LEGACY_STATUS"

    .line 204
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 205
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method private launchFinishBasedOnResult(IILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallInstalling;->launchSuccess()V

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private launchSuccess()V
    .locals 2

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 187
    const-class v1, Lcom/android/packageinstaller/InstallSuccess;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x2000000

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$InstallInstalling(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 104
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 107
    :cond_0
    iget p1, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    const/4 p2, 0x0

    if-lez p1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    iget v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 109
    iput p2, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    .line 112
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, ". Try only apk size."

    const-string v1, "Cannot calculate installed size "

    .line 81
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.packageinstaller.applicationInfo"

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/InstallInstalling;->mPackageURI:Landroid/net/Uri;

    .line 87
    iget-object v3, p0, Lcom/android/packageinstaller/InstallInstalling;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, -0x6e

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->installExistingPackage(Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lcom/android/packageinstaller/InstallInstalling;->launchSuccess()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 92
    :catch_0
    invoke-direct {p0, v4, v5}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 95
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/packageinstaller/InstallInstalling;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {p0, v2, v3}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v6, v2, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v3, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v2, v2, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->setView(I)V

    .line 101
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const v3, 0x7f0c000a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/android/packageinstaller/-$$Lambda$InstallInstalling$znOyJ0CDR9gFSSyLvwV7HaV9tJY;

    invoke-direct {v6, p0}, Lcom/android/packageinstaller/-$$Lambda$InstallInstalling$znOyJ0CDR9gFSSyLvwV7HaV9tJY;-><init>(Lcom/android/packageinstaller/InstallInstalling;)V

    const/4 v7, -0x2

    invoke-virtual {v2, v7, v3, v6, v5}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    const v2, 0x7f08009e

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/internal/app/AlertActivity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_1

    const-string v0, "com.android.packageinstaller.SESSION_ID"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    const-string v0, "com.android.packageinstaller.INSTALL_ID"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I

    .line 125
    :try_start_1
    iget p1, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I

    new-instance v0, Lcom/android/packageinstaller/-$$Lambda$InstallInstalling$Fm5TSD2hD23Z_s5R1z4FKuv9cT0;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/-$$Lambda$InstallInstalling$Fm5TSD2hD23Z_s5R1z4FKuv9cT0;-><init>(Lcom/android/packageinstaller/InstallInstalling;)V

    invoke-static {p0, p1, v0}, Lcom/android/packageinstaller/InstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/android/packageinstaller/EventResultPersister$EventResultObserver;)I
    :try_end_1
    .catch Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_2

    .line 131
    :cond_1
    new-instance p1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 133
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "android.intent.extra.REFERRER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setReferrerUri(Landroid/net/Uri;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "android.intent.extra.ORIGINATING_URI"

    .line 136
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 135
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setOriginatingUri(Landroid/net/Uri;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v6, -0x1

    const-string v8, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setOriginatingUid(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 141
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 143
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/android/packageinstaller/InstallInstalling;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    :try_start_2
    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v6

    .line 146
    iget-object v8, v6, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 147
    iget v8, v6, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    .line 148
    iget-object v8, p1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 149
    invoke-static {v6, v3, v8}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J

    move-result-wide v8

    .line 148
    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 156
    :catch_1
    sget-object v3, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    goto :goto_0

    .line 151
    :catch_2
    sget-object v3, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot parse package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Assuming defaults."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-object v3, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    :goto_0
    const/high16 v0, -0x80000000

    .line 162
    :try_start_3
    new-instance v1, Lcom/android/packageinstaller/-$$Lambda$InstallInstalling$Fm5TSD2hD23Z_s5R1z4FKuv9cT0;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/-$$Lambda$InstallInstalling$Fm5TSD2hD23Z_s5R1z4FKuv9cT0;-><init>(Lcom/android/packageinstaller/InstallInstalling;)V

    .line 163
    invoke-static {p0, v0, v1}, Lcom/android/packageinstaller/InstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/android/packageinstaller/EventResultPersister$EventResultObserver;)I

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I
    :try_end_3
    .catch Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 166
    :catch_3
    invoke-direct {p0, v4, v5}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(ILjava/lang/String;)V

    .line 170
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result p1

    iput p1, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 172
    :catch_4
    invoke-direct {p0, v4, v5}, Lcom/android/packageinstaller/InstallInstalling;->launchFailure(ILjava/lang/String;)V

    .line 176
    :catch_5
    :goto_2
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p1, v7}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    .line 178
    new-instance p1, Lcom/android/packageinstaller/InstallInstalling$InstallSessionCallback;

    invoke-direct {p1, p0, v5}, Lcom/android/packageinstaller/InstallInstalling$InstallSessionCallback;-><init>(Lcom/android/packageinstaller/InstallInstalling;Lcom/android/packageinstaller/InstallInstalling$1;)V

    iput-object p1, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    :goto_3
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 263
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 264
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    monitor-enter v0

    .line 265
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    iget-boolean v1, v1, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->isDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 267
    :try_start_1
    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 269
    :try_start_2
    sget-object v2, Lcom/android/packageinstaller/InstallInstalling;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for installing task to cancel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 273
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 276
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I

    invoke-static {p0, v0}, Lcom/android/packageinstaller/InstallEventReceiver;->removeObserver(Landroid/content/Context;I)V

    .line 278
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 220
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 225
    iget v1, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;-><init>(Lcom/android/packageinstaller/InstallInstalling;Lcom/android/packageinstaller/InstallInstalling$1;)V

    iput-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    .line 229
    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallingTask:Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/internal/app/AlertActivity;->setFinishOnTouchOutside(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    iget v0, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionId:I

    const-string v1, "com.android.packageinstaller.SESSION_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    iget p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mInstallId:I

    const-string v0, "com.android.packageinstaller.INSTALL_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 255
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling;->mSessionCallback:Landroid/content/pm/PackageInstaller$SessionCallback;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    return-void
.end method
