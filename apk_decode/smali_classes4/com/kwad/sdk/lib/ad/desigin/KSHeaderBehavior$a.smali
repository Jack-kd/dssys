.class final Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final bhB:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

.field private final bhS:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic bhT:Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhT:Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhB:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhS:Landroid/view/View;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhS:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhT:Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhT:Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhB:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhS:Landroid/view/View;

    .line 22
    .line 23
    iget-object v3, v0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->setHeaderTopBottomOffset(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;I)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhS:Landroid/view/View;

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhT:Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhB:Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior$a;->bhS:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/lib/ad/desigin/KSHeaderBehavior;->onFlingFinished(Lcom/kwad/sdk/lib/ad/desigin/KSCoordinatorLayout;Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
