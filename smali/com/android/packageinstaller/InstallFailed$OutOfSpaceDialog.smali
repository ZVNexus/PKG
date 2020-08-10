.class public Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;
.super Landroid/app/DialogFragment;
.source "InstallFailed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/InstallFailed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutOfSpaceDialog"
.end annotation


# instance fields
.field private mActivity:Lcom/android/packageinstaller/InstallFailed;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$InstallFailed$OutOfSpaceDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 153
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 155
    iget-object p0, p0, Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;->mActivity:Lcom/android/packageinstaller/InstallFailed;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$InstallFailed$OutOfSpaceDialog(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;->mActivity:Lcom/android/packageinstaller/InstallFailed;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 143
    check-cast p1, Lcom/android/packageinstaller/InstallFailed;

    iput-object p1, p0, Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;->mActivity:Lcom/android/packageinstaller/InstallFailed;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 165
    iget-object p0, p0, Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;->mActivity:Lcom/android/packageinstaller/InstallFailed;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 148
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;->mActivity:Lcom/android/packageinstaller/InstallFailed;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0056

    .line 149
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;->mActivity:Lcom/android/packageinstaller/InstallFailed;

    .line 150
    invoke-static {v1}, Lcom/android/packageinstaller/InstallFailed;->access$000(Lcom/android/packageinstaller/InstallFailed;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0c0055

    invoke-virtual {p0, v1, v0}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/-$$Lambda$InstallFailed$OutOfSpaceDialog$hsig_VFpVwRJT9IHP-ssU4vs4R0;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/-$$Lambda$InstallFailed$OutOfSpaceDialog$hsig_VFpVwRJT9IHP-ssU4vs4R0;-><init>(Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;)V

    const v1, 0x7f0c004a

    .line 151
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/packageinstaller/-$$Lambda$InstallFailed$OutOfSpaceDialog$lKM9kdrRWfY6VG1ieZS-pYyhkf0;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/-$$Lambda$InstallFailed$OutOfSpaceDialog$lKM9kdrRWfY6VG1ieZS-pYyhkf0;-><init>(Lcom/android/packageinstaller/InstallFailed$OutOfSpaceDialog;)V

    const p0, 0x7f0c000a

    .line 157
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
