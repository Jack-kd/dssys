.class public Lcom/meishu/sdk/meishu_ad/v$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;ZLandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$j;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/v$j;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/v$j;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/v$j;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/v$j;->d:Landroid/view/View;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Lcom/meishu/sdk/core/view/DownloadView;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/view/DownloadView;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$j;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v$j;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/meishu/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcom/meishu/sdk/core/ad/BaseAdSlot;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v$j;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$j;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 18
    .line 19
    iget-object v5, v4, Lcom/meishu/sdk/meishu_ad/splash/c;->e:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 20
    .line 21
    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/v$j;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 22
    .line 23
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/v$j;->d:Landroid/view/View;

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-virtual/range {v3 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;Lcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;Z)Lcom/meishu/sdk/meishu_ad/splash/SplashSkipView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$j;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x2

    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$j;->b:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 46
    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_1
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$j;->e:Lcom/meishu/sdk/meishu_ad/v;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$j;->a:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 60
    .line 61
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/v;->q:Lcom/meishu/sdk/meishu_ad/splash/MeishuSplashRootView;

    .line 62
    .line 63
    :try_start_2
    new-instance v3, Lcom/meishu/sdk/core/bquery/i;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Lcom/meishu/sdk/core/bquery/i;-><init>(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    sget v4, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_logo_ll:I

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    sget v5, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_logo:I

    .line 77
    .line 78
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Landroid/widget/ImageView;

    .line 83
    .line 84
    sget v6, Lcom/meishu/sdk/R$id;->ms_layout_native_splash_cid:I

    .line 85
    .line 86
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/widget/TextView;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v;->a:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sget v6, Lcom/meishu/sdk/R$drawable;->ms_black_oval_gray:I

    .line 99
    .line 100
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_2
    move-exception v0

    .line 126
    goto :goto_3

    .line 127
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_2

    .line 136
    .line 137
    iput-object v5, v3, Lcom/meishu/sdk/core/bquery/e;->d:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/4 v1, 0x0

    .line 144
    invoke-virtual {v3, v0, v1}, Lcom/meishu/sdk/core/bquery/e;->a(Ljava/lang/String;Z)Lcom/meishu/sdk/core/bquery/e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    .line 150
    .line 151
    :cond_2
    :goto_4
    return-void
.end method
