.class Lcom/android/packageinstaller/EventResultPersister$EventResult;
.super Ljava/lang/Object;
.source "EventResultPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/EventResultPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventResult"
.end annotation


# instance fields
.field public final legacyStatus:I

.field public final message:Ljava/lang/String;

.field public final status:I

.field final synthetic this$0:Lcom/android/packageinstaller/EventResultPersister;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/EventResultPersister;IILjava/lang/String;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/android/packageinstaller/EventResultPersister$EventResult;->this$0:Lcom/android/packageinstaller/EventResultPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput p2, p0, Lcom/android/packageinstaller/EventResultPersister$EventResult;->status:I

    .line 347
    iput p3, p0, Lcom/android/packageinstaller/EventResultPersister$EventResult;->legacyStatus:I

    .line 348
    iput-object p4, p0, Lcom/android/packageinstaller/EventResultPersister$EventResult;->message:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/EventResultPersister;IILjava/lang/String;Lcom/android/packageinstaller/EventResultPersister$1;)V
    .locals 0

    .line 340
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/packageinstaller/EventResultPersister$EventResult;-><init>(Lcom/android/packageinstaller/EventResultPersister;IILjava/lang/String;)V

    return-void
.end method
