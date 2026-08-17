.class final Lcom/kwad/components/core/page/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/page/b;->A(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic adj:Lcom/kwad/components/core/page/b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/page/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/b$1;->adj:Lcom/kwad/components/core/page/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kwad/components/core/page/b$1;->adj:Lcom/kwad/components/core/page/b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/kwad/components/core/page/b;->a(Lcom/kwad/components/core/page/b;)Landroid/widget/LinearLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
