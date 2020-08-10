.class Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "PackageInstallerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/wear/PackageInstallerImpl;->getCommitCallback(Ljava/lang/String;ILcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;)Landroid/content/IntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/wear/PackageInstallerImpl;

.field final synthetic val$callback:Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/wear/PackageInstallerImpl;Ljava/lang/String;ILcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;->this$0:Lcom/android/packageinstaller/wear/PackageInstallerImpl;

    iput-object p2, p0, Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;->val$sessionId:I

    iput-object p4, p0, Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;->val$callback:Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 259
    iget-object p1, p0, Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;->this$0:Lcom/android/packageinstaller/wear/PackageInstallerImpl;

    invoke-static {p1}, Lcom/android/packageinstaller/wear/PackageInstallerImpl;->access$000(Lcom/android/packageinstaller/wear/PackageInstallerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 260
    iget-object p1, p0, Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;->this$0:Lcom/android/packageinstaller/wear/PackageInstallerImpl;

    iget-object v0, p0, Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;->val$packageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;->val$sessionId:I

    iget-object p0, p0, Lcom/android/packageinstaller/wear/PackageInstallerImpl$1;->val$callback:Lcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;

    invoke-static {p1, p2, v0, v1, p0}, Lcom/android/packageinstaller/wear/PackageInstallerImpl;->access$100(Lcom/android/packageinstaller/wear/PackageInstallerImpl;Landroid/content/Intent;Ljava/lang/String;ILcom/android/packageinstaller/wear/PackageInstallerImpl$InstallListener;)V

    return-void
.end method
