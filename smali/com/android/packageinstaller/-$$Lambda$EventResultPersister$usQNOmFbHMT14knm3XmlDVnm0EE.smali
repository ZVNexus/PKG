.class public final synthetic Lcom/android/packageinstaller/-$$Lambda$EventResultPersister$usQNOmFbHMT14knm3XmlDVnm0EE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/packageinstaller/EventResultPersister;


# direct methods
.method public synthetic constructor <init>(Lcom/android/packageinstaller/EventResultPersister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/-$$Lambda$EventResultPersister$usQNOmFbHMT14knm3XmlDVnm0EE;->f$0:Lcom/android/packageinstaller/EventResultPersister;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/packageinstaller/-$$Lambda$EventResultPersister$usQNOmFbHMT14knm3XmlDVnm0EE;->f$0:Lcom/android/packageinstaller/EventResultPersister;

    invoke-virtual {p0}, Lcom/android/packageinstaller/EventResultPersister;->lambda$writeState$0$EventResultPersister()V

    return-void
.end method
