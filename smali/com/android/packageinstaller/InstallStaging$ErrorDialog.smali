.class public Lcom/android/packageinstaller/InstallStaging$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "InstallStaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallStaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$InstallStaging$ErrorDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/packageinstaller/InstallStaging$ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 144
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/packageinstaller/InstallStaging$ErrorDialog;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 163
    iget-object p0, p0, Lcom/android/packageinstaller/InstallStaging$ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 149
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/packageinstaller/InstallStaging$ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x7f0c0000

    .line 150
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/-$$Lambda$InstallStaging$ErrorDialog$z6Uttpne_gXZCqllYbnRjQ_S0Kk;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/-$$Lambda$InstallStaging$ErrorDialog$z6Uttpne_gXZCqllYbnRjQ_S0Kk;-><init>(Lcom/android/packageinstaller/InstallStaging$ErrorDialog;)V

    const p0, 0x7f0c0051

    .line 151
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 154
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method
