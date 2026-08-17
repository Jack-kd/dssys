.class final Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic eN:Landroid/animation/Animator;

.field final synthetic eO:Landroid/animation/Animator;

.field final synthetic eP:Landroid/animation/Animator;

.field final synthetic eT:Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;->eT:Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;->eN:Landroid/animation/Animator;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;->eO:Landroid/animation/Animator;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;->eP:Landroid/animation/Animator;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;->eN:Landroid/animation/Animator;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;->eO:Landroid/animation/Animator;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/kwad/components/ad/draw/presenter/livecard/KsLiveEndAuthorView$1;->eP:Landroid/animation/Animator;

    .line 14
    .line 15
    filled-new-array {v0, v1, v2}, [Landroid/animation/Animator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
