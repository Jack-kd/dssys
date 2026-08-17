.class final Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bhI:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$1;->bhI:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout$1;->bhI:Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/kwad/sdk/lib/ad/desigin/KSAppBarLayout;->onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
