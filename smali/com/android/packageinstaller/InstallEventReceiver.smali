.class public Lcom/android/packageinstaller/InstallEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallEventReceiver.java"


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static sReceiver:Lcom/android/packageinstaller/EventResultPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/packageinstaller/InstallEventReceiver;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static addObserver(Landroid/content/Context;ILcom/android/packageinstaller/EventResultPersister$EventResultObserver;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException;
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/android/packageinstaller/InstallEventReceiver;->getReceiver(Landroid/content/Context;)Lcom/android/packageinstaller/EventResultPersister;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/packageinstaller/EventResultPersister;->addObserver(ILcom/android/packageinstaller/EventResultPersister$EventResultObserver;)I

    move-result p0

    return p0
.end method

.method private static getReceiver(Landroid/content/Context;)Lcom/android/packageinstaller/EventResultPersister;
    .locals 2

    .line 37
    sget-object v0, Lcom/android/packageinstaller/InstallEventReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/android/packageinstaller/InstallEventReceiver;->sReceiver:Lcom/android/packageinstaller/EventResultPersister;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/android/packageinstaller/EventResultPersister;

    .line 40
    invoke-static {p0}, Lcom/android/packageinstaller/TemporaryFileManager;->getInstallStateFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/EventResultPersister;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/android/packageinstaller/InstallEventReceiver;->sReceiver:Lcom/android/packageinstaller/EventResultPersister;

    .line 42
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    sget-object p0, Lcom/android/packageinstaller/InstallEventReceiver;->sReceiver:Lcom/android/packageinstaller/EventResultPersister;

    return-object p0

    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static removeObserver(Landroid/content/Context;I)V
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/android/packageinstaller/InstallEventReceiver;->getReceiver(Landroid/content/Context;)Lcom/android/packageinstaller/EventResultPersister;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/EventResultPersister;->removeObserver(I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/android/packageinstaller/InstallEventReceiver;->getReceiver(Landroid/content/Context;)Lcom/android/packageinstaller/EventResultPersister;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/packageinstaller/EventResultPersister;->onEventReceived(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
