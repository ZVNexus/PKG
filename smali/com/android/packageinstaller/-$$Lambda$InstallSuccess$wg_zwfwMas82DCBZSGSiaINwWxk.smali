.class public final synthetic Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$wg_zwfwMas82DCBZSGSiaINwWxk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/packageinstaller/InstallSuccess;

.field private final synthetic f$1:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/packageinstaller/InstallSuccess;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$wg_zwfwMas82DCBZSGSiaINwWxk;->f$0:Lcom/android/packageinstaller/InstallSuccess;

    iput-object p2, p0, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$wg_zwfwMas82DCBZSGSiaINwWxk;->f$1:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$wg_zwfwMas82DCBZSGSiaINwWxk;->f$0:Lcom/android/packageinstaller/InstallSuccess;

    iget-object p0, p0, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$wg_zwfwMas82DCBZSGSiaINwWxk;->f$1:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/packageinstaller/InstallSuccess;->lambda$onCreate$0$InstallSuccess(Landroid/content/pm/ApplicationInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
