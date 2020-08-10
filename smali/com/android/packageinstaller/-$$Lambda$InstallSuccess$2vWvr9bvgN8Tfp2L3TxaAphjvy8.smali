.class public final synthetic Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$2vWvr9bvgN8Tfp2L3TxaAphjvy8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/packageinstaller/InstallSuccess;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/packageinstaller/InstallSuccess;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$2vWvr9bvgN8Tfp2L3TxaAphjvy8;->f$0:Lcom/android/packageinstaller/InstallSuccess;

    iput-object p2, p0, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$2vWvr9bvgN8Tfp2L3TxaAphjvy8;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$2vWvr9bvgN8Tfp2L3TxaAphjvy8;->f$0:Lcom/android/packageinstaller/InstallSuccess;

    iget-object p0, p0, Lcom/android/packageinstaller/-$$Lambda$InstallSuccess$2vWvr9bvgN8Tfp2L3TxaAphjvy8;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0, p1}, Lcom/android/packageinstaller/InstallSuccess;->lambda$onCreate$1$InstallSuccess(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
