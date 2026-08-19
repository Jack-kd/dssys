.class public Lcom/meishu/sdk/meishu_ad/p;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Landroid/widget/RelativeLayout;

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/p;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/p;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/p;->b:Landroid/widget/ImageView;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/p;->c:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/p;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iget v1, v0, Lcom/meishu/sdk/meishu_ad/v;->c:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    iput v1, v0, Lcom/meishu/sdk/meishu_ad/v;->c:I

    .line 8
    .line 9
    rem-int/lit8 v1, v1, 0x2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/p;->a:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/p;->b:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/p;->c:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/p;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/p;->b:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    new-instance v3, Lcom/meishu/sdk/meishu_ad/r;

    .line 41
    .line 42
    invoke-direct {v3, v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/r;-><init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/ImageView;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/p;->b:Landroid/widget/ImageView;

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/p;->c:Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/p;->a:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/p;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/p;->a:Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance v3, Lcom/meishu/sdk/meishu_ad/s;

    .line 75
    .line 76
    invoke-direct {v3, v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/s;-><init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/ImageView;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    sget-object v0, Lcom/meishu/sdk/meishu_ad/v;->C:Landroid/os/Handler;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/p;->d:Lcom/meishu/sdk/meishu_ad/v;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    const-wide/16 v1, 0x320

    .line 90
    .line 91
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method
