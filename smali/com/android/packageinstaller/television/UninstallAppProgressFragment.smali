.class public Lcom/android/packageinstaller/television/UninstallAppProgressFragment;
.super Landroid/app/Fragment;
.source "UninstallAppProgressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/packageinstaller/television/UninstallAppProgress$ProgressFragment;


# instance fields
.field private mDeviceManagerButton:Landroid/widget/Button;

.field private mOkButton:Landroid/widget/Button;

.field private mUsersButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/television/UninstallAppProgress;

    .line 83
    iget-object p0, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mOkButton:Landroid/widget/Button;

    if-ne p1, p0, :cond_0

    if-eqz v0, :cond_0

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Finished uninstalling pkg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UninstallAppProgressF"

    .line 84
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->setResultAndFinish()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0a004f

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f080034

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 48
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 49
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/television/UninstallAppProgress;

    invoke-virtual {v0}, Lcom/android/packageinstaller/television/UninstallAppProgress;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 48
    invoke-static {p3, v0, p2}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;

    const p2, 0x7f080066

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    const p2, 0x7f080114

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    .line 52
    iget-object p2, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    iget-object p2, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    new-instance v0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment$1;

    invoke-direct {v0, p0}, Lcom/android/packageinstaller/television/UninstallAppProgressFragment$1;-><init>(Lcom/android/packageinstaller/television/UninstallAppProgressFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p2, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    iget-object p2, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    new-instance p3, Lcom/android/packageinstaller/television/UninstallAppProgressFragment$2;

    invoke-direct {p3, p0}, Lcom/android/packageinstaller/television/UninstallAppProgressFragment$2;-><init>(Lcom/android/packageinstaller/television/UninstallAppProgressFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0800de

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mOkButton:Landroid/widget/Button;

    .line 76
    iget-object p2, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDeviceManagerButtonVisible(Z)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setUsersButtonVisible(Z)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/packageinstaller/television/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public showCompletion(Ljava/lang/CharSequence;)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0800ed

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0800ff

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0800fe

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0800df

    .line 106
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
