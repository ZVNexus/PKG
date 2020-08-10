.class Lcom/android/packageinstaller/PackageInstalledNotificationUtils;
.super Ljava/lang/Object;
.source "PackageInstalledNotificationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageInstalledNotificationUtils"


# instance fields
.field private final mChannelId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mInstalledAppLabel:Ljava/lang/String;

.field private final mInstalledAppLargeIcon:Landroid/graphics/drawable/Icon;

.field private final mInstalledPackage:Ljava/lang/String;

.field private final mInstallerAppColor:Ljava/lang/Integer;

.field private final mInstallerAppLabel:Ljava/lang/String;

.field private final mInstallerAppSmallIcon:Landroid/graphics/drawable/Icon;

.field private final mInstallerPackage:Ljava/lang/String;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Unable to get application info: "

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    .line 68
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    .line 73
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    iput-object p2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerPackage:Ljava/lang/String;

    .line 87
    invoke-static {p1, v1, p2}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getAppLabel(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppLabel:Ljava/lang/String;

    .line 88
    invoke-static {p1, v1}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getAppNotificationIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppSmallIcon:Landroid/graphics/drawable/Icon;

    .line 89
    invoke-static {p1, v1}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getAppNotificationColor(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppColor:Ljava/lang/Integer;

    .line 91
    iput-object p3, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledPackage:Ljava/lang/String;

    .line 92
    invoke-static {p1, v0, p2}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getAppLabel(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledAppLabel:Ljava/lang/String;

    .line 93
    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getAppLargeIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledAppLargeIcon:Landroid/graphics/drawable/Icon;

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "INSTALLER:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mChannelId:Ljava/lang/String;

    return-void

    .line 84
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :catch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createChannel()V
    .locals 4

    .line 215
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mChannelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppLabel:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 217
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0004

    .line 218
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v0, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const/4 v1, 0x1

    .line 222
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 224
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private static getAppDetailIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    const/4 v2, 0x0

    .line 185
    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private getAppInstalledNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 7

    .line 296
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getInstalledAppLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 298
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 299
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppLabel:Ljava/lang/String;

    const-string v3, "android.substName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0050

    .line 302
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledAppLabel:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 301
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 305
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mChannelId:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppSmallIcon:Landroid/graphics/drawable/Icon;

    .line 308
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledAppLabel:Ljava/lang/String;

    .line 309
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    const v6, 0x7f0c004f

    .line 310
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 312
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "status"

    .line 314
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mChannelId:Ljava/lang/String;

    .line 318
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 320
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledAppLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 325
    :cond_0
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppColor:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 326
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_1
    return-object v0
.end method

.method private static getAppLabel(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x43fa0000    # 500.0f

    const/4 v1, 0x5

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p0

    .line 111
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 113
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private static getAppLargeIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Icon;
    .locals 1

    .line 125
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v0, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x1080093

    const-string v0, "android"

    .line 128
    invoke-static {v0, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method private static getAppNotificationColor(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/Integer;
    .locals 4

    .line 164
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 168
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, 0x0

    const-string v3, "com.android.packageinstaller.notification.color"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 173
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 176
    :catch_0
    sget-object p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while loading notification color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method private static getAppNotificationIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Icon;
    .locals 4

    .line 142
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const v1, 0x7f060005

    if-nez v0, :cond_0

    .line 143
    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v2, 0x0

    const-string v3, "com.android.packageinstaller.notification.smallIcon"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1
    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method private static getAppStoreLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_APP_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 203
    invoke-static {p0, p1}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 205
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getGroupNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 5

    .line 271
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getInstallerEntranceIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 273
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 274
    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppLabel:Ljava/lang/String;

    const-string v3, "android.substName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mChannelId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppSmallIcon:Landroid/graphics/drawable/Icon;

    .line 278
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mChannelId:Ljava/lang/String;

    .line 279
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 280
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 281
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v3, "status"

    .line 282
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 286
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerAppColor:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 287
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_0
    return-object v0
.end method

.method private getInstalledAppLaunchIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledPackage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getAppDetailIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    const/high16 v1, 0x10000000

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getInstallerEntranceIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerPackage:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getAppDetailIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    const/high16 v1, 0x10000000

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 194
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method postAppInstalledNotification()V
    .locals 4

    .line 335
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->createChannel()V

    .line 338
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getAppInstalledNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstalledPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 340
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 339
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 343
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->getGroupNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/packageinstaller/PackageInstalledNotificationUtils;->mInstallerPackage:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 345
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 344
    invoke-virtual {v1, p0, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
