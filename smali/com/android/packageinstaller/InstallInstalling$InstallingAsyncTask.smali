.class final Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;
.super Landroid/os/AsyncTask;
.source "InstallInstalling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallInstalling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstallingAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/pm/PackageInstaller$Session;",
        ">;"
    }
.end annotation


# instance fields
.field volatile isDone:Z

.field final synthetic this$0:Lcom/android/packageinstaller/InstallInstalling;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 375
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>(Lcom/android/packageinstaller/InstallInstalling;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/InstallInstalling;Lcom/android/packageinstaller/InstallInstalling$1;)V
    .locals 0

    .line 332
    invoke-direct {p0, p1}, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;-><init>(Lcom/android/packageinstaller/InstallInstalling;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/pm/PackageInstaller$Session;
    .locals 11

    const/4 p1, 0x0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-static {v1}, Lcom/android/packageinstaller/InstallInstalling;->access$200(Lcom/android/packageinstaller/InstallInstalling;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$Session;->setStagingProgress(F)V

    const/4 v1, 0x1

    .line 348
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-static {v3}, Lcom/android/packageinstaller/InstallInstalling;->access$300(Lcom/android/packageinstaller/InstallInstalling;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 351
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-string v3, "PackageInstaller"

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-wide v6, v9

    .line 353
    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/high16 v3, 0x100000

    :try_start_3
    new-array v3, v3, [B

    .line 356
    :cond_0
    :goto_0
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 359
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v2, :cond_2

    .line 374
    :try_start_4
    invoke-static {p1, v2}, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 375
    :cond_2
    :try_start_5
    invoke-static {p1, v8}, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 385
    monitor-enter p0

    .line 386
    :try_start_6
    iput-boolean v1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->isDone:Z

    .line 387
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    :cond_3
    const/4 v5, 0x0

    .line 368
    :try_start_7
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    const-wide/16 v5, 0x0

    cmp-long v5, v9, v5

    if-lez v5, :cond_0

    int-to-float v4, v4

    long-to-float v5, v9

    div-float/2addr v4, v5

    .line 371
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller$Session;->addProgress(F)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    .line 352
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v4

    if-eqz v2, :cond_4

    .line 374
    :try_start_9
    invoke-static {v3, v2}, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v2

    .line 350
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v3

    .line 375
    :try_start_b
    invoke-static {v2, v8}, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 379
    :try_start_c
    invoke-static {}, Lcom/android/packageinstaller/InstallInstalling;->access$400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Could not write package"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 385
    monitor-enter p0

    .line 386
    :try_start_d
    iput-boolean v1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->isDone:Z

    .line 387
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p0

    return-object p1

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p1

    .line 385
    :goto_2
    monitor-enter p0

    .line 386
    :try_start_e
    iput-boolean v1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->isDone:Z

    .line 387
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw p1

    :catchall_7
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw p1

    :catch_1
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/content/pm/PackageInstaller$Session;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.packageinstaller.ACTION_INSTALL_COMMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 397
    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-virtual {v1}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-static {v1}, Lcom/android/packageinstaller/InstallInstalling;->access$500(Lcom/android/packageinstaller/InstallInstalling;)I

    move-result v1

    const-string v2, "EventResultPersister.EXTRA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    .line 402
    invoke-static {v1}, Lcom/android/packageinstaller/InstallInstalling;->access$500(Lcom/android/packageinstaller/InstallInstalling;)I

    move-result v2

    const/high16 v3, 0x8000000

    .line 400
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 407
    iget-object p1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-static {p1}, Lcom/android/packageinstaller/InstallInstalling;->access$600(Lcom/android/packageinstaller/InstallInstalling;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 408
    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->setFinishOnTouchOutside(Z)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-virtual {p1}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    iget-object v0, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    invoke-static {v0}, Lcom/android/packageinstaller/InstallInstalling;->access$200(Lcom/android/packageinstaller/InstallInstalling;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 412
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 413
    iget-object p0, p0, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->this$0:Lcom/android/packageinstaller/InstallInstalling;

    const/4 p1, -0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/packageinstaller/InstallInstalling;->access$700(Lcom/android/packageinstaller/InstallInstalling;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 332
    check-cast p1, Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/InstallInstalling$InstallingAsyncTask;->onPostExecute(Landroid/content/pm/PackageInstaller$Session;)V

    return-void
.end method
