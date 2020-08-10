.class Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException;
.super Ljava/lang/Exception;
.source "EventResultPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/EventResultPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutOfIdsException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/EventResultPersister;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/EventResultPersister;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/packageinstaller/EventResultPersister$OutOfIdsException;->this$0:Lcom/android/packageinstaller/EventResultPersister;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
