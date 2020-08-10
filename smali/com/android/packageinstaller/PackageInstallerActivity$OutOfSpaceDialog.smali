.class public Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;
.super Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutOfSpaceDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 673
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;)Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;
    .locals 1

    .line 675
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;

    invoke-direct {v0}, Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;-><init>()V

    .line 676
    invoke-virtual {v0, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$AppErrorDialog;->setArgument(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method protected createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f0c0055

    .line 682
    invoke-virtual {p0, p1, v0}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 683
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 684
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$OutOfSpaceDialog$1uGsoLrZEkf3PtFRxGm1HRlY75M;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$OutOfSpaceDialog$1uGsoLrZEkf3PtFRxGm1HRlY75M;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;)V

    const v1, 0x7f0c004a

    .line 685
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$OutOfSpaceDialog$y1myQ4PNdkwtdc9tjmUKChqA78g;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$OutOfSpaceDialog$y1myQ4PNdkwtdc9tjmUKChqA78g;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$OutOfSpaceDialog;)V

    const p0, 0x7f0c000a

    .line 692
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 693
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$createDialog$0$PackageInstallerActivity$OutOfSpaceDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 687
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 688
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 690
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic lambda$createDialog$1$PackageInstallerActivity$OutOfSpaceDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 692
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
