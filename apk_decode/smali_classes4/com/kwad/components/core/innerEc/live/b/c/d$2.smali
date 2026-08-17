.class final Lcom/kwad/components/core/innerEc/live/b/c/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/innerEc/live/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/b/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic VF:Lcom/kwad/components/core/innerEc/live/b/c/d;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/b/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/b/c/d$2;->VF:Lcom/kwad/components/core/innerEc/live/b/c/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final aE()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/d$2;->VF:Lcom/kwad/components/core/innerEc/live/b/c/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/kwad/components/core/innerEc/live/b/c/d;->b(Lcom/kwad/components/core/innerEc/live/b/c/d;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final sd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/d$2;->VF:Lcom/kwad/components/core/innerEc/live/b/c/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/b/c/d;->a(Lcom/kwad/components/core/innerEc/live/b/c/d;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\u76f4\u64ad\u95f4\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ae;->W(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/b/c/d$2;->VF:Lcom/kwad/components/core/innerEc/live/b/c/d;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
