.class final Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->animateReboundRecover(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bhF:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

.field final synthetic bhG:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

.field final synthetic bhH:Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$1;->bhH:Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$1;->bhF:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$1;->bhG:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$1;->bhH:Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$1;->bhF:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior$1;->bhG:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v3, 0x2

    .line 18
    invoke-static {v0, v1, v2, p1, v3}, Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;->access$000(Lcom/kwad/sdk/lib/ad/desigin/CustomReboundBehavior;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
