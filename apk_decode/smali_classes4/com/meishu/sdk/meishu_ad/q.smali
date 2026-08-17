.class public Lcom/meishu/sdk/meishu_ad/q;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/widget/RelativeLayout;

.field public final synthetic c:Landroid/widget/RelativeLayout;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/q;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/q;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/q;->b:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/q;->c:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/q;->d:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/q;->e:Lcom/meishu/sdk/meishu_ad/v;

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
    const/16 v0, 0x8

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/q;->a:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/q;->b:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/q;->c:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/q;->d:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/q;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/q;->d:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    new-instance v3, Lcom/meishu/sdk/meishu_ad/r;

    .line 46
    .line 47
    invoke-direct {v3, v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/r;-><init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/ImageView;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/q;->c:Landroid/widget/RelativeLayout;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/q;->d:Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/q;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/q;->b:Landroid/widget/RelativeLayout;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/q;->a:Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    if-nez v3, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance v4, Lcom/meishu/sdk/meishu_ad/t;

    .line 77
    .line 78
    invoke-direct {v4, v0, v1, v3, v2}, Lcom/meishu/sdk/meishu_ad/t;-><init>(Lcom/meishu/sdk/meishu_ad/v;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    sget-object v0, Lcom/meishu/sdk/meishu_ad/v;->C:Landroid/os/Handler;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/q;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const-wide/16 v1, 0x320

    .line 92
    .line 93
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method
