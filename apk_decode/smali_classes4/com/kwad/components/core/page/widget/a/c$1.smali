.class final Lcom/kwad/components/core/page/widget/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/page/widget/a/c;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ahp:Landroid/view/View;

.field final synthetic ahq:I

.field final synthetic ahr:Lcom/kwad/components/core/page/widget/a/c;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/page/widget/a/c;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/a/c$1;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/page/widget/a/c$1;->ahp:Landroid/view/View;

    .line 4
    .line 5
    iput p3, p0, Lcom/kwad/components/core/page/widget/a/c$1;->ahq:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/a/c$1;->ahr:Lcom/kwad/components/core/page/widget/a/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/a/c$1;->ahp:Landroid/view/View;

    .line 4
    .line 5
    iget v2, p0, Lcom/kwad/components/core/page/widget/a/c$1;->ahq:I

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/kwad/components/core/page/widget/a/c;->l(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
