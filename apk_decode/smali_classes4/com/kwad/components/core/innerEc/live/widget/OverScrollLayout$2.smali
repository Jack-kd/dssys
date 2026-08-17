.class final Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->z(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aaw:Landroid/view/View;

.field final synthetic aay:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$2;->aay:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$2;->aaw:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$2;->aay:Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout$2;->aaw:Landroid/view/View;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;->a(Lcom/kwad/components/core/innerEc/live/widget/OverScrollLayout;Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
