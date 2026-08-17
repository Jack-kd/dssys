.class final Lcom/kwad/components/core/page/widget/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/page/widget/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/page/widget/a/a;->va()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic agt:Lcom/kwad/components/core/page/widget/a/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/page/widget/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/a$3;->agt:Lcom/kwad/components/core/page/widget/a/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bA(I)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a$3;->agt:Lcom/kwad/components/core/page/widget/a/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a$3;->agt:Lcom/kwad/components/core/page/widget/a/a;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/kwad/components/core/page/widget/a/b;->agD:Landroid/app/Fragment;

    .line 12
    .line 13
    instance-of v1, v1, Lcom/kwad/components/core/page/widget/a/h;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/kwad/components/core/page/widget/a/a;->b(Lcom/kwad/components/core/page/widget/a/a;I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a$3;->agt:Lcom/kwad/components/core/page/widget/a/a;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/a;->b(Lcom/kwad/components/core/page/widget/a/a;)Lcom/kwad/components/core/page/widget/a/h;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x1

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    if-eq p1, v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a$3;->agt:Lcom/kwad/components/core/page/widget/a/a;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/a;->b(Lcom/kwad/components/core/page/widget/a/a;)Lcom/kwad/components/core/page/widget/a/h;

    .line 34
    .line 35
    .line 36
    :cond_2
    if-eq p1, v1, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a$3;->agt:Lcom/kwad/components/core/page/widget/a/a;

    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/kwad/components/core/page/widget/a/a;->c(Lcom/kwad/components/core/page/widget/a/a;I)I

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void
.end method

.method public final i(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a$3;->agt:Lcom/kwad/components/core/page/widget/a/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/a;->b(Lcom/kwad/components/core/page/widget/a/a;)Lcom/kwad/components/core/page/widget/a/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a$3;->agt:Lcom/kwad/components/core/page/widget/a/a;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/kwad/components/core/page/widget/a/a;->b(Lcom/kwad/components/core/page/widget/a/a;)Lcom/kwad/components/core/page/widget/a/h;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/a$3;->agt:Lcom/kwad/components/core/page/widget/a/a;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/kwad/components/core/page/widget/a/a;->a(Lcom/kwad/components/core/page/widget/a/a;F)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
