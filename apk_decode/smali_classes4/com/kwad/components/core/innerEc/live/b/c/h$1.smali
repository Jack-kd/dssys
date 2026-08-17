.class final Lcom/kwad/components/core/innerEc/live/b/c/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic WV:Lcom/kwad/components/core/innerEc/live/b/c/h;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$1;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/h$1;->WV:Lcom/kwad/components/core/innerEc/live/b/c/h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/h;->a(Lcom/kwad/components/core/innerEc/live/b/c/h;)Lcom/kwad/components/core/innerEc/live/widget/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/kwad/components/core/innerEc/live/widget/d;->Yo:I

    .line 8
    .line 9
    int-to-long v1, v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/kwad/components/core/innerEc/live/widget/d;->J(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
