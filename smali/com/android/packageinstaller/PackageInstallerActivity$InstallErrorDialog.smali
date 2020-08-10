.class public Lcom/android/packageinstaller/PackageInstallerActivity$InstallErrorDialog;
.super Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 687
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;
    .locals 1

    .line 689
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$InstallErrorDialog;

    invoke-direct {v0}, Lcom/android/packageinstaller/PackageInstallerActivity$InstallErrorDialog;-><init>()V

    .line 690
    invoke-virtual {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;->setArgument(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method protected createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 3

    .line 696
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$InstallErrorDialog$o_75ob8nQvqldslkDnXYGzX9T6E;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$InstallErrorDialog$o_75ob8nQvqldslkDnXYGzX9T6E;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$InstallErrorDialog;)V

    const v2, 0x7f0c0051

    .line 697
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f0c0020

    .line 698
    invoke-virtual {p0, p1, v1}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 699
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$createDialog$0$PackageInstallerActivity$InstallErrorDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 697
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
