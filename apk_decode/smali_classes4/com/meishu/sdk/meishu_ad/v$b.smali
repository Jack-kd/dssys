.class public Lcom/meishu/sdk/meishu_ad/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/meishu_ad/splash/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic d:Lcom/meishu/sdk/platform/ms/splash/a;

.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$b;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/v$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/v$b;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/v$b;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/v$b;->d:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/meishu/sdk/meishu_ad/v$b;->e:Landroid/view/View;

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/meishu/sdk/meishu_ad/v$b;->f:Z

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$b;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$b;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v$b;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$b;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 14
    .line 15
    invoke-static {v0, v2, v3, v4}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$b;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v$b;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$b;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v5, 0x2

    .line 36
    if-eq v2, v5, :cond_0

    .line 37
    .line 38
    new-instance v2, Ljava/util/Timer;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v6, Lcom/meishu/sdk/meishu_ad/h0;

    .line 44
    .line 45
    invoke-direct {v6, v0, v3, v4}, Lcom/meishu/sdk/meishu_ad/h0;-><init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/meishu_ad/splash/d;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v3, 0x1388

    .line 49
    .line 50
    invoke-virtual {v2, v6, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object p1, v0

    .line 56
    goto :goto_3

    .line 57
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v$b;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 58
    .line 59
    iget v0, v2, Lcom/meishu/sdk/meishu_ad/v;->f:I

    .line 60
    .line 61
    if-eq v0, v1, :cond_1

    .line 62
    .line 63
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$b;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/meishu/sdk/meishu_ad/v$b;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 68
    .line 69
    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/v$b;->d:Lcom/meishu/sdk/platform/ms/splash/a;

    .line 70
    .line 71
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/v$b;->e:Landroid/view/View;

    .line 72
    .line 73
    iget-boolean v8, p0, Lcom/meishu/sdk/meishu_ad/v$b;->f:Z

    .line 74
    .line 75
    move-object v9, p1

    .line 76
    invoke-virtual/range {v2 .. v9}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;Lcom/meishu/sdk/platform/ms/splash/a;Landroid/view/View;ZLandroid/view/ViewGroup;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-static {v2, v1}, Lcom/meishu/sdk/meishu_ad/v;->c(Lcom/meishu/sdk/meishu_ad/v;Z)Z

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$b;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 84
    .line 85
    iget-boolean v0, p1, Lcom/meishu/sdk/meishu_ad/v;->h:Z

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v$b;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 92
    .line 93
    invoke-virtual {p1, v0, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$b;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-ne p1, v5, :cond_2

    .line 103
    .line 104
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->d:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 107
    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_2
    :goto_1
    :try_start_1
    sget-object p1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 114
    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    sget-object p1, Lcom/meishu/sdk/core/utils/r0;->m:Lcom/meishu/sdk/core/utils/PackageBean$AdBean;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$AdBean;->getSplash()Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/meishu/sdk/core/utils/PackageBean$SplashConfigBean;->getIc()I

    .line 130
    .line 131
    .line 132
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    goto :goto_2

    .line 134
    :catch_0
    :cond_3
    const/4 p1, 0x0

    .line 135
    :goto_2
    if-ne p1, v1, :cond_4

    .line 136
    .line 137
    :try_start_2
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$b;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 138
    .line 139
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$b;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$b;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$b;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 151
    .line 152
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$b;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 153
    .line 154
    const v1, 0x895441

    .line 155
    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const-string v2, "show\u6e32\u67d3\u9519\u8bef"

    .line 162
    .line 163
    invoke-virtual {p1, v0, v2, v1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    :goto_4
    return-void
.end method
