.class public Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;
.super Landroid/app/DialogFragment;
.source "PackageInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnonymousSourceDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 615
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;
    .locals 1

    .line 617
    new-instance v0, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;

    invoke-direct {v0}, Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$PackageInstallerActivity$AnonymousSourceDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 627
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 p1, 0x1

    .line 629
    invoke-static {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$002(Lcom/android/packageinstaller/PackageInstallerActivity;Z)Z

    .line 630
    invoke-static {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->access$100(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$PackageInstallerActivity$AnonymousSourceDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 632
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 638
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 622
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0003

    .line 623
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$AnonymousSourceDialog$j7ZkjYfuLCxI-yvPw_BH4gKwnyQ;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$AnonymousSourceDialog$j7ZkjYfuLCxI-yvPw_BH4gKwnyQ;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;)V

    const v1, 0x7f0c0002

    .line 624
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$AnonymousSourceDialog$8kZWiPYiC_m6DQoz2Y8AkkrIOm0;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/-$$Lambda$PackageInstallerActivity$AnonymousSourceDialog$8kZWiPYiC_m6DQoz2Y8AkkrIOm0;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity$AnonymousSourceDialog;)V

    const p0, 0x7f0c000a

    .line 632
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 633
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
