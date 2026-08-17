.class public Lcom/meishu/sdk/meishu_ad/nativ/d;
.super Lcom/meishu/sdk/core/ad/a;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/nativ/b;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Lcom/meishu/sdk/meishu_ad/n0;

.field public i:Lcom/meishu/sdk/meishu_ad/nativ/f;

.field public j:Landroid/content/Context;

.field public k:Z

.field public volatile l:Z


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/f;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "MS"

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lcom/meishu/sdk/core/ad/a;-><init>(Lcom/meishu/sdk/core/loader/d;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->l:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/nativ/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->g:Z

    return p1
.end method

.method public static synthetic b(Lcom/meishu/sdk/meishu_ad/nativ/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->k:Z

    return p1
.end method


# virtual methods
.method public a()Lcom/meishu/sdk/core/ad/AdSlot;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    return-object v0
.end method

.method public a()Lcom/meishu/sdk/meishu_ad/nativ/f;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/meishu/sdk/platform/ms/recycler/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/meishu/sdk/platform/ms/recycler/d;",
            ")V"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->j:Landroid/content/Context;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->j:Landroid/content/Context;

    :goto_0
    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 6
    new-instance v0, Lcom/meishu/sdk/meishu_ad/nativ/c;

    invoke-direct {v0, p0, p2, p4}, Lcom/meishu/sdk/meishu_ad/nativ/c;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/d;Landroid/view/ViewGroup;Lcom/meishu/sdk/platform/ms/recycler/d;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/meishu/sdk/meishu_ad/nativ/e;)V
    .locals 6

    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 10
    new-instance v1, Lcom/meishu/sdk/core/bquery/i;

    invoke-direct {v1, p1}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 11
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 12
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 13
    new-instance v3, Lcom/meishu/sdk/meishu_ad/nativ/d$a;

    invoke-direct {v3, p0, v0}, Lcom/meishu/sdk/meishu_ad/nativ/d$a;-><init>(Lcom/meishu/sdk/meishu_ad/nativ/d;Lcom/meishu/sdk/meishu_ad/n0;)V

    .line 14
    new-instance v4, Lcom/meishu/sdk/core/bquery/d;

    invoke-direct {v4, v1, v3}, Lcom/meishu/sdk/core/bquery/d;-><init>(Lcom/meishu/sdk/core/bquery/e;Lcom/meishu/sdk/core/bquery/j;)V

    const v3, 0x5265c00

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;IZLcom/meishu/sdk/core/bquery/h;)V

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {v0, p3}, Lcom/meishu/sdk/meishu_ad/n0;->setNativeAdMediaListener(Lcom/meishu/sdk/meishu_ad/nativ/e;)V

    .line 16
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_0

    .line 17
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 18
    iget-object p3, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 19
    invoke-interface {p3}, Lcom/meishu/sdk/meishu_ad/n0;->getVideoView()Landroid/view/View;

    move-result-object p3

    .line 20
    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 22
    invoke-interface {p2}, Lcom/meishu/sdk/meishu_ad/n0;->getVideoView()Landroid/view/View;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public b()Lcom/meishu/sdk/core/ad/AdType;
    .locals 1

    .line 2
    sget-object v0, Lcom/meishu/sdk/core/ad/AdType;->FEED:Lcom/meishu/sdk/core/ad/AdType;

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->getVideoView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->j:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/meishu/sdk/meishu_ad/n0;->getVideoView()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->d:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMediaView()Lcom/meishu/sdk/meishu_ad/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->h:Lcom/meishu/sdk/meishu_ad/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
