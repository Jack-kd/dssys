.class final Lcom/kwad/framework/filedownloader/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/framework/filedownloader/j;->a(Lcom/kwad/framework/filedownloader/t;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic azQ:Lcom/kwad/framework/filedownloader/t;

.field final synthetic azR:Lcom/kwad/framework/filedownloader/j;


# direct methods
.method public constructor <init>(Lcom/kwad/framework/filedownloader/j;Lcom/kwad/framework/filedownloader/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/framework/filedownloader/j$1;->azR:Lcom/kwad/framework/filedownloader/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/framework/filedownloader/j$1;->azQ:Lcom/kwad/framework/filedownloader/t;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/framework/filedownloader/j$1;->azQ:Lcom/kwad/framework/filedownloader/t;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/kwad/framework/filedownloader/t;->Bt()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
