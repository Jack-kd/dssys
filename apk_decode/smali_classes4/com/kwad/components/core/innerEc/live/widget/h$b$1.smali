.class final Lcom/kwad/components/core/innerEc/live/widget/h$b$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/core/innerEc/live/widget/h$b;->c(Lcom/kwad/components/core/innerEc/live/widget/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic Zg:Landroid/view/ViewGroup;

.field final synthetic Zh:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic Zi:Lcom/kwad/components/core/innerEc/live/widget/h$b;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/innerEc/live/widget/h$b;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zi:Lcom/kwad/components/core/innerEc/live/widget/h$b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zg:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zh:Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zi:Lcom/kwad/components/core/innerEc/live/widget/h$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/core/innerEc/live/widget/h$b;->a(Lcom/kwad/components/core/innerEc/live/widget/h$b;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zg:Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zi:Lcom/kwad/components/core/innerEc/live/widget/h$b;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget v2, Lcom/kwad/sdk/R$drawable;->ksad_live_comment_single_line_bg:I

    .line 25
    .line 26
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zg:Landroid/view/ViewGroup;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zi:Lcom/kwad/components/core/innerEc/live/widget/h$b;

    .line 37
    .line 38
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget v2, Lcom/kwad/sdk/R$drawable;->ksad_live_comment_double_line_bg:I

    .line 45
    .line 46
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zg:Landroid/view/ViewGroup;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/h$b$1;->Zh:Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
