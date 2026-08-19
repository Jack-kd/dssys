.class final Lcom/kwad/components/ad/nativead/c/a$1;
.super Lcom/kwad/sdk/core/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/c/a;->B(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic gd:Ljava/lang/ref/WeakReference;

.field final synthetic qM:Lcom/kwad/components/ad/nativead/c/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/nativead/c/a;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a$1;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/nativead/c/a$1;->gd:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/kwad/sdk/core/c/d;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/kwad/components/ad/nativead/c/a$1;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a$1;->gd:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/kwad/sdk/core/c/b;->b(Lcom/kwad/sdk/core/c/c;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/c/a$1;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/kwad/components/ad/nativead/c/a;->a(Lcom/kwad/components/ad/nativead/c/a;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
