.class public abstract Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;
.super Landroid/app/DialogFragment;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppErrorDialog"
.end annotation


# static fields
.field private static final ARGUMENT_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ARGUMENT_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;->ARGUMENT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 753
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 771
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 766
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;->ARGUMENT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;->createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method protected setArgument(Ljava/lang/CharSequence;)V
    .locals 2

    .line 757
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 758
    sget-object v1, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;->ARGUMENT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 759
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
