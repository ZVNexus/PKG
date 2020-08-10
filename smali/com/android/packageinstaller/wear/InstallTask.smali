.class public Lcom/android/packageinstaller/wear/InstallTask;
.super Ljava/lang/Object;
.source "InstallTask.java"


# instance fields
.field private mCallback:Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;

.field private mCommitCallback:Landroid/content/IntentSender;

.field private final mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mErrorDesc:Ljava/lang/String;

.field private mException:Ljava/lang/Exception;

.field private mPackageName:Ljava/lang/String;

.field private mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mSession:Landroid/content/pm/PackageInstaller$Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;Landroid/content/pm/PackageInstaller$Session;Landroid/content/IntentSender;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mException:Ljava/lang/Exception;

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    .line 50
    iput-object v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/packageinstaller/wear/InstallTask;->mPackageName:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/android/packageinstaller/wear/InstallTask;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 59
    iput-object p4, p0, Lcom/android/packageinstaller/wear/InstallTask;->mCallback:Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;

    .line 60
    iput-object p5, p0, Lcom/android/packageinstaller/wear/InstallTask;->mSession:Landroid/content/pm/PackageInstaller$Session;

    .line 61
    iput-object p6, p0, Lcom/android/packageinstaller/wear/InstallTask;->mCommitCallback:Landroid/content/IntentSender;

    return-void
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 167
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private writeToOutputStreamFromAsset(Ljava/io/OutputStream;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/16 p1, -0x267

    .line 125
    iput p1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    const-string p1, "Got a null OutputStream."

    .line 126
    iput-object p1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;

    return v0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x2000

    :try_start_0
    new-array v2, v2, [B

    .line 140
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v4, p0, Lcom/android/packageinstaller/wear/InstallTask;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v3, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-le v1, v4, :cond_3

    if-lez v1, :cond_2

    .line 144
    invoke-virtual {p1, v2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-static {v3}, Lcom/android/packageinstaller/wear/InstallTask;->safeClose(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    const/16 v2, -0x26b

    .line 150
    :try_start_2
    iput v2, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading from Asset FD or writing to temp file failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    invoke-static {v1}, Lcom/android/packageinstaller/wear/InstallTask;->safeClose(Ljava/io/Closeable;)V

    return v0

    :goto_2
    invoke-static {v1}, Lcom/android/packageinstaller/wear/InstallTask;->safeClose(Ljava/io/Closeable;)V

    throw p0

    :cond_4
    :goto_3
    const/16 p1, -0x25b

    .line 131
    iput p1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    const-string p1, "Could not get FD"

    .line 132
    iput-object p1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;

    return v0
.end method


# virtual methods
.method public execute()V
    .locals 9

    const-string v0, "Could not close session stream"

    .line 69
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x0

    const/16 v2, -0x26d

    .line 75
    :try_start_0
    iget-object v3, p0, Lcom/android/packageinstaller/wear/InstallTask;->mSession:Landroid/content/pm/PackageInstaller$Session;

    iget-object v4, p0, Lcom/android/packageinstaller/wear/InstallTask;->mPackageName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v1

    .line 79
    invoke-direct {p0, v1}, Lcom/android/packageinstaller/wear/InstallTask;->writeToOutputStreamFromAsset(Ljava/io/OutputStream;)Z

    .line 80
    iget-object v3, p0, Lcom/android/packageinstaller/wear/InstallTask;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 89
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 92
    iget-object v3, p0, Lcom/android/packageinstaller/wear/InstallTask;->mException:Ljava/lang/Exception;

    if-nez v3, :cond_0

    .line 93
    :goto_0
    iput-object v1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mException:Ljava/lang/Exception;

    .line 94
    iput v2, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    .line 95
    iput-object v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v3

    goto/16 :goto_3

    :catch_1
    move-exception v3

    .line 82
    :try_start_2
    iput-object v3, p0, Lcom/android/packageinstaller/wear/InstallTask;->mException:Ljava/lang/Exception;

    const/16 v3, -0x26c

    .line 83
    iput v3, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    const-string v3, "Could not write to stream"

    .line 84
    iput-object v3, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 89
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 92
    iget-object v3, p0, Lcom/android/packageinstaller/wear/InstallTask;->mException:Ljava/lang/Exception;

    if-nez v3, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while installing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallTask"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 106
    iget-object v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mCallback:Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;

    iget v1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/packageinstaller/wear/InstallTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;->installFailed(ILjava/lang/String;)V

    goto :goto_2

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mCallback:Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;

    invoke-interface {v0}, Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;->installBeginning()V

    .line 111
    iget-object v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mSession:Landroid/content/pm/PackageInstaller$Session;

    iget-object v1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mCommitCallback:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 112
    iget-object p0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_2

    .line 89
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 92
    iget-object v4, p0, Lcom/android/packageinstaller/wear/InstallTask;->mException:Ljava/lang/Exception;

    if-nez v4, :cond_2

    .line 93
    iput-object v1, p0, Lcom/android/packageinstaller/wear/InstallTask;->mException:Ljava/lang/Exception;

    .line 94
    iput v2, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    .line 95
    iput-object v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;

    .line 97
    :cond_2
    :goto_4
    throw v3

    .line 70
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method cannot be called from the UI thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isError()Z
    .locals 1

    .line 65
    iget v0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorCode:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/packageinstaller/wear/InstallTask;->mErrorDesc:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
