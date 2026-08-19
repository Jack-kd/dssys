.class public Lcom/meishu/sdk/platform/ms/paster/d;
.super Lcom/meishu/sdk/platform/ms/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meishu/sdk/platform/ms/g<",
        "Lcom/meishu/sdk/meishu_ad/nativ/f;",
        "Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;",
        "Lcom/meishu/sdk/core/ad/paster/b;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/meishu/sdk/meishu_ad/v;

.field public c:Landroid/view/ViewGroup;

.field public d:Z

.field public e:Z

.field public f:Lcom/meishu/sdk/core/ad/paster/a;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Lcom/meishu/sdk/meishu_ad/nativ/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;Lcom/meishu/sdk/meishu_ad/nativ/f;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/meishu/sdk/platform/ms/g;-><init>(Lcom/meishu/sdk/core/loader/c;Lcom/meishu/sdk/core/ad/AdSlot;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/meishu/sdk/platform/ms/paster/d;->d:Z

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/meishu/sdk/platform/ms/paster/d;->e:Z

    .line 8
    .line 9
    new-instance p2, Lcom/meishu/sdk/platform/ms/paster/d$a;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/meishu/sdk/platform/ms/paster/d$a;-><init>(Lcom/meishu/sdk/platform/ms/paster/d;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/paster/d;->l:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 15
    .line 16
    new-instance p2, Lcom/meishu/sdk/meishu_ad/v;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/meishu/sdk/core/loader/c;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p2, p1}, Lcom/meishu/sdk/meishu_ad/v;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/paster/d;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/meishu/sdk/platform/ms/paster/d;->c:Landroid/view/ViewGroup;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/platform/ms/paster/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/paster/d;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic b(Lcom/meishu/sdk/platform/ms/paster/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/platform/ms/paster/d;->d:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    const-string v0, "MeishuPasterAdWrapper"

    .line 2
    .line 3
    const-string v1, "MeishuPasterAdWrapper.destroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d;->c:Landroid/view/ViewGroup;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d;->c:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/meishu/sdk/platform/ms/paster/d;->c:Landroid/view/ViewGroup;

    .line 20
    .line 21
    return-void
.end method

.method public loadAd()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/platform/ms/paster/d;->b:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/g;->a:Lcom/meishu/sdk/core/ad/AdSlot;

    .line 4
    .line 5
    check-cast v1, Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/meishu/sdk/platform/ms/paster/d;->l:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_width()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    int-to-float v4, v4

    .line 28
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p0}, Lcom/meishu/sdk/platform/BasePlatformLoader;->getAdLoader()Lcom/meishu/sdk/core/loader/c;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/meishu/sdk/core/ad/paster/PasterAdLoader;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/meishu/sdk/core/loader/c;->getAccept_ad_height()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    int-to-float v4, v4

    .line 51
    invoke-static {v3, v4}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual/range {v0 .. v7}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZZZFF)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
